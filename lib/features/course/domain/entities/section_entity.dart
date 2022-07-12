import 'package:golearn/features/course/domain/entities/lesson_entity.dart';

class SectionEntity {
  final String name;
  final String time;
  final List<LessonEntity> lessons;

  SectionEntity({
    required this.name,
    required this.time,
    required this.lessons,
  });
}
