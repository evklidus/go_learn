// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mentor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MentorModel _$MentorModelFromJson(Map<String, dynamic> json) {
  return _MentorModel.fromJson(json);
}

/// @nodoc
mixin _$MentorModel {
  String get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MentorModelCopyWith<MentorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentorModelCopyWith<$Res> {
  factory $MentorModelCopyWith(
          MentorModel value, $Res Function(MentorModel) then) =
      _$MentorModelCopyWithImpl<$Res>;
  $Res call({String imageUrl, String name});
}

/// @nodoc
class _$MentorModelCopyWithImpl<$Res> implements $MentorModelCopyWith<$Res> {
  _$MentorModelCopyWithImpl(this._value, this._then);

  final MentorModel _value;
  // ignore: unused_field
  final $Res Function(MentorModel) _then;

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
abstract class _$$_MentorModelCopyWith<$Res>
    implements $MentorModelCopyWith<$Res> {
  factory _$$_MentorModelCopyWith(
          _$_MentorModel value, $Res Function(_$_MentorModel) then) =
      __$$_MentorModelCopyWithImpl<$Res>;
  @override
  $Res call({String imageUrl, String name});
}

/// @nodoc
class __$$_MentorModelCopyWithImpl<$Res> extends _$MentorModelCopyWithImpl<$Res>
    implements _$$_MentorModelCopyWith<$Res> {
  __$$_MentorModelCopyWithImpl(
      _$_MentorModel _value, $Res Function(_$_MentorModel) _then)
      : super(_value, (v) => _then(v as _$_MentorModel));

  @override
  _$_MentorModel get _value => super._value as _$_MentorModel;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_MentorModel(
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
class _$_MentorModel implements _MentorModel {
  const _$_MentorModel({required this.imageUrl, required this.name});

  factory _$_MentorModel.fromJson(Map<String, dynamic> json) =>
      _$$_MentorModelFromJson(json);

  @override
  final String imageUrl;
  @override
  final String name;

  @override
  String toString() {
    return 'MentorModel(imageUrl: $imageUrl, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MentorModel &&
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
  _$$_MentorModelCopyWith<_$_MentorModel> get copyWith =>
      __$$_MentorModelCopyWithImpl<_$_MentorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MentorModelToJson(this);
  }
}

abstract class _MentorModel implements MentorModel {
  const factory _MentorModel(
      {required final String imageUrl,
      required final String name}) = _$_MentorModel;

  factory _MentorModel.fromJson(Map<String, dynamic> json) =
      _$_MentorModel.fromJson;

  @override
  String get imageUrl;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_MentorModelCopyWith<_$_MentorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
