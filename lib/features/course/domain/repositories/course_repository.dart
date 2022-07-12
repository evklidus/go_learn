import 'package:dartz/dartz.dart';
import 'package:golearn/core/errors/failures.dart';
import 'package:golearn/features/course/domain/entities/course_entity.dart';

abstract class CourseRepository {
  Future<Either<Failure, CourseEntity?>> getCourse(int id);
}
