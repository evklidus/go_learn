import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:golearn/features/course/domain/entities/lesson_entity.dart';

part 'lesson_model.freezed.dart';
part 'lesson_model.g.dart';

@freezed
class LessonModel extends LessonEntity with _$LessonModel {
  const factory LessonModel({
    required String time,
    required String title,
  }) = _LessonModel;

  factory LessonModel.fromJson(Map<String, Object?> json) => _$LessonModelFromJson(json);
}
