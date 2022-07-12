// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeModel _$$_HomeModelFromJson(Map<String, dynamic> json) => _$_HomeModel(
      popularCourses: (json['popularCourses'] as List<dynamic>)
          .map((e) => PopularCourseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      banners: (json['banners'] as List<dynamic>)
          .map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mentors: (json['mentors'] as List<dynamic>)
          .map((e) => MentorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      recomendations: (json['recomendations'] as List<dynamic>)
          .map((e) => RecomendationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HomeModelToJson(_$_HomeModel instance) =>
    <String, dynamic>{
      'popularCourses': instance.popularCourses.map((e) => e.toJson()).toList(),
      'banners': instance.banners.map((e) => e.toJson()).toList(),
      'mentors': instance.mentors.map((e) => e.toJson()).toList(),
      'recomendations': instance.recomendations.map((e) => e.toJson()).toList(),
    };
