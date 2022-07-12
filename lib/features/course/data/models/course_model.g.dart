// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseModel _$$_CourseModelFromJson(Map<String, dynamic> json) =>
    _$_CourseModel(
      about: json['about'] as String,
      hours: (json['hours'] as num).toDouble(),
      id: json['id'] as int,
      imageUrl: json['imageUrl'] as String,
      label: json['label'] as String,
      lessonsCount: json['lessonsCount'] as int,
      mentor:
          CourseMentorModel.fromJson(json['mentor'] as Map<String, dynamic>),
      oldPrice: json['oldPrice'] as int,
      price: json['price'] as int,
      reviewsCount: json['reviewsCount'] as int,
      sections: (json['sections'] as List<dynamic>)
          .map((e) => SectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      stars: (json['stars'] as num).toDouble(),
      studentsCount: json['studentsCount'] as String,
      title: json['title'] as String,
      tools: (json['tools'] as List<dynamic>)
          .map((e) => ToolModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CourseModelToJson(_$_CourseModel instance) =>
    <String, dynamic>{
      'about': instance.about,
      'hours': instance.hours,
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'label': instance.label,
      'lessonsCount': instance.lessonsCount,
      'mentor': instance.mentor.toJson(),
      'oldPrice': instance.oldPrice,
      'price': instance.price,
      'reviewsCount': instance.reviewsCount,
      'sections': instance.sections.map((e) => e.toJson()).toList(),
      'stars': instance.stars,
      'studentsCount': instance.studentsCount,
      'title': instance.title,
      'tools': instance.tools.map((e) => e.toJson()).toList(),
    };
