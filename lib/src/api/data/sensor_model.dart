

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sensor_model.freezed.dart';
part 'sensor_model.g.dart';

@freezed
class SensorModel with _$SensorModel {
  const factory SensorModel({
    required String sensor,
    required DateTime time,
    required double value,
  }) = _SensorModel;

  factory SensorModel.fromJson(Map<String, dynamic> json) => _$SensorModelFromJson(json);
}