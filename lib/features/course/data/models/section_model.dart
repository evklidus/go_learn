import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:golearn/features/course/data/models/lesson_model.dart';
import 'package:golearn/features/course/domain/entities/section_entity.dart';

part 'section_model.freezed.dart';
part 'section_model.g.dart';

@freezed
class SectionModel extends SectionEntity with _$SectionModel {
  const factory SectionModel({
    required String name,
    required String time,
    required List<LessonModel> lessons,
  }) = _SectionModel;

  factory SectionModel.fromJson(Map<String, Object?> json) => _$SectionModelFromJson(json);
}
