import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it4gaz/gen/assets.gen.dart';
import 'package:it4gaz/src/screens/analytics/analytics_screen.dart';
import 'package:it4gaz/src/screens/charts/charts_screen.dart';
import 'package:it4gaz/src/screens/home/home_screen.dart';
import 'package:it4gaz/src/screens/tables/tables_screen.dart';
import 'package:it4gaz/src/screens/visualization/visualization_screen.dart';
import 'package:it4gaz/src/services/bloc_observer.dart';
import 'package:it4gaz/src/services/navigation_service.dart';
import 'package:it4gaz/src/widgets/navigation_button_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MainBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NavigationService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const MainScreen(),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<NavigationService, List<Widget>>(
      builder: (context, state) {
        return Row(
          children: [
            Container(
              width: 260,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(48, 0, 0, 0),
                    blurRadius: 8.0,
                    spreadRadius: 1.0,
                    offset: const Offset(1, 0),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35, left: 35),
                    child:
                        Assets.logo.it4gazLogo.image(width: 100, height: 100),
                  ),
                  const SizedBox(height: 35),
                  Column(
                    children: [
                      NavigationButtonWidget(
                        navigateTo: const HomeScreen(),
                        label: 'Главная',
                        icon: CupertinoIcons.house,
                        isSelected: state.isNotEmpty
                            ? state.last.runtimeType == HomeScreen
                            : false,
                      ),
                      NavigationButtonWidget(
                        navigateTo: const TablesScreen(),
                        label: 'Таблица',
                        icon: CupertinoIcons.table,
                        isSelected: state.isNotEmpty
                            ? state.last.runtimeType == TablesScreen
                            : false,
                      ),
                      NavigationButtonWidget(
                        navigateTo: const ChartsScreen(),
                        label: 'Графики',
                        icon: CupertinoIcons.chart_bar_square,
                        isSelected: state.isNotEmpty
                            ? state.last.runtimeType == ChartsScreen
                            : false,
                      ),
                      NavigationButtonWidget(
                        navigateTo: const AnalyticsScreen(),
                        label: 'Аналитика',
                        icon: CupertinoIcons.chart_pie,
                        isSelected: state.isNotEmpty
                            ? state.last.runtimeType == AnalyticsScreen
                            : false,
                      ),
                      NavigationButtonWidget(
                        navigateTo: const VisualizationScreen(),
                        label: 'Визуализация',
                        icon: CupertinoIcons
                            .rectangle_arrow_up_right_arrow_down_left,
                        isSelected: state.isNotEmpty
                            ? state.last.runtimeType == VisualizationScreen
                            : false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(48, 0, 0, 0),
                        blurRadius: 8.0,
                        spreadRadius: 1.0,
                        offset: const Offset(1, 0),
                      ),
                    ],
                  ),
                  child:
                      state.isNotEmpty ? state.last : const SizedBox.shrink(),
                ),
              ),
            ),
          ],
        );
      },
    ));
  }
}
