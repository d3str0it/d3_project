import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class DeformationLevelCard extends StatelessWidget {
  final Map<String, double> deformationLevels;
  final String selectedTimeInterval;
  final ValueChanged<String> onTimeIntervalChanged;

  const DeformationLevelCard({
    super.key,
    required this.deformationLevels,
    required this.selectedTimeInterval,
    required this.onTimeIntervalChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160, 
      width: 340,  
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 15, top: 0, bottom: 5),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Уровни деформаций',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                DropdownButton<String>(
                  borderRadius: BorderRadius.circular(8),
                  value: selectedTimeInterval,
                  items: const ['За час', 'За сутки', 'За неделю', 'За месяц']
                      .map((value) => DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          ))
                      .toList(),
                  onChanged: (value) {
                    if (value != null) onTimeIntervalChanged(value);
                  },
                ),
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(width: 40,),
                  SizedBox(
                    width: 70, 
                    height: 70,
                    child: PieChart(
                      PieChartData(
                        sectionsSpace: 1,
                        centerSpaceRadius: 15, 
                        sections: _buildChartSections(),
                      ),
                    ),
                  ),
                  SizedBox(width: 80,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: deformationLevels.entries.map((entry) {
                        return _buildLegendRow(entry.key, entry.value);
                      }).toList(),
                    
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> _buildChartSections() {
    return [
      _buildSectionData(Colors.green, deformationLevels['Низкий'] ?? 0),
      _buildSectionData(Colors.yellow, deformationLevels['Средний'] ?? 0),
      _buildSectionData(Colors.red, deformationLevels['Высокий'] ?? 0),
    ];
  }

  PieChartSectionData _buildSectionData(Color color, double value) {
    return PieChartSectionData(
      color: color,
      value: value,
      title: value > 0 ? '${value.toStringAsFixed(0)}%' : '',
      radius: 40, 
      titleStyle: const TextStyle(fontSize: 10, color: Colors.white),
    );
  }

  Widget _buildLegendRow(String label, double value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: _getLevelColor(label),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          const SizedBox(width: 5),
          Text(
            label, 
            style: const TextStyle(fontSize: 12),
          ),
          const SizedBox(width: 10),
          Text(
            '${value.toStringAsFixed(0)}%', 
            style: const TextStyle(
              fontSize: 18, 
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Color _getLevelColor(String level) {
    switch (level) {
      case 'Низкий':
        return Colors.green;
      case 'Средний':
        return Colors.yellow;
      case 'Высокий':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
