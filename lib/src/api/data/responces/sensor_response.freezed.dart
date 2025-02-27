// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sensor_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SensorResponse _$SensorResponseFromJson(Map<String, dynamic> json) {
  return _SensorResponse.fromJson(json);
}

/// @nodoc
mixin _$SensorResponse {
  @JsonKey(name: 'data')
  List<SensorModel> get sensors => throw _privateConstructorUsedError;
  @JsonKey(name: 'filters')
  FilterModel get filter => throw _privateConstructorUsedError;
  PaginationModel get pagination => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get table => throw _privateConstructorUsedError;

  /// Serializes this SensorResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SensorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SensorResponseCopyWith<SensorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SensorResponseCopyWith<$Res> {
  factory $SensorResponseCopyWith(
          SensorResponse value, $Res Function(SensorResponse) then) =
      _$SensorResponseCopyWithImpl<$Res, SensorResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<SensorModel> sensors,
      @JsonKey(name: 'filters') FilterModel filter,
      PaginationModel pagination,
      String status,
      String table});

  $FilterModelCopyWith<$Res> get filter;
  $PaginationModelCopyWith<$Res> get pagination;
}

/// @nodoc
class _$SensorResponseCopyWithImpl<$Res, $Val extends SensorResponse>
    implements $SensorResponseCopyWith<$Res> {
  _$SensorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SensorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensors = null,
    Object? filter = null,
    Object? pagination = null,
    Object? status = null,
    Object? table = null,
  }) {
    return _then(_value.copyWith(
      sensors: null == sensors
          ? _value.sensors
          : sensors // ignore: cast_nullable_to_non_nullable
              as List<SensorModel>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as FilterModel,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of SensorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterModelCopyWith<$Res> get filter {
    return $FilterModelCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value) as $Val);
    });
  }

  /// Create a copy of SensorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationModelCopyWith<$Res> get pagination {
    return $PaginationModelCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SensorResponseImplCopyWith<$Res>
    implements $SensorResponseCopyWith<$Res> {
  factory _$$SensorResponseImplCopyWith(_$SensorResponseImpl value,
          $Res Function(_$SensorResponseImpl) then) =
      __$$SensorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<SensorModel> sensors,
      @JsonKey(name: 'filters') FilterModel filter,
      PaginationModel pagination,
      String status,
      String table});

  @override
  $FilterModelCopyWith<$Res> get filter;
  @override
  $PaginationModelCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$SensorResponseImplCopyWithImpl<$Res>
    extends _$SensorResponseCopyWithImpl<$Res, _$SensorResponseImpl>
    implements _$$SensorResponseImplCopyWith<$Res> {
  __$$SensorResponseImplCopyWithImpl(
      _$SensorResponseImpl _value, $Res Function(_$SensorResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SensorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensors = null,
    Object? filter = null,
    Object? pagination = null,
    Object? status = null,
    Object? table = null,
  }) {
    return _then(_$SensorResponseImpl(
      sensors: null == sensors
          ? _value._sensors
          : sensors // ignore: cast_nullable_to_non_nullable
              as List<SensorModel>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as FilterModel,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SensorResponseImpl implements _SensorResponse {
  const _$SensorResponseImpl(
      {@JsonKey(name: 'data') required final List<SensorModel> sensors,
      @JsonKey(name: 'filters') required this.filter,
      required this.pagination,
      required this.status,
      required this.table})
      : _sensors = sensors;

  factory _$SensorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SensorResponseImplFromJson(json);

  final List<SensorModel> _sensors;
  @override
  @JsonKey(name: 'data')
  List<SensorModel> get sensors {
    if (_sensors is EqualUnmodifiableListView) return _sensors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sensors);
  }

  @override
  @JsonKey(name: 'filters')
  final FilterModel filter;
  @override
  final PaginationModel pagination;
  @override
  final String status;
  @override
  final String table;

  @override
  String toString() {
    return 'SensorResponse(sensors: $sensors, filter: $filter, pagination: $pagination, status: $status, table: $table)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SensorResponseImpl &&
            const DeepCollectionEquality().equals(other._sensors, _sensors) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.table, table) || other.table == table));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sensors),
      filter,
      pagination,
      status,
      table);

  /// Create a copy of SensorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SensorResponseImplCopyWith<_$SensorResponseImpl> get copyWith =>
      __$$SensorResponseImplCopyWithImpl<_$SensorResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SensorResponseImplToJson(
      this,
    );
  }
}

abstract class _SensorResponse implements SensorResponse {
  const factory _SensorResponse(
      {@JsonKey(name: 'data') required final List<SensorModel> sensors,
      @JsonKey(name: 'filters') required final FilterModel filter,
      required final PaginationModel pagination,
      required final String status,
      required final String table}) = _$SensorResponseImpl;

  factory _SensorResponse.fromJson(Map<String, dynamic> json) =
      _$SensorResponseImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<SensorModel> get sensors;
  @override
  @JsonKey(name: 'filters')
  FilterModel get filter;
  @override
  PaginationModel get pagination;
  @override
  String get status;
  @override
  String get table;

  /// Create a copy of SensorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SensorResponseImplCopyWith<_$SensorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
