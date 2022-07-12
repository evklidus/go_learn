import 'package:golearn/core/usecases/usecase.dart';
import 'package:golearn/features/course/domain/entities/course_entity.dart';
import 'package:golearn/features/course/domain/repositories/course_repository.dart';

class GetCourse extends UseCaseWithParams<CourseEntity?, CourseParams> {
  final CourseRepository courseRepository;

  GetCourse(this.courseRepository);

  @override
  call(CourseParams params) async {
    return await courseRepository.getCourse(params.id);
  }
}

class CourseParams {
  final int id;

  CourseParams(this.id);
}
