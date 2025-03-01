import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it4gaz/src/controllers/load_data_controller.dart';
import 'package:pressable/pressable.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File file = File(result.files.single.path!);
      context.read<LoadDataController>().analyze(file);
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Главная')),
      body: BlocBuilder<LoadDataController, LoadDataState>(
        builder: (context, state) {
          return Center(
              child: Column(
            children: [
              state.maybeWhen(
                orElse: () => const SizedBox.shrink(),
                openFile: (file) => Text(file.path),
                loading: () => const CircularProgressIndicator(),
                loaded: () => const SizedBox.shrink(),
                analyze: (status) => Text(status),
                error: (message) => Text(message),
              ),
              Pressable.scale(
                  onPressed: () => _pickFile(), child: Text("Загрузить файл")),
            ],
          ));
        },
      ),
    );
  }
}
