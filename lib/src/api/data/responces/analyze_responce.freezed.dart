// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analyze_responce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnalyzeResponce _$AnalyzeResponceFromJson(Map<String, dynamic> json) {
  return _AnalyzeResponce.fromJson(json);
}

/// @nodoc
mixin _$AnalyzeResponce {
  String get status => throw _privateConstructorUsedError;
  String get suggested_table_name => throw _privateConstructorUsedError;

  /// Serializes this AnalyzeResponce to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnalyzeResponce
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalyzeResponceCopyWith<AnalyzeResponce> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyzeResponceCopyWith<$Res> {
  factory $AnalyzeResponceCopyWith(
          AnalyzeResponce value, $Res Function(AnalyzeResponce) then) =
      _$AnalyzeResponceCopyWithImpl<$Res, AnalyzeResponce>;
  @useResult
  $Res call({String status, String suggested_table_name});
}

/// @nodoc
class _$AnalyzeResponceCopyWithImpl<$Res, $Val extends AnalyzeResponce>
    implements $AnalyzeResponceCopyWith<$Res> {
  _$AnalyzeResponceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalyzeResponce
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? suggested_table_name = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      suggested_table_name: null == suggested_table_name
          ? _value.suggested_table_name
          : suggested_table_name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyzeResponceImplCopyWith<$Res>
    implements $AnalyzeResponceCopyWith<$Res> {
  factory _$$AnalyzeResponceImplCopyWith(_$AnalyzeResponceImpl value,
          $Res Function(_$AnalyzeResponceImpl) then) =
      __$$AnalyzeResponceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String suggested_table_name});
}

/// @nodoc
class __$$AnalyzeResponceImplCopyWithImpl<$Res>
    extends _$AnalyzeResponceCopyWithImpl<$Res, _$AnalyzeResponceImpl>
    implements _$$AnalyzeResponceImplCopyWith<$Res> {
  __$$AnalyzeResponceImplCopyWithImpl(
      _$AnalyzeResponceImpl _value, $Res Function(_$AnalyzeResponceImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalyzeResponce
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? suggested_table_name = null,
  }) {
    return _then(_$AnalyzeResponceImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      suggested_table_name: null == suggested_table_name
          ? _value.suggested_table_name
          : suggested_table_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyzeResponceImpl implements _AnalyzeResponce {
  const _$AnalyzeResponceImpl(
      {required this.status, required this.suggested_table_name});

  factory _$AnalyzeResponceImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyzeResponceImplFromJson(json);

  @override
  final String status;
  @override
  final String suggested_table_name;

  @override
  String toString() {
    return 'AnalyzeResponce(status: $status, suggested_table_name: $suggested_table_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyzeResponceImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.suggested_table_name, suggested_table_name) ||
                other.suggested_table_name == suggested_table_name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, suggested_table_name);

  /// Create a copy of AnalyzeResponce
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyzeResponceImplCopyWith<_$AnalyzeResponceImpl> get copyWith =>
      __$$AnalyzeResponceImplCopyWithImpl<_$AnalyzeResponceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyzeResponceImplToJson(
      this,
    );
  }
}

abstract class _AnalyzeResponce implements AnalyzeResponce {
  const factory _AnalyzeResponce(
      {required final String status,
      required final String suggested_table_name}) = _$AnalyzeResponceImpl;

  factory _AnalyzeResponce.fromJson(Map<String, dynamic> json) =
      _$AnalyzeResponceImpl.fromJson;

  @override
  String get status;
  @override
  String get suggested_table_name;

  /// Create a copy of AnalyzeResponce
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalyzeResponceImplCopyWith<_$AnalyzeResponceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
