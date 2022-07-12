// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recomendation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecomendationModel _$RecomendationModelFromJson(Map<String, dynamic> json) {
  return _RecomendationModel.fromJson(json);
}

/// @nodoc
mixin _$RecomendationModel {
  int get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get authorName => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  double get stars => throw _privateConstructorUsedError;
  int get studentsCount => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecomendationModelCopyWith<RecomendationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecomendationModelCopyWith<$Res> {
  factory $RecomendationModelCopyWith(
          RecomendationModel value, $Res Function(RecomendationModel) then) =
      _$RecomendationModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String imageUrl,
      String authorName,
      int price,
      double stars,
      int studentsCount,
      String title});
}

/// @nodoc
class _$RecomendationModelCopyWithImpl<$Res>
    implements $RecomendationModelCopyWith<$Res> {
  _$RecomendationModelCopyWithImpl(this._value, this._then);

  final RecomendationModel _value;
  // ignore: unused_field
  final $Res Function(RecomendationModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? authorName = freezed,
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
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_RecomendationModelCopyWith<$Res>
    implements $RecomendationModelCopyWith<$Res> {
  factory _$$_RecomendationModelCopyWith(_$_RecomendationModel value,
          $Res Function(_$_RecomendationModel) then) =
      __$$_RecomendationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String imageUrl,
      String authorName,
      int price,
      double stars,
      int studentsCount,
      String title});
}

/// @nodoc
class __$$_RecomendationModelCopyWithImpl<$Res>
    extends _$RecomendationModelCopyWithImpl<$Res>
    implements _$$_RecomendationModelCopyWith<$Res> {
  __$$_RecomendationModelCopyWithImpl(
      _$_RecomendationModel _value, $Res Function(_$_RecomendationModel) _then)
      : super(_value, (v) => _then(v as _$_RecomendationModel));

  @override
  _$_RecomendationModel get _value => super._value as _$_RecomendationModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? authorName = freezed,
    Object? price = freezed,
    Object? stars = freezed,
    Object? studentsCount = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_RecomendationModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
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
class _$_RecomendationModel implements _RecomendationModel {
  const _$_RecomendationModel(
      {required this.id,
      required this.imageUrl,
      required this.authorName,
      required this.price,
      required this.stars,
      required this.studentsCount,
      required this.title});

  factory _$_RecomendationModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecomendationModelFromJson(json);

  @override
  final int id;
  @override
  final String imageUrl;
  @override
  final String authorName;
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
    return 'RecomendationModel(id: $id, imageUrl: $imageUrl, authorName: $authorName, price: $price, stars: $stars, studentsCount: $studentsCount, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecomendationModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.authorName, authorName) &&
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
      const DeepCollectionEquality().hash(authorName),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(stars),
      const DeepCollectionEquality().hash(studentsCount),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_RecomendationModelCopyWith<_$_RecomendationModel> get copyWith =>
      __$$_RecomendationModelCopyWithImpl<_$_RecomendationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecomendationModelToJson(this);
  }
}

abstract class _RecomendationModel implements RecomendationModel {
  const factory _RecomendationModel(
      {required final int id,
      required final String imageUrl,
      required final String authorName,
      required final int price,
      required final double stars,
      required final int studentsCount,
      required final String title}) = _$_RecomendationModel;

  factory _RecomendationModel.fromJson(Map<String, dynamic> json) =
      _$_RecomendationModel.fromJson;

  @override
  int get id;
  @override
  String get imageUrl;
  @override
  String get authorName;
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
  _$$_RecomendationModelCopyWith<_$_RecomendationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
