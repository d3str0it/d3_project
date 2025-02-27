import 'package:flutter/material.dart';
import 'package:it4gaz/gen/assets.gen.dart';
import 'package:it4gaz/src/screens/analytics/analytics_screen.dart';
import 'package:it4gaz/src/screens/charts/charts_screen.dart';
import 'package:it4gaz/src/screens/tables/tables_screen.dart';
import 'package:it4gaz/src/screens/visualization/visualization_screen.dart';
import 'package:it4gaz/src/widgets/build_card_widget.dart'; 
import 'package:it4gaz/src/widgets/warning_widgets.dart'; 
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          Column(
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
          Column(
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
          Column(
            children: [
              NotificationList()
            ],
          ),
          
        ],
      ),
    );
  }
}