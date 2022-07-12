// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SectionModel _$$_SectionModelFromJson(Map<String, dynamic> json) =>
    _$_SectionModel(
      name: json['name'] as String,
      time: json['time'] as String,
      lessons: (json['lessons'] as List<dynamic>)
          .map((e) => LessonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SectionModelToJson(_$_SectionModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'time': instance.time,
      'lessons': instance.lessons.map((e) => e.toJson()).toList(),
    };
