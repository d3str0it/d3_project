// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SensorModelImpl _$$SensorModelImplFromJson(Map<String, dynamic> json) =>
    _$SensorModelImpl(
      sensor: json['sensor'] as String,
      time: DateTime.parse(json['time'] as String),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$SensorModelImplToJson(_$SensorModelImpl instance) =>
    <String, dynamic>{
      'sensor': instance.sensor,
      'time': instance.time.toIso8601String(),
      'value': instance.value,
    };
