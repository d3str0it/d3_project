// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reading.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadingImpl _$$ReadingImplFromJson(Map<String, dynamic> json) =>
    _$ReadingImpl(
      sensor: json['sensor'] as String,
      sensor_index: (json['sensor_index'] as num).toInt(),
      sensor_type: (json['sensor_type'] as num).toInt(),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$ReadingImplToJson(_$ReadingImpl instance) =>
    <String, dynamic>{
      'sensor': instance.sensor,
      'sensor_index': instance.sensor_index,
      'sensor_type': instance.sensor_type,
      'value': instance.value,
    };
