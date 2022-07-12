// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recomendation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecomendationModel _$$_RecomendationModelFromJson(
        Map<String, dynamic> json) =>
    _$_RecomendationModel(
      id: json['id'] as int,
      imageUrl: json['imageUrl'] as String,
      authorName: json['authorName'] as String,
      price: json['price'] as int,
      stars: (json['stars'] as num).toDouble(),
      studentsCount: json['studentsCount'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_RecomendationModelToJson(
        _$_RecomendationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'authorName': instance.authorName,
      'price': instance.price,
      'stars': instance.stars,
      'studentsCount': instance.studentsCount,
      'title': instance.title,
    };
