import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:golearn/features/course/domain/entities/course_mentor_entity.dart';

part 'course_mentor_model.freezed.dart';
part 'course_mentor_model.g.dart';

@freezed
class CourseMentorModel extends CourseMentorEntity with _$CourseMentorModel {
  const factory CourseMentorModel({
    required String imageUrl,
    required String name,
    required String position,
  }) = _CourseMentorModel;

  factory CourseMentorModel.fromJson(Map<String, Object?> json) => _$CourseMentorModelFromJson(json);
}
