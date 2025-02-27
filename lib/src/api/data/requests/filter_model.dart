

import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_model.freezed.dart';
part 'filter_model.g.dart';

@freezed
class FilterModel with _$FilterModel {
  const factory FilterModel({
    @JsonKey(name: 'sensor_type') required String sensorType,
    @JsonKey(name: 'sensor_index') required String sensorIndex,
    @JsonKey(name: 'time_start') DateTime? timeStart,
    @JsonKey(name: 'time_end') DateTime? timeEnd,
    @JsonKey(name: 'value_min') double? valueMin,
    @JsonKey(name: 'value_max') double? valueMax,
  }) = _FilterModel;

  factory FilterModel.fromJson(Map<String, dynamic> json) => _$FilterModelFromJson(json);
}
