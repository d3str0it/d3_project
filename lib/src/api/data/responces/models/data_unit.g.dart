// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataUnitImpl _$$DataUnitImplFromJson(Map<String, dynamic> json) =>
    _$DataUnitImpl(
      readings: (json['readings'] as List<dynamic>)
          .map((e) => Reading.fromJson(e as Map<String, dynamic>))
          .toList(),
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$DataUnitImplToJson(_$DataUnitImpl instance) =>
    <String, dynamic>{
      'readings': instance.readings,
      'time': instance.time.toIso8601String(),
    };
