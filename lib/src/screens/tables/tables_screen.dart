import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:it4gaz/src/widgets/level_deformation_widget.dart';
import 'package:it4gaz/src/widgets/table_widgets.dart';

class TablesScreen extends StatefulWidget {
  const TablesScreen({super.key});

  @override
  _TablesScreenState createState() => _TablesScreenState();
}

class _TablesScreenState extends State<TablesScreen> {
  String? selectedPeriod = 'T_1'; 
  DateTime? startDate; 
  DateTime? endDate; 
  double greenGraphValue = 0; 
  double redGraphValue = 0; 

  
  final List<String> periods = [
    'T_1',
    'T1_K_1',
    'T1_K_2',
    'T1_K_3',
    'T1_R_1',
    'T1_R_2',
    'T1_R_3',
    'T1_L_1',
    'T1_L_2',
    'T1_L_3',
    'T1_Up_1',
    'T1_Up_2',
    'T1_Up_3',
  ];

  
  List<FlSpot> greenSpots = [];
 
  List<FlSpot> redSpots = [];

  @override
  void initState() {
    super.initState();
    _updateData(); 
  }

  
  void _updateData() {
    setState(() {
      
      if (selectedPeriod == 'T_1') {
        greenGraphValue = 10.0;
        redGraphValue = 5.0;
        greenSpots = [
          FlSpot(0, 10),
          FlSpot(1, 20),
          FlSpot(2, 15),
          FlSpot(3, 25),
          FlSpot(4, 30),
          FlSpot(5, 35),
        ];
        redSpots = [
          FlSpot(0, 5),
          FlSpot(1, 10),
          FlSpot(2, 8),
          FlSpot(3, 12),
          FlSpot(4, 15),
          FlSpot(5, 35),
        ];
      } else if (selectedPeriod == 'T1_K_1') {
        greenGraphValue = 50.0;
        redGraphValue = 30.0;
        greenSpots = [
          FlSpot(0, 40),
          FlSpot(1, 43),
          FlSpot(2, 46),
          FlSpot(3, 41),
          FlSpot(4, 35),
          FlSpot(5, 38),
        ];
        redSpots = [
          FlSpot(0, 30),
          FlSpot(1, 35),
          FlSpot(2, 32),
          FlSpot(3, 40),
          FlSpot(4, 45),
          FlSpot(5, 35),
        ];
      } else if (selectedPeriod == 'T1_K_2') {
        greenGraphValue = 75.0;
        redGraphValue = 40.0;
        greenSpots = [
          FlSpot(0, 35),
          FlSpot(1, 40),
          FlSpot(2, 58),
          FlSpot(3, 55),
          FlSpot(4, 40),
          FlSpot(5, 35),
        ];
        redSpots = [
          FlSpot(0, 40),
          FlSpot(1, 45),
          FlSpot(2, 42),
          FlSpot(3, 30),
          FlSpot(4, 45),
          FlSpot(5, 35),
        ];
      } else if (selectedPeriod == 'T1_K_3') {
        greenGraphValue = 90.0;
        redGraphValue = 60.0;
        greenSpots = [
          FlSpot(0, 30),
          FlSpot(1, 45),
          FlSpot(2, 32),
          FlSpot(3, 50),
          FlSpot(4, 25),
          FlSpot(5, 35),
        ];
        redSpots = [
          FlSpot(0, 40),
          FlSpot(1, 35),
          FlSpot(2, 23),
          FlSpot(3, 40),
          FlSpot(4, 45),
          FlSpot(5, 35),
        ];
      } else if (selectedPeriod == 'T1_R_1') {
        greenGraphValue = 100.0;
        redGraphValue = 80.0;
        greenSpots = [
          FlSpot(0, 50),
          FlSpot(1, 40),
          FlSpot(2, 45),
          FlSpot(3, 25),
          FlSpot(4, 55),
          FlSpot(5, 45),
        ];
        redSpots = [
          FlSpot(0, 50),
          FlSpot(1, 40),
          FlSpot(2, 45),
          FlSpot(3, 25),
          FlSpot(4, 55),
          FlSpot(5, 45),
        ];
      } else if (selectedPeriod == 'T1_R_2') {
        greenGraphValue = 120.0;
        redGraphValue = 100.0;
        greenSpots = [
          FlSpot(0, 20),
          FlSpot(1, 30),
          FlSpot(2, 25),
          FlSpot(3, 35),
          FlSpot(4, 40),
          FlSpot(5, 35),
        ];
        redSpots = [
          FlSpot(0, 10),
          FlSpot(1, 15),
          FlSpot(2, 12),
          FlSpot(3, 11),
          FlSpot(4, 15),
          FlSpot(5, 35),
        ];
      } else if (selectedPeriod == 'T1_R_3') {
        greenGraphValue = 150.0;
        redGraphValue = 120.0;
        greenSpots = [
          FlSpot(0, 50),
          FlSpot(1, 60),
          FlSpot(2, 55),
          FlSpot(3, 65),
          FlSpot(4, 70),
          FlSpot(5, 65),
        ];
        redSpots = [
          FlSpot(0, 12),
          FlSpot(1, 25),
          FlSpot(2, 22),
          FlSpot(3, 30),
          FlSpot(4, 35),
          FlSpot(5, 45),
        ];
      }
      else if (selectedPeriod == 'T1_L_1') {
        greenGraphValue = 150.0;
        redGraphValue = 120.0;
        greenSpots = [
          FlSpot(0, 25),
          FlSpot(1, 15),
          FlSpot(2, 30),
          FlSpot(3, 35),
          FlSpot(4, 40),
          FlSpot(5, 35),
        ];
        redSpots = [
          FlSpot(0, 22),
          FlSpot(1, 35),
          FlSpot(2, 52),
          FlSpot(3, 10),
          FlSpot(4, 25),
          FlSpot(5, 45),
        ];
      }
      else if (selectedPeriod == 'T1_L_2') {
        greenGraphValue = 150.0;
        redGraphValue = 120.0;
        greenSpots = [
          FlSpot(0, 55),
          FlSpot(1, 35),
          FlSpot(2, 50),
          FlSpot(3, 65),
          FlSpot(4, 30),
          FlSpot(5, 25),
        ];
        redSpots = [
          FlSpot(0, 15),
          FlSpot(1, 25),
          FlSpot(2, 30),
          FlSpot(3, 45),
          FlSpot(4, 40),
          FlSpot(5, 35),
        ];
      }
      else if (selectedPeriod == 'T1_L_3') {
        greenGraphValue = 150.0;
        redGraphValue = 120.0;
        greenSpots = [
          FlSpot(0, 65),
          FlSpot(1, 55),
          FlSpot(2, 40),
          FlSpot(3, 35),
          FlSpot(4, 40),
          FlSpot(5, 55),
        ];
        redSpots = [
          FlSpot(0, 22),
          FlSpot(1, 35),
          FlSpot(2, 32),
          FlSpot(3, 40),
          FlSpot(4, 35),
          FlSpot(5, 45),
        ];
      }
      else if (selectedPeriod == 'T1_Up_1') {
        greenGraphValue = 150.0;
        redGraphValue = 120.0;
        greenSpots = [
          FlSpot(0, 55),
          FlSpot(1, 65),
          FlSpot(2, 70),
          FlSpot(3, 65),
          FlSpot(4, 50),
          FlSpot(5, 55),
        ];
        redSpots = [
          FlSpot(0, 72),
          FlSpot(1, 55),
          FlSpot(2, 22),
          FlSpot(3, 40),
          FlSpot(4, 75),
          FlSpot(5, 45),
        ];
      }
      else if (selectedPeriod == 'T1_Up_2') {
        greenGraphValue = 150.0;
        redGraphValue = 120.0;
        greenSpots = [
          FlSpot(0, 75),
          FlSpot(1, 55),
          FlSpot(2, 40),
          FlSpot(3, 35),
          FlSpot(4, 30),
          FlSpot(5, 35),
        ];
        redSpots = [
          FlSpot(0, 75),
          FlSpot(1, 55),
          FlSpot(2, 40),
          FlSpot(3, 35),
          FlSpot(4, 30),
          FlSpot(5, 35),
        ];
      }
      else if (selectedPeriod == 'T1_Up_3') {
        greenGraphValue = 150.0;
        redGraphValue = 120.0;
        greenSpots = [
          FlSpot(0, 45),
          FlSpot(1, 65),
          FlSpot(2, 40),
          FlSpot(3, 65),
          FlSpot(4, 40),
          FlSpot(5, 55),
        ];
        redSpots = [
          FlSpot(0, 32),
          FlSpot(1, 55),
          FlSpot(2, 32),
          FlSpot(3, 40),
          FlSpot(4, 35),
          FlSpot(5, 45),
        ];
      }

      
      if (startDate != null && endDate != null) {
        final duration = endDate!.difference(startDate!);
        if (duration.inDays <= 1) {
          greenGraphValue *= 1.1;
          redGraphValue *= 1.1;
        } else if (duration.inDays <= 7) {
          greenGraphValue *= 1.2;
          redGraphValue *= 1.2;
        } else if (duration.inDays <= 30) {
          greenGraphValue *= 1.3;
          redGraphValue *= 1.3;
        } else if (duration.inDays <= 365) {
          greenGraphValue *= 1.4;
          redGraphValue *= 1.4;
        } else {
          greenGraphValue *= 1.5;
          redGraphValue *= 1.5;
        }
      }
    });
  }

  
  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: startDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != startDate) {
      setState(() {
        startDate = picked;
        _updateData();
      });
    }
  }

 
  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: endDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != endDate) {
      setState(() {
        endDate = picked;
        _updateData();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Таблицы')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 220,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(48, 0, 0, 0),
                              blurRadius: 8,
                              spreadRadius: 1,
                              offset: const Offset(1, 0),
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 20, top: 20),
                              child: Text(
                                'Уровни деформации',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  
                                  Expanded(
                                    child: LevelDeformationCard(
                                      title: "Низкий",
                                      circleColor: Colors.green,
                                      value: "5,000",
                                      arrowIcon: Icons.arrow_upward,
                                      arrowColor: Colors.green,
                                      percentage: "16%",
                                      description: "на этой неделе",
                                    ),
                                  ),
                                  
                                  Container(
                                    width: 1,
                                    height: 100,
                                    color: Colors.grey[300],
                                  ),
                                  
                                  Expanded(
                                    child: LevelDeformationCard(
                                      title: "Средний",
                                      circleColor: Colors.amber,
                                      value: "1,800",
                                      arrowIcon: Icons.arrow_downward,
                                      arrowColor: Colors.red,
                                      percentage: "23%",
                                      description: "на этой неделе",
                                    ),
                                  ),
                                  
                                  Container(
                                    width: 1,
                                    height: 120,
                                    color: Colors.grey[300],
                                  ),
                                
                                  Expanded(
                                    child: LevelDeformationCard(
                                      title: "Критический",
                                      circleColor: Colors.red,
                                      value: "180",
                                      arrowIcon: Icons.arrow_downward,
                                      arrowColor: Colors.red,
                                      percentage: "10%",
                                      description: "на этой неделе",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 220,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(48, 0, 0, 0),
                              blurRadius: 8,
                              spreadRadius: 1,
                              offset: const Offset(1, 0),
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            // Шапка
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                children: [
                                  const Text(
                                    'Дополнительная информация',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                  ),
                                  const Spacer(),
                                  DropdownButton<String>(
                                    value: selectedPeriod,
                                    hint: const Text('Выберите период'),
                                    items: periods.map((String period) {
                                      return DropdownMenuItem<String>(
                                        value: period,
                                        child: Text(period),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        selectedPeriod = newValue;
                                        _updateData();
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            
                            Expanded(
                              child: Row(
                                children: [
                                  
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0), 
                                      child: Column(
                                        children: [
                                          
                                          SizedBox(
                                            height: 50, 
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 280, 
                                                  child: LineChart(
                                                    LineChartData(
                                                      minX: 0,
                                                      maxX: 5,
                                                      minY: 0,
                                                      maxY: 100, 
                                                      gridData: FlGridData(show: false), 
                                                      titlesData: FlTitlesData(show: false), 
                                                      borderData: FlBorderData(show: false), 
                                                      lineBarsData: [
                                                        LineChartBarData(
                                                          spots: greenSpots,
                                                          isCurved: false, 
                                                          color: Colors.green,
                                                          barWidth: 2,
                                                          belowBarData: BarAreaData(show: false),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 16), 
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      '${greenGraphValue.toStringAsFixed(1)}%',
                                                      style: const TextStyle(
                                                        fontSize: 16, 
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.green,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 8),
                                                    const Text(
                                                      'Мин значение',
                                                      style: TextStyle(fontSize: 12, color: Colors.grey), 
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                          
                                          SizedBox(
                                            height: 50,
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 280, 
                                                  child: LineChart(
                                                    LineChartData(
                                                      minX: 0,
                                                      maxX: 5,
                                                      minY: 0,
                                                      maxY: 60,
                                                      gridData: FlGridData(show: false), 
                                                      titlesData: FlTitlesData(show: false), 
                                                      borderData: FlBorderData(show: false), 
                                                      lineBarsData: [
                                                        LineChartBarData(
                                                          spots: redSpots,
                                                          isCurved: false, 
                                                          color: Colors.red,
                                                          barWidth: 2,
                                                          belowBarData: BarAreaData(show: false),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 16),
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      '${redGraphValue.toStringAsFixed(1)}%',
                                                      style: const TextStyle(
                                                        fontSize: 16, 
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.red,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 8), 
                                                    const Text(
                                                      'Макс значение',
                                                      style: TextStyle(fontSize: 12, color: Colors.grey), 
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Период с',
                                            style: TextStyle(fontSize: 12, color: Colors.grey), 
                                          ),
                                          const SizedBox(height: 8), 
                                          InkWell(
                                            onTap: () => _selectStartDate(context),
                                            child: Text(
                                              startDate != null
                                                  ? '${startDate!.day}.${startDate!.month}.${startDate!.year}'
                                                  : 'Выберите дату',
                                              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500), 
                                            ),
                                          ),
                                          const SizedBox(height: 16), 
                                          const Text(
                                            'по',
                                            style: TextStyle(fontSize: 12, color: Colors.grey), 
                                          ),
                                          const SizedBox(height: 8), 
                                          InkWell(
                                            onTap: () => _selectEndDate(context),
                                            child: Text(
                                              endDate != null
                                                  ? '${endDate!.day}.${endDate!.month}.${endDate!.year}'
                                                  : 'Выберите дату',
                                              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0, top: 20, bottom: 25),
                  child: Container(
                    width: 2000,
                    height: 650,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(48, 0, 0, 0),
                          blurRadius: 8,
                          spreadRadius: 1,
                        )
                      ]
                    ) ,
                    child: FilterTableWidget(),
                  ),
                )
              ],
            )

            
          ]
        )
      )
    );
  }
}