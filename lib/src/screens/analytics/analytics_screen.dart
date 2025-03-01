import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:it4gaz/src/widgets/deformation_level_card_widget.dart';
import 'package:it4gaz/src/widgets/input_date_interval_widget.dart';
import 'package:it4gaz/src/widgets/sensor_info_card_widget.dart';
import 'package:it4gaz/src/widgets/sensor_summary_card_widget.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({super.key});

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  final Map<String, Map<String, double>> deformationData = {
    'За час': {'Низкий': 60, 'Средний': 30, 'Высокий': 10},
    'За сутки': {'Низкий': 50, 'Средний': 35, 'Высокий': 15},
    'За неделю': {'Низкий': 40, 'Средний': 40, 'Высокий': 20},
    'За месяц': {'Низкий': 30, 'Средний': 50, 'Высокий': 20},
  };

  String selectedSensorGroup = 'Tn_K_m';
  String selectedTimeInterval = 'За час';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
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
                  const InputDateIntervalWidget(),
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
                  Spacer(),
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
                  Spacer(),
                  DeformationLevelCard(
                      deformationLevels: deformationData[selectedTimeInterval]!,
                      selectedTimeInterval: selectedTimeInterval,
                      onTimeIntervalChanged: (value) {
                        setState(() {
                          selectedTimeInterval = value;
                        });
                      })
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
