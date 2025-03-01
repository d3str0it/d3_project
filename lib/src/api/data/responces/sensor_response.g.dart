// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SensorResponseImpl _$$SensorResponseImplFromJson(Map<String, dynamic> json) =>
    _$SensorResponseImpl(
      sensors: (json['data'] as List<dynamic>)
          .map((e) => SensorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      filter: FilterModel.fromJson(json['filters'] as Map<String, dynamic>),
      pagination:
          PaginationModel.fromJson(json['pagination'] as Map<String, dynamic>),
      status: json['status'] as String,
      table: json['table'] as String,
    );

Map<String, dynamic> _$$SensorResponseImplToJson(
        _$SensorResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.sensors,
      'filters': instance.filter,
      'pagination': instance.pagination,
      'status': instance.status,
      'table': instance.table,
    };
