

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:it4gaz/src/api/data/requests/filter_model.dart';

part 'sensor_request_model.freezed.dart';
part 'sensor_request_model.g.dart';

@freezed
class SensorRequestModel with _$SensorRequestModel {
  const factory SensorRequestModel({
    required int page,
    required int pageSize,
    required FilterModel filters,
  }) = _SensorRequestModel;

  factory SensorRequestModel.fromJson(Map<String, dynamic> json) => _$SensorRequestModelFromJson(json);
}