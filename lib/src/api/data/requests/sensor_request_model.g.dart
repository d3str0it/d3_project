// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SensorRequestModelImpl _$$SensorRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SensorRequestModelImpl(
      page: (json['page'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      filters: FilterModel.fromJson(json['filters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SensorRequestModelImplToJson(
        _$SensorRequestModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'filters': instance.filters,
    };
