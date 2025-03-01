// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterModelImpl _$$FilterModelImplFromJson(Map<String, dynamic> json) =>
    _$FilterModelImpl(
      sensorType: json['sensor_type'] as String,
      sensorIndex: json['sensor_index'] as String,
      timeStart: json['time_start'] == null
          ? null
          : DateTime.parse(json['time_start'] as String),
      timeEnd: json['time_end'] == null
          ? null
          : DateTime.parse(json['time_end'] as String),
      valueMin: (json['value_min'] as num?)?.toDouble(),
      valueMax: (json['value_max'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$FilterModelImplToJson(_$FilterModelImpl instance) =>
    <String, dynamic>{
      'sensor_type': instance.sensorType,
      'sensor_index': instance.sensorIndex,
      'time_start': instance.timeStart?.toIso8601String(),
      'time_end': instance.timeEnd?.toIso8601String(),
      'value_min': instance.valueMin,
      'value_max': instance.valueMax,
    };
