import 'package:golearn/core/errors/exceptions.dart';
import 'package:golearn/features/course/data/datasources/course_remote_data_source.dart';
import 'package:golearn/features/course/domain/repositories/course_repository.dart';
import 'package:golearn/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:golearn/services/http/network_info.dart';

class CourseRepositoryImpl implements CourseRepository {
  final CourseRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  CourseRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  getCourse(int id) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getCourse(id);
        return Right(remoteData);
      } on ServerException {
        return Left(ServerFailure());
      } catch (error) {
        return Left(UnknownFailure());
      }
    } else {
      return Left(InternetConntectionFailure());
    }
  }
}
