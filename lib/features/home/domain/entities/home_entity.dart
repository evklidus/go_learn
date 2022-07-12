import 'package:golearn/features/home/domain/entities/banner_entity.dart';
import 'package:golearn/features/home/domain/entities/mentor_entity.dart';
import 'package:golearn/features/home/domain/entities/popular_course_entity.dart';
import 'package:golearn/features/home/domain/entities/recomendation_entity.dart';

class HomeEntity {
  final List<PopularCourseEntity> popularCourses;
  final List<BannerEntity> banners;
  final List<MentorEntity> mentors;
  final List<RecomendationEntity> recomendations;

  HomeEntity({
    required this.popularCourses,
    required this.banners,
    required this.mentors,
    required this.recomendations,
  });
}
