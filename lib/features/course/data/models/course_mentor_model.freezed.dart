// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_mentor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseMentorModel _$CourseMentorModelFromJson(Map<String, dynamic> json) {
  return _CourseMentorModel.fromJson(json);
}

/// @nodoc
mixin _$CourseMentorModel {
  String get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseMentorModelCopyWith<CourseMentorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseMentorModelCopyWith<$Res> {
  factory $CourseMentorModelCopyWith(
          CourseMentorModel value, $Res Function(CourseMentorModel) then) =
      _$CourseMentorModelCopyWithImpl<$Res>;
  $Res call({String imageUrl, String name, String position});
}

/// @nodoc
class _$CourseMentorModelCopyWithImpl<$Res>
    implements $CourseMentorModelCopyWith<$Res> {
  _$CourseMentorModelCopyWithImpl(this._value, this._then);

  final CourseMentorModel _value;
  // ignore: unused_field
  final $Res Function(CourseMentorModel) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? position = freezed,
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
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CourseMentorModelCopyWith<$Res>
    implements $CourseMentorModelCopyWith<$Res> {
  factory _$$_CourseMentorModelCopyWith(_$_CourseMentorModel value,
          $Res Function(_$_CourseMentorModel) then) =
      __$$_CourseMentorModelCopyWithImpl<$Res>;
  @override
  $Res call({String imageUrl, String name, String position});
}

/// @nodoc
class __$$_CourseMentorModelCopyWithImpl<$Res>
    extends _$CourseMentorModelCopyWithImpl<$Res>
    implements _$$_CourseMentorModelCopyWith<$Res> {
  __$$_CourseMentorModelCopyWithImpl(
      _$_CourseMentorModel _value, $Res Function(_$_CourseMentorModel) _then)
      : super(_value, (v) => _then(v as _$_CourseMentorModel));

  @override
  _$_CourseMentorModel get _value => super._value as _$_CourseMentorModel;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? position = freezed,
  }) {
    return _then(_$_CourseMentorModel(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseMentorModel implements _CourseMentorModel {
  const _$_CourseMentorModel(
      {required this.imageUrl, required this.name, required this.position});

  factory _$_CourseMentorModel.fromJson(Map<String, dynamic> json) =>
      _$$_CourseMentorModelFromJson(json);

  @override
  final String imageUrl;
  @override
  final String name;
  @override
  final String position;

  @override
  String toString() {
    return 'CourseMentorModel(imageUrl: $imageUrl, name: $name, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseMentorModel &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  _$$_CourseMentorModelCopyWith<_$_CourseMentorModel> get copyWith =>
      __$$_CourseMentorModelCopyWithImpl<_$_CourseMentorModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseMentorModelToJson(this);
  }
}

abstract class _CourseMentorModel implements CourseMentorModel {
  const factory _CourseMentorModel(
      {required final String imageUrl,
      required final String name,
      required final String position}) = _$_CourseMentorModel;

  factory _CourseMentorModel.fromJson(Map<String, dynamic> json) =
      _$_CourseMentorModel.fromJson;

  @override
  String get imageUrl;
  @override
  String get name;
  @override
  String get position;
  @override
  @JsonKey(ignore: true)
  _$$_CourseMentorModelCopyWith<_$_CourseMentorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
