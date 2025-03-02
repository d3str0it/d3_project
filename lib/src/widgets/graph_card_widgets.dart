import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart'; 

class Graph_card extends StatelessWidget {
  final Color circleColor; 
  final String label; 
  final Color blockColor;
  final String percentage; 
  final Color graphColor; 
  final String? selectedDate; 
  final List<FlSpot> graphData; 

  const Graph_card({
    super.key,
    required this.circleColor,
    required this.label,
    required this.blockColor,
    required this.percentage, 
    required this.graphColor, 
    this.selectedDate, 
    required this.graphData, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: blockColor,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(48, 0, 0, 0),
            blurRadius: 8,
            spreadRadius: 1,
            offset: const Offset(1, 0),
          ),
        ],
      ),
      width: 250,
      height: 200,
      padding: const EdgeInsets.all(12), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Row(
            children: [
              // Кружок
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: circleColor,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 8), 
              Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        
          if (percentage.isNotEmpty) 
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                percentage,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

          // Отображение выбранного значения из DropdownButton
          if (selectedDate != null) 
            Padding(
              padding: const EdgeInsets.only(top: 8),
              
            ),
          
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: LineChart(
                LineChartData(
                  gridData: const FlGridData(show: false),
                  titlesData:  FlTitlesData(show: false), 
                  borderData:  FlBorderData(show: false), 
                  minX: 0,
                  maxX: 6,
                  minY: 0,
                  maxY: 6,
                  lineBarsData: [
                    LineChartBarData(
                      spots: graphData, // Используем переданные данные
                      isCurved: true, 
                      color: graphColor,
                      barWidth: 3, 
                      belowBarData: BarAreaData(show: false), 
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}