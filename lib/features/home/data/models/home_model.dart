import 'package:golearn/features/home/data/models/banner_model.dart';
import 'package:golearn/features/home/data/models/mentor_model.dart';
import 'package:golearn/features/home/data/models/popular_course_model.dart';
import 'package:golearn/features/home/data/models/recomendation_model.dart';
import 'package:golearn/features/home/domain/entities/home_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeModel extends HomeEntity with _$HomeModel {
  const factory HomeModel({
    required List<PopularCourseModel> popularCourses,
    required List<BannerModel> banners,
    required List<MentorModel> mentors,
    required List<RecomendationModel> recomendations,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, Object?> json) => _$HomeModelFromJson(json);
}
