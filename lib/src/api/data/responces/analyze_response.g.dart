// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyze_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalyzeResponseImpl _$$AnalyzeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AnalyzeResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => DataUnit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnalyzeResponseImplToJson(
        _$AnalyzeResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
