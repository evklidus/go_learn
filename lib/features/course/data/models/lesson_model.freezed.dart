// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lesson_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LessonModel _$LessonModelFromJson(Map<String, dynamic> json) {
  return _LessonModel.fromJson(json);
}

/// @nodoc
mixin _$LessonModel {
  String get time => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonModelCopyWith<LessonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonModelCopyWith<$Res> {
  factory $LessonModelCopyWith(
          LessonModel value, $Res Function(LessonModel) then) =
      _$LessonModelCopyWithImpl<$Res>;
  $Res call({String time, String title});
}

/// @nodoc
class _$LessonModelCopyWithImpl<$Res> implements $LessonModelCopyWith<$Res> {
  _$LessonModelCopyWithImpl(this._value, this._then);

  final LessonModel _value;
  // ignore: unused_field
  final $Res Function(LessonModel) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LessonModelCopyWith<$Res>
    implements $LessonModelCopyWith<$Res> {
  factory _$$_LessonModelCopyWith(
          _$_LessonModel value, $Res Function(_$_LessonModel) then) =
      __$$_LessonModelCopyWithImpl<$Res>;
  @override
  $Res call({String time, String title});
}

/// @nodoc
class __$$_LessonModelCopyWithImpl<$Res> extends _$LessonModelCopyWithImpl<$Res>
    implements _$$_LessonModelCopyWith<$Res> {
  __$$_LessonModelCopyWithImpl(
      _$_LessonModel _value, $Res Function(_$_LessonModel) _then)
      : super(_value, (v) => _then(v as _$_LessonModel));

  @override
  _$_LessonModel get _value => super._value as _$_LessonModel;

  @override
  $Res call({
    Object? time = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_LessonModel(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LessonModel implements _LessonModel {
  const _$_LessonModel({required this.time, required this.title});

  factory _$_LessonModel.fromJson(Map<String, dynamic> json) =>
      _$$_LessonModelFromJson(json);

  @override
  final String time;
  @override
  final String title;

  @override
  String toString() {
    return 'LessonModel(time: $time, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessonModel &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_LessonModelCopyWith<_$_LessonModel> get copyWith =>
      __$$_LessonModelCopyWithImpl<_$_LessonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonModelToJson(this);
  }
}

abstract class _LessonModel implements LessonModel {
  const factory _LessonModel(
      {required final String time,
      required final String title}) = _$_LessonModel;

  factory _LessonModel.fromJson(Map<String, dynamic> json) =
      _$_LessonModel.fromJson;

  @override
  String get time;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_LessonModelCopyWith<_$_LessonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
