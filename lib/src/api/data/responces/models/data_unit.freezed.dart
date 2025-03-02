// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DataUnit _$DataUnitFromJson(Map<String, dynamic> json) {
  return _DataUnit.fromJson(json);
}

/// @nodoc
mixin _$DataUnit {
  List<Reading> get readings => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

  /// Serializes this DataUnit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataUnit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataUnitCopyWith<DataUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataUnitCopyWith<$Res> {
  factory $DataUnitCopyWith(DataUnit value, $Res Function(DataUnit) then) =
      _$DataUnitCopyWithImpl<$Res, DataUnit>;
  @useResult
  $Res call({List<Reading> readings, DateTime time});
}

/// @nodoc
class _$DataUnitCopyWithImpl<$Res, $Val extends DataUnit>
    implements $DataUnitCopyWith<$Res> {
  _$DataUnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataUnit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readings = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      readings: null == readings
          ? _value.readings
          : readings // ignore: cast_nullable_to_non_nullable
              as List<Reading>,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataUnitImplCopyWith<$Res>
    implements $DataUnitCopyWith<$Res> {
  factory _$$DataUnitImplCopyWith(
          _$DataUnitImpl value, $Res Function(_$DataUnitImpl) then) =
      __$$DataUnitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Reading> readings, DateTime time});
}

/// @nodoc
class __$$DataUnitImplCopyWithImpl<$Res>
    extends _$DataUnitCopyWithImpl<$Res, _$DataUnitImpl>
    implements _$$DataUnitImplCopyWith<$Res> {
  __$$DataUnitImplCopyWithImpl(
      _$DataUnitImpl _value, $Res Function(_$DataUnitImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataUnit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readings = null,
    Object? time = null,
  }) {
    return _then(_$DataUnitImpl(
      readings: null == readings
          ? _value._readings
          : readings // ignore: cast_nullable_to_non_nullable
              as List<Reading>,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataUnitImpl implements _DataUnit {
  const _$DataUnitImpl(
      {required final List<Reading> readings, required this.time})
      : _readings = readings;

  factory _$DataUnitImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataUnitImplFromJson(json);

  final List<Reading> _readings;
  @override
  List<Reading> get readings {
    if (_readings is EqualUnmodifiableListView) return _readings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_readings);
  }

  @override
  final DateTime time;

  @override
  String toString() {
    return 'DataUnit(readings: $readings, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataUnitImpl &&
            const DeepCollectionEquality().equals(other._readings, _readings) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_readings), time);

  /// Create a copy of DataUnit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataUnitImplCopyWith<_$DataUnitImpl> get copyWith =>
      __$$DataUnitImplCopyWithImpl<_$DataUnitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataUnitImplToJson(
      this,
    );
  }
}

abstract class _DataUnit implements DataUnit {
  const factory _DataUnit(
      {required final List<Reading> readings,
      required final DateTime time}) = _$DataUnitImpl;

  factory _DataUnit.fromJson(Map<String, dynamic> json) =
      _$DataUnitImpl.fromJson;

  @override
  List<Reading> get readings;
  @override
  DateTime get time;

  /// Create a copy of DataUnit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataUnitImplCopyWith<_$DataUnitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
