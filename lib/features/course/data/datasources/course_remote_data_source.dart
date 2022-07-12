import 'package:golearn/features/course/data/models/course_model.dart';
import 'package:golearn/services/http/rest_client.dart';

abstract class CourseRemoteDataSource {
  Future<CourseModel?> getCourse(int id);
}

class CourseRemoteDataSourceImpl implements CourseRemoteDataSource {
  final RestClient client;

  CourseRemoteDataSourceImpl(this.client);

  @override
  Future<CourseModel?> getCourse(int id) async {
    return await client.getCourse(id);
  }
}
