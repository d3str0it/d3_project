import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:it4gaz/src/widgets/custom_line_chart_widget.dart';
import 'package:it4gaz/src/widgets/input_date_interval_widget.dart';
import 'package:it4gaz/src/widgets/line_chart_widget.dart';

class ChartsScreen extends StatefulWidget {
  const ChartsScreen({super.key});

  @override
  State<ChartsScreen> createState() => _ChartsScreenState();
}

class _ChartsScreenState extends State<ChartsScreen> {
  String selectedSensorGroup = 'Tn_K_m';
  String selectedTimeInterval = 'За час';
  String selectedCustomValue = 'T1_K_1 д. кольц. деф.';

  final List<Color> sensorColors = const [
    Color(0xffA700FF),
    Color(0xffEF4444),
    Color(0xff3CD856),
  ];

  final Map<String, List<double>> timeIntervalData = {
    'За час': [12, 9, 7],
    'За сутки': [24, 18, 15],
    'За неделю': [42, 35, 28],
    'За месяц': [120, 90, 75],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Графики')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                _buildMainChartBlock(),
                const SizedBox(width: 10),
                _buildStatisticsBlock(),
              ],
            ),
            const SizedBox(height: 15),
            _buildCustomValueChart(),
          ],
        ),
      ),
    );
  }

  Widget _buildMainChartBlock() {
    return Container(
      height: 280,
      width: 800,
      decoration: _blockDecoration(),
      child: Column(
        children: [
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const Text(
                  'Общий график',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                const InputDateIntervalWidget(),
                const SizedBox(width: 10),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 600,
                  height: 200,
                  child: LineChartWidget(),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton<String>(
                      borderRadius: BorderRadius.circular(8),
                      value: selectedSensorGroup,
                      items: const [
                        'Tn_K_m',
                        'Tn_L_m',
                        'Tn_R_m',
                        'Tn_Up_m',
                        'T_n',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          selectedSensorGroup = newValue!;
                        });
                      },
                    ),
                    if (selectedSensorGroup == 'T_n')
                      _buildSensorRow(
                        color: Colors.blue,
                        text: 'T1 д. температуры',
                      )
                    else
                      Column(
                        children: List.generate(
                          3,
                          (index) => _buildSensorRow(
                            color: sensorColors[index],
                            text:
                                _getSensorText(selectedSensorGroup, index + 1),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatisticsBlock() {
    return Container(
      height: 280,
      width: 400,
      decoration: _blockDecoration(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(width: 10),
                const Text(
                  'Статистика',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                const Spacer(),
                DropdownButton<String>(
                  borderRadius: BorderRadius.circular(8),
                  value: selectedTimeInterval,
                  items: const ['За час', 'За сутки', 'За неделю', 'За месяц']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) => setState(() {
                    selectedTimeInterval = value!;
                  }),
                ),
              ],
            ),
            const SizedBox(height: 5),
            SizedBox(
              height: 220,
              width: 400,
              child: BarChart(
                BarChartData(
                  borderData: FlBorderData(
                    border: const Border(
                      top: BorderSide.none,
                      right: BorderSide.none,
                      left: BorderSide(width: 1),
                      bottom: BorderSide(width: 1),
                    ),
                  ),
                  groupsSpace: 10,
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          final index = value.toInt() - 1;
                          final sensorType = selectedSensorGroup.split('_')[1];
                          final titles = {
                            'K': ['K_1', 'K_2', 'K_3'],
                            'L': ['L_1', 'L_2', 'L_3'],
                            'R': ['R_1', 'R_2', 'R_3'],
                            'Up': ['Up_1', 'Up_2', 'Up_3'],
                            'n': ['T1']
                          };

                          if (index >= 0 &&
                              index < 3 &&
                              selectedSensorGroup != 'T_n') {
                            return Text('T1_${titles[sensorType]?[index]}');
                          }
                          if (selectedSensorGroup == 'T_n' && index == 0) {
                            return const Text('T1');
                          }
                          return const Text('');
                        },
                        reservedSize: 40,
                      ),
                    ),
                    leftTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: true),
                    ),
                    topTitles: const AxisTitles(),
                    rightTitles: const AxisTitles(),
                  ),
                  barGroups: _generateBarGroups(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<BarChartGroupData> _generateBarGroups() {
    final data = timeIntervalData[selectedTimeInterval]!;

    if (selectedSensorGroup == 'T_n') {
      return [
        BarChartGroupData(x: 1, barRods: [
          BarChartRodData(
            toY: data[0],
            width: 15,
            color: Colors.blue,
          ),
        ])
      ];
    }

    return List.generate(
        3,
        (index) => BarChartGroupData(
              x: index + 1,
              barRods: [
                BarChartRodData(
                  toY: data[index],
                  width: 15,
                  color: const [
                    Color(0xffA700FF),
                    Color(0xffEF4444),
                    Color(0xff3CD856),
                  ][index],
                )
              ],
            ));
  }

  Widget _buildCustomValueChart() {
    return Container(
      height: 320,
      width: 1210,
      decoration: _blockDecoration(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  'График заданного значения',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                const Spacer(),
                DropdownButton<String>(
                  borderRadius: BorderRadius.circular(8),
                  value: selectedCustomValue,
                  items: const [
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
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      selectedCustomValue = newValue!;
                    });
                  },
                ),
                const SizedBox(width: 25),
                const InputDateIntervalWidget(),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(height: 250, child: CustomLineChart(
  mainDataPoints: const [FlSpot(0, 3), FlSpot(2.6, 2), FlSpot(4.9, 5), FlSpot(6.8, 3.1), FlSpot(8, 4), FlSpot(9.5, 3), FlSpot(11, 4)],  // Replace 'yourDataHere' with the actual data
  avgDataPoints: const [FlSpot(0, 3.44), FlSpot(2.6, 3.44), FlSpot(4.9, 3.44), FlSpot(6.8, 3.44), FlSpot(8, 3.44), FlSpot(9.5, 3.44), FlSpot(11, 3.44)],
)
)
          ],
        ),
      ),
    );
  }

  BoxDecoration _blockDecoration() {
    return BoxDecoration(
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
    );
  }

  Widget _buildSensorRow({required Color color, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            width: 12,
            height: 12,
            color: color,
          ),
          const SizedBox(width: 10),
          Text(text, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  String _getSensorText(String group, int sensorNumber) {
    final parts = group.split('_');
    final sensorType = parts[1];
    final typeDescription = switch (sensorType) {
      'K' => 'кольц. деф.',
      'L' => 'лев. обр.',
      'R' => 'прав. обр.',
      'Up' => 'верх. обр.',
      _ => '',
    };

    return 'T1_${sensorType}_$sensorNumber д. $typeDescription';
  }
}
