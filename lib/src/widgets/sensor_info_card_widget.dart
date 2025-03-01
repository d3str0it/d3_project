import 'package:flutter/material.dart';

class SensorInfoCard extends StatefulWidget {
  final DateTime startDate;
  final DateTime endDate;
  final Map<String, Map<String, double>> sensorData;

  const SensorInfoCard({
    super.key,
    required this.startDate,
    required this.endDate,
    required this.sensorData,
  });

  @override
  State<SensorInfoCard> createState() => _SensorInfoCardState();
}

class _SensorInfoCardState extends State<SensorInfoCard> {
  // Жёстко зашитый список датчиков
  static const List<String> sensors = [
    'T1_K_1 д. кольц. деф.',
    'T1_K_2 д. кольц. деф.',
    'T1_K_3 д. кольц. деф.',
    'T1_R_1 д. прав. обр.',
    'T1_R_2 д. прав. обр.',
    'T1_R_3 д. прав. обр.',
    'T1_L_1 д. прав. обр.',
    'T1_L_2 д. прав. обр.',
    'T1_L_3 д. прав. обр.',
    'T1_Up_1 д. прав. обр.',
    'T1_Up_2 д. прав. обр.',
    'T1_Up_3 д. прав. обр.',
    'T1',
  ];

  late String selectedSensor;
  double maxValue = 0.0;
  double avgValue = 0.0;
  double minValue = 0.0;

  @override
  void initState() {
    super.initState();
    selectedSensor = sensors.first;
    _loadSensorData();
  }

  void _loadSensorData() {
    final data = widget.sensorData[selectedSensor] ?? {'max': 0.0, 'avg': 0.0, 'min': 0.0};
    setState(() {
      maxValue = data['max']!;
      avgValue = data['avg']!;
      minValue = data['min']!;
    });
  }

  void _onSensorChanged(String? newSensor) {
    if (newSensor != null) {
      setState(() {
        selectedSensor = newSensor;
      });
      _loadSensorData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 230,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropdownButton<String>(
              borderRadius: BorderRadius.circular(8),
              value: selectedSensor,
              items: sensors.map((sensor) {
                return DropdownMenuItem<String>(
                  value: sensor,
                  child: Text(sensor, overflow: TextOverflow.ellipsis),
                );
              }).toList(),
              onChanged: _onSensorChanged,
            ),
            const SizedBox(height: 10),
            _buildRow('Макс:', Colors.green, maxValue),
            _buildRow('Ср:', Colors.yellow, avgValue),
            _buildRow('Мин:', Colors.red, minValue),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String label, Color color, double value) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: color,
          ),
        ),
        const SizedBox(width: 3),
        Text(
          label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        Text(
          value.toStringAsFixed(2),
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
