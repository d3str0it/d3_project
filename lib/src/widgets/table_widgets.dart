import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Импорт для форматирования

class FilterTableWidget extends StatefulWidget {
  const FilterTableWidget({super.key});

  @override
  _FilterTableWidgetState createState() => _FilterTableWidgetState();
}

class _FilterTableWidgetState extends State<FilterTableWidget> {
  DateTime? startDate;
  DateTime? endDate;
  bool deformationLevel = false;
  bool maxMinValues = false;
  String sortingOption = 'Время';

  final List<String> sortingOptions = [
    'Время',
    'Дата',
    'По увеличению',
    'По уменьшению'
  ];

  final List<String> columnNames = [
    'Time', 'T_1', 'T1_K_1', 'T1_K_2', 'T1_K_3', 'T1_R_1', 'T1_R_2', 'T1_R_3',
    'T1_L_1', 'T1_L_2', 'T1_L_3', 'T1_Up_1', 'T1_Up_2', 'T1_Up_3'
  ];

  DateTime _randomDate() {
    final random = Random();
    final daysAgo = random.nextInt(30); 
    final randomHour = random.nextInt(24); 
    final randomMinute = random.nextInt(60); 
    return DateTime.now().subtract(Duration(days: daysAgo))
        .add(Duration(hours: randomHour, minutes: randomMinute)); 
  }

  List<Map<String, dynamic>> _generateRandomData() {
    final random = Random();
    return List.generate(
      20,
      (index) => {
        'date': _randomDate(),
        'data': List.generate(13, (i) => random.nextInt(100) + (i + 1) * 10),
      },
    );
  }

  late List<Map<String, dynamic>> tableData;

  @override
  void initState() {
    super.initState();
    tableData = _generateRandomData(); 
  }

  void _sortTableData() {
    switch (sortingOption) {
      case 'Время':
        tableData.sort((a, b) => a['date'].compareTo(b['date']));
        break;
      case 'Дата':
        tableData.sort((a, b) => a['date'].compareTo(b['date']));
        break;
      case 'По увеличению':
        tableData.sort((a, b) {
          final minA = a['data'].reduce((value, element) => value < element ? value : element);
          final minB = b['data'].reduce((value, element) => value < element ? value : element);
          return minA.compareTo(minB); 
        });
        break;
      case 'По уменьшению':
        tableData.sort((a, b) {
          final maxA = a['data'].reduce((value, element) => value > element ? value : element);
          final maxB = b['data'].reduce((value, element) => value > element ? value : element);
          return maxB.compareTo(maxA);
        });
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 650,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(48, 0, 0, 0),
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const Text(
                  'Все данные',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 20),
                
                ElevatedButton(
                  onPressed: () async {
                    DateTime? pickedStart = await showDatePicker(
                      context: context,
                      initialDate: startDate ?? DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    DateTime? pickedEnd = await showDatePicker(
                      context: context,
                      initialDate: endDate ?? DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    if (pickedStart != null && pickedEnd != null) {
                      setState(() {
                        startDate = pickedStart;
                        endDate = pickedEnd;
                      });
                    }
                  },
                  child: Text(startDate != null && endDate != null
                      ? '${startDate!.day}.${startDate!.month}.${startDate!.year} - ${endDate!.day}.${endDate!.month}.${endDate!.year}'
                      : 'Выберите период'),
                ),
                const SizedBox(width: 20),
                
                Column(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: deformationLevel,
                          onChanged: (value) {
                            setState(() {
                              deformationLevel = value!;
                            });
                          },
                        ),
                        const Text('Уровни деформации'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: maxMinValues,
                          onChanged: (value) {
                            setState(() {
                              maxMinValues = value!;
                            });
                          },
                        ),
                        const Text('Макс/Мин значения'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                
                Row(
                  children: [
                    const Text('Сортировка по:'),
                    const SizedBox(width: 10),
                    DropdownButton<String>(
                      value: sortingOption,
                      onChanged: (String? newValue) {
                        setState(() {
                          sortingOption = newValue!;
                          _sortTableData(); 
                        });
                      },
                      items: sortingOptions.map((String option) {
                        return DropdownMenuItem<String>(
                          value: option,
                          child: Text(option),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                // Кнопка экспорт
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Icon(Icons.file_download),
                      SizedBox(width: 5),
                      Text('Export'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                child: DataTable(
                  dividerThickness: 1,
                  columns: List.generate(
                    14,
                    (index) => DataColumn(label: Text(columnNames[index])),
                  ),
                  rows: List.generate(
                    tableData.length,
                    (rowIndex) {
                      final row = tableData[rowIndex];

                      List<DataCell> cells = List.generate(
                        14,
                        (colIndex) {
                          var cellValue = colIndex == 0
                              ? DateFormat('yyyy-MM-dd HH:mm').format(row['date']) 
                              : row['data'][colIndex - 1]; 

                          Border? border;

                          if (maxMinValues && colIndex > 0) {
                            
                            var columnValues = List<int>.generate(
                                tableData.length,
                                (i) => tableData[i]['data'][colIndex - 1]); 

                            var maxValue = columnValues.reduce((a, b) => a > b ? a : b); 
                            var minValue = columnValues.reduce((a, b) => a < b ? a : b); 

                            if (row['data'][colIndex - 1] == maxValue) {
                              border = Border.all(
                                  color: Colors.orangeAccent, width: 2); 
                            } else if (row['data'][colIndex - 1] == minValue) {
                              border = Border.all(
                                  color: Colors.greenAccent, width: 2); 
                            }
                          }

                          return DataCell(
                            Container(
                              decoration: BoxDecoration(
                                border: border ?? Border.all(color: Colors.transparent), 
                                borderRadius: BorderRadius.circular(8), 
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('$cellValue'),
                              ),
                            ),
                            showEditIcon: false,
                            placeholder: false,
                            onTap: () {},
                          );
                        },
                      );

                      return DataRow(cells: cells);
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
