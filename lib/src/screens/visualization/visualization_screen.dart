import 'package:flutter/material.dart';

class VisualizationScreen extends StatelessWidget {
  const VisualizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Визуализация')),
      body: const Center(child: Text('Содержимое таблиц')),
    );
  }
}