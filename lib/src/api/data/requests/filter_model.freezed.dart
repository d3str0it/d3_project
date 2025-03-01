// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilterModel _$FilterModelFromJson(Map<String, dynamic> json) {
  return _FilterModel.fromJson(json);
}

/// @nodoc
mixin _$FilterModel {
  @JsonKey(name: 'sensor_type')
  String get sensorType => throw _privateConstructorUsedError;
  @JsonKey(name: 'sensor_index')
  String get sensorIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_start')
  DateTime? get timeStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_end')
  DateTime? get timeEnd => throw _privateConstructorUsedError;
  @JsonKey(name: 'value_min')
  double? get valueMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'value_max')
  double? get valueMax => throw _privateConstructorUsedError;

  /// Serializes this FilterModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterModelCopyWith<FilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterModelCopyWith<$Res> {
  factory $FilterModelCopyWith(
          FilterModel value, $Res Function(FilterModel) then) =
      _$FilterModelCopyWithImpl<$Res, FilterModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sensor_type') String sensorType,
      @JsonKey(name: 'sensor_index') String sensorIndex,
      @JsonKey(name: 'time_start') DateTime? timeStart,
      @JsonKey(name: 'time_end') DateTime? timeEnd,
      @JsonKey(name: 'value_min') double? valueMin,
      @JsonKey(name: 'value_max') double? valueMax});
}

/// @nodoc
class _$FilterModelCopyWithImpl<$Res, $Val extends FilterModel>
    implements $FilterModelCopyWith<$Res> {
  _$FilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensorType = null,
    Object? sensorIndex = null,
    Object? timeStart = freezed,
    Object? timeEnd = freezed,
    Object? valueMin = freezed,
    Object? valueMax = freezed,
  }) {
    return _then(_value.copyWith(
      sensorType: null == sensorType
          ? _value.sensorType
          : sensorType // ignore: cast_nullable_to_non_nullable
              as String,
      sensorIndex: null == sensorIndex
          ? _value.sensorIndex
          : sensorIndex // ignore: cast_nullable_to_non_nullable
              as String,
      timeStart: freezed == timeStart
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeEnd: freezed == timeEnd
          ? _value.timeEnd
          : timeEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      valueMin: freezed == valueMin
          ? _value.valueMin
          : valueMin // ignore: cast_nullable_to_non_nullable
              as double?,
      valueMax: freezed == valueMax
          ? _value.valueMax
          : valueMax // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterModelImplCopyWith<$Res>
    implements $FilterModelCopyWith<$Res> {
  factory _$$FilterModelImplCopyWith(
          _$FilterModelImpl value, $Res Function(_$FilterModelImpl) then) =
      __$$FilterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sensor_type') String sensorType,
      @JsonKey(name: 'sensor_index') String sensorIndex,
      @JsonKey(name: 'time_start') DateTime? timeStart,
      @JsonKey(name: 'time_end') DateTime? timeEnd,
      @JsonKey(name: 'value_min') double? valueMin,
      @JsonKey(name: 'value_max') double? valueMax});
}

/// @nodoc
class __$$FilterModelImplCopyWithImpl<$Res>
    extends _$FilterModelCopyWithImpl<$Res, _$FilterModelImpl>
    implements _$$FilterModelImplCopyWith<$Res> {
  __$$FilterModelImplCopyWithImpl(
      _$FilterModelImpl _value, $Res Function(_$FilterModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensorType = null,
    Object? sensorIndex = null,
    Object? timeStart = freezed,
    Object? timeEnd = freezed,
    Object? valueMin = freezed,
    Object? valueMax = freezed,
  }) {
    return _then(_$FilterModelImpl(
      sensorType: null == sensorType
          ? _value.sensorType
          : sensorType // ignore: cast_nullable_to_non_nullable
              as String,
      sensorIndex: null == sensorIndex
          ? _value.sensorIndex
          : sensorIndex // ignore: cast_nullable_to_non_nullable
              as String,
      timeStart: freezed == timeStart
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeEnd: freezed == timeEnd
          ? _value.timeEnd
          : timeEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      valueMin: freezed == valueMin
          ? _value.valueMin
          : valueMin // ignore: cast_nullable_to_non_nullable
              as double?,
      valueMax: freezed == valueMax
          ? _value.valueMax
          : valueMax // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterModelImpl implements _FilterModel {
  const _$FilterModelImpl(
      {@JsonKey(name: 'sensor_type') required this.sensorType,
      @JsonKey(name: 'sensor_index') required this.sensorIndex,
      @JsonKey(name: 'time_start') this.timeStart,
      @JsonKey(name: 'time_end') this.timeEnd,
      @JsonKey(name: 'value_min') this.valueMin,
      @JsonKey(name: 'value_max') this.valueMax});

  factory _$FilterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterModelImplFromJson(json);

  @override
  @JsonKey(name: 'sensor_type')
  final String sensorType;
  @override
  @JsonKey(name: 'sensor_index')
  final String sensorIndex;
  @override
  @JsonKey(name: 'time_start')
  final DateTime? timeStart;
  @override
  @JsonKey(name: 'time_end')
  final DateTime? timeEnd;
  @override
  @JsonKey(name: 'value_min')
  final double? valueMin;
  @override
  @JsonKey(name: 'value_max')
  final double? valueMax;

  @override
  String toString() {
    return 'FilterModel(sensorType: $sensorType, sensorIndex: $sensorIndex, timeStart: $timeStart, timeEnd: $timeEnd, valueMin: $valueMin, valueMax: $valueMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterModelImpl &&
            (identical(other.sensorType, sensorType) ||
                other.sensorType == sensorType) &&
            (identical(other.sensorIndex, sensorIndex) ||
                other.sensorIndex == sensorIndex) &&
            (identical(other.timeStart, timeStart) ||
                other.timeStart == timeStart) &&
            (identical(other.timeEnd, timeEnd) || other.timeEnd == timeEnd) &&
            (identical(other.valueMin, valueMin) ||
                other.valueMin == valueMin) &&
            (identical(other.valueMax, valueMax) ||
                other.valueMax == valueMax));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sensorType, sensorIndex,
      timeStart, timeEnd, valueMin, valueMax);

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterModelImplCopyWith<_$FilterModelImpl> get copyWith =>
      __$$FilterModelImplCopyWithImpl<_$FilterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterModelImplToJson(
      this,
    );
  }
}

abstract class _FilterModel implements FilterModel {
  const factory _FilterModel(
      {@JsonKey(name: 'sensor_type') required final String sensorType,
      @JsonKey(name: 'sensor_index') required final String sensorIndex,
      @JsonKey(name: 'time_start') final DateTime? timeStart,
      @JsonKey(name: 'time_end') final DateTime? timeEnd,
      @JsonKey(name: 'value_min') final double? valueMin,
      @JsonKey(name: 'value_max') final double? valueMax}) = _$FilterModelImpl;

  factory _FilterModel.fromJson(Map<String, dynamic> json) =
      _$FilterModelImpl.fromJson;

  @override
  @JsonKey(name: 'sensor_type')
  String get sensorType;
  @override
  @JsonKey(name: 'sensor_index')
  String get sensorIndex;
  @override
  @JsonKey(name: 'time_start')
  DateTime? get timeStart;
  @override
  @JsonKey(name: 'time_end')
  DateTime? get timeEnd;
  @override
  @JsonKey(name: 'value_min')
  double? get valueMin;
  @override
  @JsonKey(name: 'value_max')
  double? get valueMax;

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterModelImplCopyWith<_$FilterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
