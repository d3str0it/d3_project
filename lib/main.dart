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

void main() {
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

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
                    child: Image.asset(
                      'assets/logo/it4gaz_logo.jpg',
                    ),
                  ),
                  const SizedBox(height: 35),
                  Column(
                    children: [
                      _buildButton(
                          Assets.icons.homeIcon.image(),
                          'Главная',
                          const HomeScreen(),
                          state.isNotEmpty
                              ? state.last
                              : const SizedBox.shrink()),
                      _buildButton(
                          Assets.icons.tabIcon.image(),
                          'Таблица',
                          const TablesScreen(),
                          state.isNotEmpty
                              ? state.last
                              : const SizedBox.shrink()),
                      _buildButton(
                          Assets.icons.graphIcon.image(),
                          'Графики',
                          const ChartsScreen(),
                          state.isNotEmpty
                              ? state.last
                              : const SizedBox.shrink()),
                      _buildButton(
                          Assets.icons.diogIcon.image(),
                          'Аналитика',
                          const AnalyticsScreen(),
                          state.isNotEmpty
                              ? state.last
                              : const SizedBox.shrink()),
                      _buildButton(
                          Assets.icons.boxIcon.image(),
                          'Визуализация',
                          const VisualizationScreen(),
                          state.isNotEmpty
                              ? state.last
                              : const SizedBox.shrink()),
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

  Widget _buildButton(
      Widget icon, String label, Widget navigateTo, Widget currentContent) {
    bool isSelected = currentContent == navigateTo;
    bool isHovering = false;

    return StatefulBuilder(
      builder: (context, setState) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          child: MouseRegion(
            onEnter: (event) {
              setState(() {
                isHovering = true;
              });
            },
            onExit: (event) {
              setState(() {
                isHovering = false;
              });
            },
            cursor: SystemMouseCursors.click,
            child: SizedBox(
              width: double.infinity,
              height: 40,
              child: CupertinoButton(
                onPressed: () {
                  BlocProvider.of<NavigationService>(context)
                      .navigateTo(navigateTo);
                },
                padding: const EdgeInsets.all(10),
                color: isSelected || isHovering
                    ? const Color.fromARGB(104, 177, 55, 201)
                    : const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(8),
                child: Row(
                  children: [
                    icon,
                    const SizedBox(width: 5),
                    Text(
                      label,
                      style: TextStyle(
                        color: isSelected || isHovering
                            ? Colors.black
                            : const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
