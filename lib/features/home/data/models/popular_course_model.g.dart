// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PopularCourseModel _$$_PopularCourseModelFromJson(
        Map<String, dynamic> json) =>
    _$_PopularCourseModel(
      id: json['id'] as int,
      imageUrl: json['imageUrl'] as String,
      label: json['label'] as String,
      price: json['price'] as int,
      stars: (json['stars'] as num).toDouble(),
      studentsCount: json['studentsCount'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_PopularCourseModelToJson(
        _$_PopularCourseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'label': instance.label,
      'price': instance.price,
      'stars': instance.stars,
      'studentsCount': instance.studentsCount,
      'title': instance.title,
    };
