

import 'package:freezed_annotation/freezed_annotation.dart';

part 'analyze_request_model.freezed.dart';
part 'analyze_request_model.g.dart';

@freezed
class AnalyzeRequestModel with _$AnalyzeRequestModel {
  const factory AnalyzeRequestModel({
    required String file_path,
  }) = _AnalyzeRequestModel;

  factory AnalyzeRequestModel.fromJson(Map<String, dynamic> json) => _$AnalyzeRequestModelFromJson(json);
}
