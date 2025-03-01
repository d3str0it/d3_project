// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analyze_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnalyzeRequestModel _$AnalyzeRequestModelFromJson(Map<String, dynamic> json) {
  return _AnalyzeRequestModel.fromJson(json);
}

/// @nodoc
mixin _$AnalyzeRequestModel {
  String get file_path => throw _privateConstructorUsedError;

  /// Serializes this AnalyzeRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnalyzeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalyzeRequestModelCopyWith<AnalyzeRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyzeRequestModelCopyWith<$Res> {
  factory $AnalyzeRequestModelCopyWith(
          AnalyzeRequestModel value, $Res Function(AnalyzeRequestModel) then) =
      _$AnalyzeRequestModelCopyWithImpl<$Res, AnalyzeRequestModel>;
  @useResult
  $Res call({String file_path});
}

/// @nodoc
class _$AnalyzeRequestModelCopyWithImpl<$Res, $Val extends AnalyzeRequestModel>
    implements $AnalyzeRequestModelCopyWith<$Res> {
  _$AnalyzeRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalyzeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file_path = null,
  }) {
    return _then(_value.copyWith(
      file_path: null == file_path
          ? _value.file_path
          : file_path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyzeRequestModelImplCopyWith<$Res>
    implements $AnalyzeRequestModelCopyWith<$Res> {
  factory _$$AnalyzeRequestModelImplCopyWith(_$AnalyzeRequestModelImpl value,
          $Res Function(_$AnalyzeRequestModelImpl) then) =
      __$$AnalyzeRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String file_path});
}

/// @nodoc
class __$$AnalyzeRequestModelImplCopyWithImpl<$Res>
    extends _$AnalyzeRequestModelCopyWithImpl<$Res, _$AnalyzeRequestModelImpl>
    implements _$$AnalyzeRequestModelImplCopyWith<$Res> {
  __$$AnalyzeRequestModelImplCopyWithImpl(_$AnalyzeRequestModelImpl _value,
      $Res Function(_$AnalyzeRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalyzeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file_path = null,
  }) {
    return _then(_$AnalyzeRequestModelImpl(
      file_path: null == file_path
          ? _value.file_path
          : file_path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyzeRequestModelImpl implements _AnalyzeRequestModel {
  const _$AnalyzeRequestModelImpl({required this.file_path});

  factory _$AnalyzeRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyzeRequestModelImplFromJson(json);

  @override
  final String file_path;

  @override
  String toString() {
    return 'AnalyzeRequestModel(file_path: $file_path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyzeRequestModelImpl &&
            (identical(other.file_path, file_path) ||
                other.file_path == file_path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file_path);

  /// Create a copy of AnalyzeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyzeRequestModelImplCopyWith<_$AnalyzeRequestModelImpl> get copyWith =>
      __$$AnalyzeRequestModelImplCopyWithImpl<_$AnalyzeRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyzeRequestModelImplToJson(
      this,
    );
  }
}

abstract class _AnalyzeRequestModel implements AnalyzeRequestModel {
  const factory _AnalyzeRequestModel({required final String file_path}) =
      _$AnalyzeRequestModelImpl;

  factory _AnalyzeRequestModel.fromJson(Map<String, dynamic> json) =
      _$AnalyzeRequestModelImpl.fromJson;

  @override
  String get file_path;

  /// Create a copy of AnalyzeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalyzeRequestModelImplCopyWith<_$AnalyzeRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
