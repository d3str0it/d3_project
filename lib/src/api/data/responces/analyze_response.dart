import 'package:freezed_annotation/freezed_annotation.dart';

import 'models/data_unit.dart';

part 'analyze_response.freezed.dart';
part 'analyze_response.g.dart';

@freezed
class AnalyzeResponse with _$AnalyzeResponse {
  const factory AnalyzeResponse({
    required List<DataUnit> data,
  }) = _AnalyzeResponse;

  factory AnalyzeResponse.fromJson(Map<String, dynamic> json) =>
      _$AnalyzeResponseFromJson(json);
}
