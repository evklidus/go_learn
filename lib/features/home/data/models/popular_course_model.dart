import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:golearn/features/home/domain/entities/popular_course_entity.dart';

part 'popular_course_model.freezed.dart';
part 'popular_course_model.g.dart';

@freezed
class PopularCourseModel extends PopularCourseEntity with _$PopularCourseModel {
  const factory PopularCourseModel({
    required int id,
    required String imageUrl,
    required String label,
    required int price,
    required double stars,
    required int studentsCount,
    required String title,
  }) = _PopularCourseModel;

  factory PopularCourseModel.fromJson(Map<String, Object?> json) => _$PopularCourseModelFromJson(json);
}
