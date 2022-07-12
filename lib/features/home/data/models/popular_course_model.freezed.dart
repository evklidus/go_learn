// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'popular_course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PopularCourseModel _$PopularCourseModelFromJson(Map<String, dynamic> json) {
  return _PopularCourseModel.fromJson(json);
}

/// @nodoc
mixin _$PopularCourseModel {
  int get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  double get stars => throw _privateConstructorUsedError;
  int get studentsCount => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularCourseModelCopyWith<PopularCourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularCourseModelCopyWith<$Res> {
  factory $PopularCourseModelCopyWith(
          PopularCourseModel value, $Res Function(PopularCourseModel) then) =
      _$PopularCourseModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String imageUrl,
      String label,
      int price,
      double stars,
      int studentsCount,
      String title});
}

/// @nodoc
class _$PopularCourseModelCopyWithImpl<$Res>
    implements $PopularCourseModelCopyWith<$Res> {
  _$PopularCourseModelCopyWithImpl(this._value, this._then);

  final PopularCourseModel _value;
  // ignore: unused_field
  final $Res Function(PopularCourseModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? label = freezed,
    Object? price = freezed,
    Object? stars = freezed,
    Object? studentsCount = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      stars: stars == freezed
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as double,
      studentsCount: studentsCount == freezed
          ? _value.studentsCount
          : studentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PopularCourseModelCopyWith<$Res>
    implements $PopularCourseModelCopyWith<$Res> {
  factory _$$_PopularCourseModelCopyWith(_$_PopularCourseModel value,
          $Res Function(_$_PopularCourseModel) then) =
      __$$_PopularCourseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String imageUrl,
      String label,
      int price,
      double stars,
      int studentsCount,
      String title});
}

/// @nodoc
class __$$_PopularCourseModelCopyWithImpl<$Res>
    extends _$PopularCourseModelCopyWithImpl<$Res>
    implements _$$_PopularCourseModelCopyWith<$Res> {
  __$$_PopularCourseModelCopyWithImpl(
      _$_PopularCourseModel _value, $Res Function(_$_PopularCourseModel) _then)
      : super(_value, (v) => _then(v as _$_PopularCourseModel));

  @override
  _$_PopularCourseModel get _value => super._value as _$_PopularCourseModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? label = freezed,
    Object? price = freezed,
    Object? stars = freezed,
    Object? studentsCount = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_PopularCourseModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      stars: stars == freezed
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as double,
      studentsCount: studentsCount == freezed
          ? _value.studentsCount
          : studentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PopularCourseModel implements _PopularCourseModel {
  const _$_PopularCourseModel(
      {required this.id,
      required this.imageUrl,
      required this.label,
      required this.price,
      required this.stars,
      required this.studentsCount,
      required this.title});

  factory _$_PopularCourseModel.fromJson(Map<String, dynamic> json) =>
      _$$_PopularCourseModelFromJson(json);

  @override
  final int id;
  @override
  final String imageUrl;
  @override
  final String label;
  @override
  final int price;
  @override
  final double stars;
  @override
  final int studentsCount;
  @override
  final String title;

  @override
  String toString() {
    return 'PopularCourseModel(id: $id, imageUrl: $imageUrl, label: $label, price: $price, stars: $stars, studentsCount: $studentsCount, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PopularCourseModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.stars, stars) &&
            const DeepCollectionEquality()
                .equals(other.studentsCount, studentsCount) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(stars),
      const DeepCollectionEquality().hash(studentsCount),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_PopularCourseModelCopyWith<_$_PopularCourseModel> get copyWith =>
      __$$_PopularCourseModelCopyWithImpl<_$_PopularCourseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PopularCourseModelToJson(this);
  }
}

abstract class _PopularCourseModel implements PopularCourseModel {
  const factory _PopularCourseModel(
      {required final int id,
      required final String imageUrl,
      required final String label,
      required final int price,
      required final double stars,
      required final int studentsCount,
      required final String title}) = _$_PopularCourseModel;

  factory _PopularCourseModel.fromJson(Map<String, dynamic> json) =
      _$_PopularCourseModel.fromJson;

  @override
  int get id;
  @override
  String get imageUrl;
  @override
  String get label;
  @override
  int get price;
  @override
  double get stars;
  @override
  int get studentsCount;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_PopularCourseModelCopyWith<_$_PopularCourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
