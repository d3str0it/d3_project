import 'package:freezed_annotation/freezed_annotation.dart';

part 'analyze_responce.freezed.dart';
part 'analyze_responce.g.dart';

@freezed
class AnalyzeResponce with _$AnalyzeResponce {
  const factory AnalyzeResponce({
    required String status,
    required String suggested_table_name,
  }) = _AnalyzeResponce;

  factory AnalyzeResponce.fromJson(Map<String, dynamic> json) => _$AnalyzeResponceFromJson(json);
}
