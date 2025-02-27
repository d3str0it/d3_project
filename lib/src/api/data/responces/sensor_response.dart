import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:it4gaz/src/api/data/requests/filter_model.dart';
import 'package:it4gaz/src/api/data/requests/pagination.dart';
import 'package:it4gaz/src/api/data/sensor_model.dart';

part 'sensor_response.freezed.dart';
part 'sensor_response.g.dart';
@freezed
class SensorResponse with _$SensorResponse {
  const factory SensorResponse({
    @JsonKey(name: 'data') required List<SensorModel> sensors,
    @JsonKey(name: 'filters') required FilterModel filter,
    required PaginationModel pagination,
    required String status,
    required String table,
  }) = _SensorResponse;

  factory SensorResponse.fromJson(Map<String, dynamic> json) => _$SensorResponseFromJson(json);
}
