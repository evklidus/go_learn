// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  List<PopularCourseModel> get popularCourses =>
      throw _privateConstructorUsedError;
  List<BannerModel> get banners => throw _privateConstructorUsedError;
  List<MentorModel> get mentors => throw _privateConstructorUsedError;
  List<RecomendationModel> get recomendations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res>;
  $Res call(
      {List<PopularCourseModel> popularCourses,
      List<BannerModel> banners,
      List<MentorModel> mentors,
      List<RecomendationModel> recomendations});
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res> implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  final HomeModel _value;
  // ignore: unused_field
  final $Res Function(HomeModel) _then;

  @override
  $Res call({
    Object? popularCourses = freezed,
    Object? banners = freezed,
    Object? mentors = freezed,
    Object? recomendations = freezed,
  }) {
    return _then(_value.copyWith(
      popularCourses: popularCourses == freezed
          ? _value.popularCourses
          : popularCourses // ignore: cast_nullable_to_non_nullable
              as List<PopularCourseModel>,
      banners: banners == freezed
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
      mentors: mentors == freezed
          ? _value.mentors
          : mentors // ignore: cast_nullable_to_non_nullable
              as List<MentorModel>,
      recomendations: recomendations == freezed
          ? _value.recomendations
          : recomendations // ignore: cast_nullable_to_non_nullable
              as List<RecomendationModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeModelCopyWith<$Res> implements $HomeModelCopyWith<$Res> {
  factory _$$_HomeModelCopyWith(
          _$_HomeModel value, $Res Function(_$_HomeModel) then) =
      __$$_HomeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<PopularCourseModel> popularCourses,
      List<BannerModel> banners,
      List<MentorModel> mentors,
      List<RecomendationModel> recomendations});
}

/// @nodoc
class __$$_HomeModelCopyWithImpl<$Res> extends _$HomeModelCopyWithImpl<$Res>
    implements _$$_HomeModelCopyWith<$Res> {
  __$$_HomeModelCopyWithImpl(
      _$_HomeModel _value, $Res Function(_$_HomeModel) _then)
      : super(_value, (v) => _then(v as _$_HomeModel));

  @override
  _$_HomeModel get _value => super._value as _$_HomeModel;

  @override
  $Res call({
    Object? popularCourses = freezed,
    Object? banners = freezed,
    Object? mentors = freezed,
    Object? recomendations = freezed,
  }) {
    return _then(_$_HomeModel(
      popularCourses: popularCourses == freezed
          ? _value._popularCourses
          : popularCourses // ignore: cast_nullable_to_non_nullable
              as List<PopularCourseModel>,
      banners: banners == freezed
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
      mentors: mentors == freezed
          ? _value._mentors
          : mentors // ignore: cast_nullable_to_non_nullable
              as List<MentorModel>,
      recomendations: recomendations == freezed
          ? _value._recomendations
          : recomendations // ignore: cast_nullable_to_non_nullable
              as List<RecomendationModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeModel implements _HomeModel {
  const _$_HomeModel(
      {required final List<PopularCourseModel> popularCourses,
      required final List<BannerModel> banners,
      required final List<MentorModel> mentors,
      required final List<RecomendationModel> recomendations})
      : _popularCourses = popularCourses,
        _banners = banners,
        _mentors = mentors,
        _recomendations = recomendations;

  factory _$_HomeModel.fromJson(Map<String, dynamic> json) =>
      _$$_HomeModelFromJson(json);

  final List<PopularCourseModel> _popularCourses;
  @override
  List<PopularCourseModel> get popularCourses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularCourses);
  }

  final List<BannerModel> _banners;
  @override
  List<BannerModel> get banners {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banners);
  }

  final List<MentorModel> _mentors;
  @override
  List<MentorModel> get mentors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentors);
  }

  final List<RecomendationModel> _recomendations;
  @override
  List<RecomendationModel> get recomendations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recomendations);
  }

  @override
  String toString() {
    return 'HomeModel(popularCourses: $popularCourses, banners: $banners, mentors: $mentors, recomendations: $recomendations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeModel &&
            const DeepCollectionEquality()
                .equals(other._popularCourses, _popularCourses) &&
            const DeepCollectionEquality().equals(other._banners, _banners) &&
            const DeepCollectionEquality().equals(other._mentors, _mentors) &&
            const DeepCollectionEquality()
                .equals(other._recomendations, _recomendations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_popularCourses),
      const DeepCollectionEquality().hash(_banners),
      const DeepCollectionEquality().hash(_mentors),
      const DeepCollectionEquality().hash(_recomendations));

  @JsonKey(ignore: true)
  @override
  _$$_HomeModelCopyWith<_$_HomeModel> get copyWith =>
      __$$_HomeModelCopyWithImpl<_$_HomeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeModelToJson(this);
  }
}

abstract class _HomeModel implements HomeModel {
  const factory _HomeModel(
      {required final List<PopularCourseModel> popularCourses,
      required final List<BannerModel> banners,
      required final List<MentorModel> mentors,
      required final List<RecomendationModel> recomendations}) = _$_HomeModel;

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$_HomeModel.fromJson;

  @override
  List<PopularCourseModel> get popularCourses;
  @override
  List<BannerModel> get banners;
  @override
  List<MentorModel> get mentors;
  @override
  List<RecomendationModel> get recomendations;
  @override
  @JsonKey(ignore: true)
  _$$_HomeModelCopyWith<_$_HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
