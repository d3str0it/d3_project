// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analyze_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnalyzeResponse _$AnalyzeResponseFromJson(Map<String, dynamic> json) {
  return _AnalyzeResponse.fromJson(json);
}

/// @nodoc
mixin _$AnalyzeResponse {
  List<DataUnit> get data => throw _privateConstructorUsedError;

  /// Serializes this AnalyzeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnalyzeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalyzeResponseCopyWith<AnalyzeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyzeResponseCopyWith<$Res> {
  factory $AnalyzeResponseCopyWith(
          AnalyzeResponse value, $Res Function(AnalyzeResponse) then) =
      _$AnalyzeResponseCopyWithImpl<$Res, AnalyzeResponse>;
  @useResult
  $Res call({List<DataUnit> data});
}

/// @nodoc
class _$AnalyzeResponseCopyWithImpl<$Res, $Val extends AnalyzeResponse>
    implements $AnalyzeResponseCopyWith<$Res> {
  _$AnalyzeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalyzeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataUnit>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyzeResponseImplCopyWith<$Res>
    implements $AnalyzeResponseCopyWith<$Res> {
  factory _$$AnalyzeResponseImplCopyWith(_$AnalyzeResponseImpl value,
          $Res Function(_$AnalyzeResponseImpl) then) =
      __$$AnalyzeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DataUnit> data});
}

/// @nodoc
class __$$AnalyzeResponseImplCopyWithImpl<$Res>
    extends _$AnalyzeResponseCopyWithImpl<$Res, _$AnalyzeResponseImpl>
    implements _$$AnalyzeResponseImplCopyWith<$Res> {
  __$$AnalyzeResponseImplCopyWithImpl(
      _$AnalyzeResponseImpl _value, $Res Function(_$AnalyzeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalyzeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AnalyzeResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataUnit>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyzeResponseImpl implements _AnalyzeResponse {
  const _$AnalyzeResponseImpl({required final List<DataUnit> data})
      : _data = data;

  factory _$AnalyzeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyzeResponseImplFromJson(json);

  final List<DataUnit> _data;
  @override
  List<DataUnit> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AnalyzeResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyzeResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of AnalyzeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyzeResponseImplCopyWith<_$AnalyzeResponseImpl> get copyWith =>
      __$$AnalyzeResponseImplCopyWithImpl<_$AnalyzeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyzeResponseImplToJson(
      this,
    );
  }
}

abstract class _AnalyzeResponse implements AnalyzeResponse {
  const factory _AnalyzeResponse({required final List<DataUnit> data}) =
      _$AnalyzeResponseImpl;

  factory _AnalyzeResponse.fromJson(Map<String, dynamic> json) =
      _$AnalyzeResponseImpl.fromJson;

  @override
  List<DataUnit> get data;

  /// Create a copy of AnalyzeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalyzeResponseImplCopyWith<_$AnalyzeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
