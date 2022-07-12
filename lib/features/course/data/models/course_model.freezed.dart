// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseModel _$CourseModelFromJson(Map<String, dynamic> json) {
  return _CourseModel.fromJson(json);
}

/// @nodoc
mixin _$CourseModel {
  String get about => throw _privateConstructorUsedError;
  double get hours => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  int get lessonsCount => throw _privateConstructorUsedError;
  CourseMentorModel get mentor => throw _privateConstructorUsedError;
  int get oldPrice => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get reviewsCount => throw _privateConstructorUsedError;
  List<SectionModel> get sections => throw _privateConstructorUsedError;
  double get stars => throw _privateConstructorUsedError;
  String get studentsCount => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<ToolModel> get tools => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseModelCopyWith<CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseModelCopyWith<$Res> {
  factory $CourseModelCopyWith(
          CourseModel value, $Res Function(CourseModel) then) =
      _$CourseModelCopyWithImpl<$Res>;
  $Res call(
      {String about,
      double hours,
      int id,
      String imageUrl,
      String label,
      int lessonsCount,
      CourseMentorModel mentor,
      int oldPrice,
      int price,
      int reviewsCount,
      List<SectionModel> sections,
      double stars,
      String studentsCount,
      String title,
      List<ToolModel> tools});

  $CourseMentorModelCopyWith<$Res> get mentor;
}

/// @nodoc
class _$CourseModelCopyWithImpl<$Res> implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._value, this._then);

  final CourseModel _value;
  // ignore: unused_field
  final $Res Function(CourseModel) _then;

  @override
  $Res call({
    Object? about = freezed,
    Object? hours = freezed,
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? label = freezed,
    Object? lessonsCount = freezed,
    Object? mentor = freezed,
    Object? oldPrice = freezed,
    Object? price = freezed,
    Object? reviewsCount = freezed,
    Object? sections = freezed,
    Object? stars = freezed,
    Object? studentsCount = freezed,
    Object? title = freezed,
    Object? tools = freezed,
  }) {
    return _then(_value.copyWith(
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as double,
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
      lessonsCount: lessonsCount == freezed
          ? _value.lessonsCount
          : lessonsCount // ignore: cast_nullable_to_non_nullable
              as int,
      mentor: mentor == freezed
          ? _value.mentor
          : mentor // ignore: cast_nullable_to_non_nullable
              as CourseMentorModel,
      oldPrice: oldPrice == freezed
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      reviewsCount: reviewsCount == freezed
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      sections: sections == freezed
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionModel>,
      stars: stars == freezed
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as double,
      studentsCount: studentsCount == freezed
          ? _value.studentsCount
          : studentsCount // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tools: tools == freezed
          ? _value.tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<ToolModel>,
    ));
  }

  @override
  $CourseMentorModelCopyWith<$Res> get mentor {
    return $CourseMentorModelCopyWith<$Res>(_value.mentor, (value) {
      return _then(_value.copyWith(mentor: value));
    });
  }
}

/// @nodoc
abstract class _$$_CourseModelCopyWith<$Res>
    implements $CourseModelCopyWith<$Res> {
  factory _$$_CourseModelCopyWith(
          _$_CourseModel value, $Res Function(_$_CourseModel) then) =
      __$$_CourseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String about,
      double hours,
      int id,
      String imageUrl,
      String label,
      int lessonsCount,
      CourseMentorModel mentor,
      int oldPrice,
      int price,
      int reviewsCount,
      List<SectionModel> sections,
      double stars,
      String studentsCount,
      String title,
      List<ToolModel> tools});

  @override
  $CourseMentorModelCopyWith<$Res> get mentor;
}

