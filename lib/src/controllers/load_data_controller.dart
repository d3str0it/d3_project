import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:it4gaz/src/api/api_service.dart';
import 'package:it4gaz/src/core/di/service_locator.dart';

part 'load_data_controller.freezed.dart';

@freezed
class LoadDataState with _$LoadDataState {
  const factory LoadDataState.initial() = _Initial;
  const factory LoadDataState.openFile(File file) = _OpenFile;
  const factory LoadDataState.loading() = _Loading;
  const factory LoadDataState.loaded() = _Loaded;
  const factory LoadDataState.analyze(String status) = _Analyze;
  const factory LoadDataState.error(String message) = _Error;
}

class LoadDataController extends Cubit<LoadDataState> {
  final restClient = ServiceLocator.injector.get<RestClient>();
  LoadDataController() : super(const LoadDataState.initial());

  void openFile(File file) {
    emit(LoadDataState.openFile(file));
  }

  void analyze(File file) async {
    emit(LoadDataState.loading());

    try {
      // Пример использования:
final file = File('path/to/file');
final multipartFile = await MultipartFile.fromFile(
  file.path,
  filename: file.path.split('/').last,
      );
      final response = await restClient.analyze(file: multipartFile);
      emit(LoadDataState.analyze(response.status));
    } catch (e) {
      emit(LoadDataState.error(e.toString()));
    }
  }
}
