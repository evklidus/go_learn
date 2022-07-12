// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'banner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) {
  return _BannerModel.fromJson(json);
}

/// @nodoc
mixin _$BannerModel {
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerModelCopyWith<BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerModelCopyWith<$Res> {
  factory $BannerModelCopyWith(
          BannerModel value, $Res Function(BannerModel) then) =
      _$BannerModelCopyWithImpl<$Res>;
  $Res call({String imageUrl});
}

/// @nodoc
class _$BannerModelCopyWithImpl<$Res> implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._value, this._then);

  final BannerModel _value;
  // ignore: unused_field
  final $Res Function(BannerModel) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_BannerModelCopyWith<$Res>
    implements $BannerModelCopyWith<$Res> {
  factory _$$_BannerModelCopyWith(
          _$_BannerModel value, $Res Function(_$_BannerModel) then) =
      __$$_BannerModelCopyWithImpl<$Res>;
  @override
  $Res call({String imageUrl});
}

/// @nodoc
class __$$_BannerModelCopyWithImpl<$Res> extends _$BannerModelCopyWithImpl<$Res>
    implements _$$_BannerModelCopyWith<$Res> {
  __$$_BannerModelCopyWithImpl(
      _$_BannerModel _value, $Res Function(_$_BannerModel) _then)
      : super(_value, (v) => _then(v as _$_BannerModel));

  @override
  _$_BannerModel get _value => super._value as _$_BannerModel;

  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_$_BannerModel(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BannerModel implements _BannerModel {
  const _$_BannerModel({required this.imageUrl});

  factory _$_BannerModel.fromJson(Map<String, dynamic> json) =>
      _$$_BannerModelFromJson(json);

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'BannerModel(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BannerModel &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$$_BannerModelCopyWith<_$_BannerModel> get copyWith =>
      __$$_BannerModelCopyWithImpl<_$_BannerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannerModelToJson(this);
  }
}

abstract class _BannerModel implements BannerModel {
  const factory _BannerModel({required final String imageUrl}) = _$_BannerModel;

  factory _BannerModel.fromJson(Map<String, dynamic> json) =
      _$_BannerModel.fromJson;

  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_BannerModelCopyWith<_$_BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