/// @nodoc
class __$$_CourseModelCopyWithImpl<$Res> extends _$CourseModelCopyWithImpl<$Res>
    implements _$$_CourseModelCopyWith<$Res> {
  __$$_CourseModelCopyWithImpl(
      _$_CourseModel _value, $Res Function(_$_CourseModel) _then)
      : super(_value, (v) => _then(v as _$_CourseModel));

  @override
  _$_CourseModel get _value => super._value as _$_CourseModel;

  @override
  $Res call({
    Object? about = freezed,
    Object? hours = freezed,
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? label = freezed,
    Object? lessonsCount = freezed,
    Object? mentor = freezed,
    Object? oldPrice = freezed,
    Object? price = freezed,
    Object? reviewsCount = freezed,
    Object? sections = freezed,
    Object? stars = freezed,
    Object? studentsCount = freezed,
    Object? title = freezed,
    Object? tools = freezed,
  }) {
    return _then(_$_CourseModel(
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as double,
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
      lessonsCount: lessonsCount == freezed
          ? _value.lessonsCount
          : lessonsCount // ignore: cast_nullable_to_non_nullable
              as int,
      mentor: mentor == freezed
          ? _value.mentor
          : mentor // ignore: cast_nullable_to_non_nullable
              as CourseMentorModel,
      oldPrice: oldPrice == freezed
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      reviewsCount: reviewsCount == freezed
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      sections: sections == freezed
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionModel>,
      stars: stars == freezed
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as double,
      studentsCount: studentsCount == freezed
          ? _value.studentsCount
          : studentsCount // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tools: tools == freezed
          ? _value._tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<ToolModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseModel implements _CourseModel {
  const _$_CourseModel(
      {required this.about,
      required this.hours,
      required this.id,
      required this.imageUrl,
      required this.label,
      required this.lessonsCount,
      required this.mentor,
      required this.oldPrice,
      required this.price,
      required this.reviewsCount,
      required final List<SectionModel> sections,
      required this.stars,
      required this.studentsCount,
      required this.title,
      required final List<ToolModel> tools})
      : _sections = sections,
        _tools = tools;

  factory _$_CourseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CourseModelFromJson(json);

  @override
  final String about;
  @override
  final double hours;
  @override
  final int id;
  @override
  final String imageUrl;
  @override
  final String label;
  @override
  final int lessonsCount;
  @override
  final CourseMentorModel mentor;
  @override
  final int oldPrice;
  @override
  final int price;
  @override
  final int reviewsCount;
  final List<SectionModel> _sections;
  @override
  List<SectionModel> get sections {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  final double stars;
  @override
  final String studentsCount;
  @override
  final String title;
  final List<ToolModel> _tools;
  @override
  List<ToolModel> get tools {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tools);
  }

  @override
  String toString() {
    return 'CourseModel(about: $about, hours: $hours, id: $id, imageUrl: $imageUrl, label: $label, lessonsCount: $lessonsCount, mentor: $mentor, oldPrice: $oldPrice, price: $price, reviewsCount: $reviewsCount, sections: $sections, stars: $stars, studentsCount: $studentsCount, title: $title, tools: $tools)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseModel &&
            const DeepCollectionEquality().equals(other.about, about) &&
            const DeepCollectionEquality().equals(other.hours, hours) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality()
                .equals(other.lessonsCount, lessonsCount) &&
            const DeepCollectionEquality().equals(other.mentor, mentor) &&
            const DeepCollectionEquality().equals(other.oldPrice, oldPrice) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.reviewsCount, reviewsCount) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            const DeepCollectionEquality().equals(other.stars, stars) &&
            const DeepCollectionEquality()
                .equals(other.studentsCount, studentsCount) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other._tools, _tools));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(about),
      const DeepCollectionEquality().hash(hours),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(lessonsCount),
      const DeepCollectionEquality().hash(mentor),
      const DeepCollectionEquality().hash(oldPrice),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(reviewsCount),
      const DeepCollectionEquality().hash(_sections),
      const DeepCollectionEquality().hash(stars),
      const DeepCollectionEquality().hash(studentsCount),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(_tools));

  @JsonKey(ignore: true)
  @override
  _$$_CourseModelCopyWith<_$_CourseModel> get copyWith =>
      __$$_CourseModelCopyWithImpl<_$_CourseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseModelToJson(this);
  }
}

abstract class _CourseModel implements CourseModel {
  const factory _CourseModel(
      {required final String about,
      required final double hours,
      required final int id,
      required final String imageUrl,
      required final String label,
      required final int lessonsCount,
      required final CourseMentorModel mentor,
      required final int oldPrice,
      required final int price,
      required final int reviewsCount,
      required final List<SectionModel> sections,
      required final double stars,
      required final String studentsCount,
      required final String title,
      required final List<ToolModel> tools}) = _$_CourseModel;

  factory _CourseModel.fromJson(Map<String, dynamic> json) =
      _$_CourseModel.fromJson;

  @override
  String get about;
  @override
  double get hours;
  @override
  int get id;
  @override
  String get imageUrl;
  @override
  String get label;
  @override
  int get lessonsCount;
  @override
  CourseMentorModel get mentor;
  @override
  int get oldPrice;
  @override
  int get price;
  @override
  int get reviewsCount;
  @override
  List<SectionModel> get sections;
  @override
  double get stars;
  @override
  String get studentsCount;
  @override
  String get title;
  @override
  List<ToolModel> get tools;
  @override
  @JsonKey(ignore: true)
  _$$_CourseModelCopyWith<_$_CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
