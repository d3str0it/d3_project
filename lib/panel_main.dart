import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tables_screen.dart';
import 'charts_screen.dart';
import 'visualization_screen.dart';
import 'analytics_screen.dart';
import 'main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _currentContent = const Center(child: Text('Основной контент'));
  int? _selectedIndex;

  void _updateContent(int index, Widget newContent) {
    setState(() {
      _currentContent = newContent;
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
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
                    _buildButton(0, 'assets/icons/home_icon.png', 'Главная', () {
                      _updateContent(0, const Main_Screen());
                    }),
                    _buildButton(1, 'assets/icons/tab_icon.png', 'Таблица', () {
                      _updateContent(1, const TablesScreen());
                    }),
                    _buildButton(2, 'assets/icons/graph_icon.png', 'Графики', () {
                      _updateContent(2, const ChartsScreen());
                    }),
                    _buildButton(3, 'assets/icons/diog_icon.png', 'Аналитика', () {
                      _updateContent(3, const AnalyticsScreen());
                    }),
                    _buildButton(4, 'assets/icons/box_icon.png', 'Визуализация', () {
                      _updateContent(4, const VisualizationScreen());
                    }),
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
                child: _currentContent,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(int index, String iconPath, String label, VoidCallback onPressed) {
    bool isSelected = _selectedIndex == index;
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
                  onPressed(); // Call the passed function
                  // When a button is pressed, update the selected index
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                padding: const EdgeInsets.all(10),
                color: isSelected || isHovering 
                    ? const Color.fromARGB(104, 177, 55, 201) 
                    : const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(8),
                child: Row(
                  children: [
                    Image.asset(
                      iconPath,
                      width: 24,
                      height: 24,
                      color: isSelected || isHovering ? Colors.black : const Color.fromARGB(255, 0, 0, 0),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      label,
                      style: TextStyle(
                        color: isSelected || isHovering ? Colors.black : const Color.fromARGB(255, 0, 0, 0),
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