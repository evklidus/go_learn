import 'package:golearn/core/stores/entity_store.dart';
import 'package:golearn/features/course/domain/entities/course_entity.dart';
import 'package:golearn/features/course/domain/usecases/get_course.dart';
import 'package:golearn/utils/load_params.dart';
import 'package:mobx/mobx.dart';

part 'course_store.g.dart';

class CourseStore<T> = _CourseStore<T> with _$CourseStore;

abstract class _CourseStore<T> extends EntityStore<CourseEntity> with Store {
  final GetCourse getCourse;

  _CourseStore(this.getCourse);

  @override
  fetchEntity([LoadParams? params]) {
    return getCourse(CourseParams(params?.params!['id'] as int));
  }

  loadCourse(int id) async {
    await loadEntity(LoadParams({'id': id}));
  }
}
