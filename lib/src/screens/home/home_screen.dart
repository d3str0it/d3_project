import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:it4gaz/gen/assets.gen.dart';
import 'package:it4gaz/src/screens/analytics/analytics_screen.dart';
import 'package:it4gaz/src/screens/charts/charts_screen.dart';
import 'package:it4gaz/src/screens/tables/tables_screen.dart';
import 'package:it4gaz/src/screens/visualization/visualization_screen.dart';
import 'package:it4gaz/src/widgets/build_card_widget.dart'; 
import 'package:it4gaz/src/widgets/warning_widgets.dart'; 
import 'package:it4gaz/src/widgets/graph_card_widgets.dart';
import 'package:fl_chart/fl_chart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedDate; 
  List<FlSpot> graphData = []; 
  String lowPercentage = "16%"; 
  String mediumPercentage = "32%"; 
  String highPercentage = "64%"; 

  @override
  void initState() {
    super.initState();
    
    selectedDate = 'За час';
    _updateData(selectedDate!);
  }

  void _updateData(String period) {
    setState(() {
      switch (period) {
        case 'За час':
          graphData = const [
            FlSpot(0, 3),
            FlSpot(1, 2),
            FlSpot(2, 5),
            FlSpot(3, 3),
            FlSpot(4, 4),
            FlSpot(5, 2),
            FlSpot(6, 3),
          ];
          lowPercentage = "16%";
          mediumPercentage = "32%";
          highPercentage = "64%";
          break;
        case 'За день':
          graphData = const [
            FlSpot(0, 2),
            FlSpot(1, 4),
            FlSpot(2, 3),
            FlSpot(3, 5),
            FlSpot(4, 1),
            FlSpot(5, 4),
            FlSpot(6, 2),
          ];
          lowPercentage = "20%";
          mediumPercentage = "40%";
          highPercentage = "60%";
          break;
        case 'За неделю':
          graphData = const [
            FlSpot(0, 1),
            FlSpot(1, 3),
            FlSpot(2, 2),
            FlSpot(3, 4),
            FlSpot(4, 3),
            FlSpot(5, 5),
            FlSpot(6, 2),
          ];
          lowPercentage = "25%";
          mediumPercentage = "45%";
          highPercentage = "65%";
          break;
        case 'За месяц':
          graphData = const [
            FlSpot(0, 4),
            FlSpot(1, 2),
            FlSpot(2, 3),
            FlSpot(3, 5),
            FlSpot(4, 1),
            FlSpot(5, 4),
            FlSpot(6, 3),
          ];
          lowPercentage = "30%";
          mediumPercentage = "50%";
          highPercentage = "70%";
          break;
        default:
          graphData = const [
            FlSpot(0, 3),
            FlSpot(1, 2),
            FlSpot(2, 5),
            FlSpot(3, 3),
            FlSpot(4, 4),
            FlSpot(5, 2),
            FlSpot(6, 3),
          ];
          lowPercentage = "16%";
          mediumPercentage = "32%";
          highPercentage = "64%";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final assetsIcons = $AssetsIconsGen();
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Главная'),
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    CardWidget(
                      iconPath: assetsIcons.tabIcon.path,
                      title: 'Таблица',
                      description: 'Отображение данных в табличном виде. Просмотр минимальных и максимальных значений. Выделение уровней деформаций',
                      navigateTo: const TablesScreen(),
                    ),
                    CardWidget(
                      iconPath: assetsIcons.diogIcon.path,
                      title: 'Аналитика',
                      description: 'Вывод статистики, графиков и диаграмм для заданных значений и периода времени.',
                      navigateTo: const AnalyticsScreen(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    CardWidget(
                      iconPath: assetsIcons.graphIcon.path,
                      title: 'Графики',
                      description: 'Отображение данных в виде графиков с настраиваемыми диапазонами отображения.',
                      navigateTo: const ChartsScreen(),
                    ),
                    CardWidget(
                      iconPath: assetsIcons.boxIcon.path,
                      title: 'Визуализация',
                      description: 'Возможность наглядно увидеть 3D-модель трубы и тепловую карту деформаций.',
                      navigateTo: const VisualizationScreen(),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 5),
                  child: Container(
                    width: 980,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(48, 0, 0, 0),
                          blurRadius: 8,
                          spreadRadius: 1,
                          offset: const Offset(1, 0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Уровни деформации',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: DropdownButton<String>(
                                  hint: Text(selectedDate ?? 'Выберите период', style: TextStyle(color: Colors.grey)), 
                                  value: selectedDate,
                                  items: const ['За час', 'За день', 'За неделю', 'За месяц']
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value, style: TextStyle(color: const Color.fromARGB(255, 53, 53, 53))), 
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedDate = newValue; 
                                      _updateData(newValue!); 
                                    });
                                  },
                                  dropdownColor: Colors.white, 
                                  iconEnabledColor: Colors.grey, 
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row( 
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 100, top: 5),
                              child: Row(
                                children: [
                                 
                                  Graph_card(
                                    circleColor: Colors.green,
                                    label: "Низкий",
                                    blockColor: const Color.fromARGB(255, 255, 255, 255),
                                    percentage: lowPercentage, 
                                    graphColor: Colors.green,
                                    selectedDate: selectedDate,
                                    graphData: graphData,
                                  ),
                                  SizedBox(width: 20), 
                                  
                                  Graph_card(
                                    circleColor: Colors.blue,
                                    label: "Средний",
                                    blockColor: const Color.fromARGB(255, 255, 255, 255),
                                    percentage: mediumPercentage, 
                                    graphColor: Colors.blue, 
                                    selectedDate: selectedDate,
                                    graphData: graphData,
                                  ),
                                  SizedBox(width: 20), 
                                  
                                  Graph_card(
                                    circleColor: Colors.red,
                                    label: "Высокий",
                                    blockColor: const Color.fromARGB(255, 255, 255, 255),
                                    percentage: highPercentage,
                                    graphColor: Colors.red, 
                                    selectedDate: selectedDate,
                                    graphData: graphData,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              NotificationList(), 
            ],
          ),
        ],
      ),
    );
  }
}
