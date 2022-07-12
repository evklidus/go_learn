// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tool_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ToolModel _$ToolModelFromJson(Map<String, dynamic> json) {
  return _ToolModel.fromJson(json);
}

/// @nodoc
mixin _$ToolModel {
  String get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToolModelCopyWith<ToolModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToolModelCopyWith<$Res> {
  factory $ToolModelCopyWith(ToolModel value, $Res Function(ToolModel) then) =
      _$ToolModelCopyWithImpl<$Res>;
  $Res call({String imageUrl, String name});
}

/// @nodoc
class _$ToolModelCopyWithImpl<$Res> implements $ToolModelCopyWith<$Res> {
  _$ToolModelCopyWithImpl(this._value, this._then);

  final ToolModel _value;
  // ignore: unused_field
  final $Res Function(ToolModel) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ToolModelCopyWith<$Res> implements $ToolModelCopyWith<$Res> {
  factory _$$_ToolModelCopyWith(
          _$_ToolModel value, $Res Function(_$_ToolModel) then) =
      __$$_ToolModelCopyWithImpl<$Res>;
  @override
  $Res call({String imageUrl, String name});
}

/// @nodoc
class __$$_ToolModelCopyWithImpl<$Res> extends _$ToolModelCopyWithImpl<$Res>
    implements _$$_ToolModelCopyWith<$Res> {
  __$$_ToolModelCopyWithImpl(
      _$_ToolModel _value, $Res Function(_$_ToolModel) _then)
      : super(_value, (v) => _then(v as _$_ToolModel));

  @override
  _$_ToolModel get _value => super._value as _$_ToolModel;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ToolModel(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ToolModel implements _ToolModel {
  const _$_ToolModel({required this.imageUrl, required this.name});

  factory _$_ToolModel.fromJson(Map<String, dynamic> json) =>
      _$$_ToolModelFromJson(json);

  @override
  final String imageUrl;
  @override
  final String name;

  @override
  String toString() {
    return 'ToolModel(imageUrl: $imageUrl, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToolModel &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_ToolModelCopyWith<_$_ToolModel> get copyWith =>
      __$$_ToolModelCopyWithImpl<_$_ToolModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ToolModelToJson(this);
  }
}

abstract class _ToolModel implements ToolModel {
  const factory _ToolModel(
      {required final String imageUrl,
      required final String name}) = _$_ToolModel;

  factory _ToolModel.fromJson(Map<String, dynamic> json) =
      _$_ToolModel.fromJson;

  @override
  String get imageUrl;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ToolModelCopyWith<_$_ToolModel> get copyWith =>
      throw _privateConstructorUsedError;
}
