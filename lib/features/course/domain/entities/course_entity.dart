import 'package:golearn/features/course/domain/entities/course_mentor_entity.dart';
import 'package:golearn/features/course/domain/entities/section_entity.dart';
import 'package:golearn/features/course/domain/entities/tool_entity.dart';

class CourseEntity {
  final String about;
  final double hours;
  final int id;
  final String imageUrl;
  final String label;
  final int lessonsCount;
  final CourseMentorEntity mentor;
  final int oldPrice;
  final int price;
  final int reviewsCount;
  final List<SectionEntity> sections;
  final double stars;
  final String studentsCount;
  final String title;
  final List<ToolEntity> tools;

  CourseEntity({
    required this.about,
    required this.hours,
    required this.id,
    required this.imageUrl,
    required this.label,
    required this.lessonsCount,
    required this.mentor,
    required this.oldPrice,
    required this.price,
    required this.reviewsCount,
    required this.sections,
    required this.stars,
    required this.studentsCount,
    required this.title,
    required this.tools,
  });
}
