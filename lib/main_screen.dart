import 'package:flutter/material.dart';

class Main_Screen extends StatelessWidget {
  const Main_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Главная')),
      body: const Center(child: Text('Содержимое таблиц')),
    );
  }
}