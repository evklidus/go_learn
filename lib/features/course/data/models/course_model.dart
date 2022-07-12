import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:golearn/features/course/data/models/course_mentor_model.dart';
import 'package:golearn/features/course/data/models/section_model.dart';
import 'package:golearn/features/course/data/models/tool_model.dart';
import 'package:golearn/features/course/domain/entities/course_entity.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
class CourseModel extends CourseEntity with _$CourseModel {
  const factory CourseModel({
    required String about,
    required double hours,
    required int id,
    required String imageUrl,
    required String label,
    required int lessonsCount,
    required CourseMentorModel mentor,
    required int oldPrice,
    required int price,
    required int reviewsCount,
    required List<SectionModel> sections,
    required double stars,
    required String studentsCount,
    required String title,
    required List<ToolModel> tools,
  }) = _CourseModel;

  factory CourseModel.fromJson(Map<String, Object?> json) => _$CourseModelFromJson(json);
}
