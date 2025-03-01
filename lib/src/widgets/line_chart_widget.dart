import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class _LineChart extends StatelessWidget {
  const _LineChart();

  @override
  Widget build(BuildContext context) {
    return LineChart(lineChartData);
  }

  LineChartData get lineChartData => LineChartData(
        lineTouchData: lineTouchData(),
        gridData: gridData(),
        titlesData: titlesData(),
        borderData: borderData(),
        lineBarsData: lineBarsData(),
        minX: 0,
        maxX: 6,
        minY: 0,
        maxY: 6,
      );

  LineTouchData lineTouchData() => const LineTouchData(
        handleBuiltInTouches: true,
      );

  FlGridData gridData() => FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (double _) => FlLine(
          color: Colors.grey.withOpacity(0.2),
          strokeWidth: 1,
        ),
        getDrawingVerticalLine: (double _) => FlLine(
          color: Colors.grey.withOpacity(0.2),
          strokeWidth: 1,
        ),
      );

  FlTitlesData titlesData() => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles(),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  SideTitles bottomTitles() => SideTitles(
        getTitlesWidget: bottomTitleWidgets,
        interval: 1,
        reservedSize: 32,
        showTitles: true,
      );

  SideTitleWidget bottomTitleWidgets(double value, TitleMeta meta) {
    String text = switch (value.toInt()) {
      0 => '00:00',
      1 => '04:00',
      2 => '08:00',
      3 => '12:00',
      4 => '16:00',
      5 => '20:00',
      6 => '24:00',
      _ => '',
    };

    return SideTitleWidget(
      space: 10,
      meta: meta,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.black,
        ),
      ),
    );
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        interval: 1,
        reservedSize: 40,
        showTitles: true,
      );

  Text leftTitleWidgets(double value, TitleMeta meta) {
    String text = switch (value.toInt()) {
      1 => '5',
      2 => '10',
      3 => '15',
      4 => '20',
      5 => '25',
      6 => '30',
      _ => '',
    };

    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 12, color: Colors.black),
    );
  }

  FlBorderData borderData() => FlBorderData(
        show: true,
        border: Border.all(
          color: Colors.grey.withOpacity(0.2),
          width: 1,
        ),
      );

  List<LineChartBarData> lineBarsData() => [
        lineChartBarData1(), // Фиолетовая линия
        lineChartBarData2(), // Красная линия
        lineChartBarData3(), // Зеленая линия
      ];

  LineChartBarData lineChartBarData1() => LineChartBarData(
        isCurved: true,
        curveSmoothness: 0.3,
        color: const Color(0xFFA700FF),
        barWidth: 3,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: true),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(0, 2),
          FlSpot(1, 3.5),
          FlSpot(2, 5),
          FlSpot(3, 1.2),
          FlSpot(4, 4),
          FlSpot(5, 2.8),
          FlSpot(6, 5),
        ],
      );

  LineChartBarData lineChartBarData2() => LineChartBarData(
        isCurved: true,
        curveSmoothness: 0.3,
        color: const Color(0xFFEF4444),
        barWidth: 3,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: true),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(0, 1),
          FlSpot(1, 2.5),
          FlSpot(2, 3.8),
          FlSpot(3, 4.2),
          FlSpot(4, 3.1),
          FlSpot(5, 2.4),
          FlSpot(6, 1),
        ],
      );

  LineChartBarData lineChartBarData3() => LineChartBarData(
        isCurved: true,
        curveSmoothness: 0.3,
        color: const Color(0xFF3CD856),
        barWidth: 3,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: true),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(0, 4),
          FlSpot(1, 1.5),
          FlSpot(2, 2.8),
          FlSpot(3, 5),
          FlSpot(4, 2.3),
          FlSpot(5, 4.2),
          FlSpot(6, 3),
        ],
      );
}

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(16),
      child: AspectRatio(
        aspectRatio: 1.7,
        child: const _LineChart(),
      ),
    );
  }
}