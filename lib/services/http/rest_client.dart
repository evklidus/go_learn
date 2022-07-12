import 'package:golearn/core/constants/string_constants.dart';
import 'package:golearn/features/course/data/models/course_model.dart';
import 'package:golearn/features/home/data/models/home_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: StringConstants.baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET(StringConstants.homeGet)
  Future<HomeModel?> getHomeData();

  @GET(StringConstants.courseGet)
  Future<CourseModel?> getCourse(@Path('id') int id);

  // @GET(StringConstants.fullProgramGetUrl)
  // Future<ProgramPageModel?> getProgramPage(@Path(StringConstants.fullProgramGetPath) int id);
}
