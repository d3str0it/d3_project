import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:it4gaz/src/widgets/input_date_interval_widget.dart';
import 'package:it4gaz/src/widgets/sensor_info_card_widget.dart';
import 'package:it4gaz/src/widgets/sensor_summary_card_widget.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({super.key});

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Аналитика')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Сводный отчет',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                const input_date_interval_widget(),
                const SizedBox(width: 10),
                CupertinoButton(
                  child: const Text('Применить'),
                  color: const Color(0xffDECCFE),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                SensorSummaryCard(),
                SizedBox(width: 30,),
                SensorInfoCard(
                  startDate: DateTime(2025, 2, 25),
                  endDate: DateTime(2025, 3, 1),
                  sensorData: {
                    'T1_K_1 д. кольц. деф.': {
                      'max': 596.12,
                      'avg': 595.12,
                      'min': 594.12
                    },
                    'T1_K_2 д. кольц. деф.': {
                      'max': 600.32,
                      'avg': 598.25,
                      'min': 595.98
                    },
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
