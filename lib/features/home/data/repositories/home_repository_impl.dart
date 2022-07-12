import 'package:golearn/core/errors/exceptions.dart';
import 'package:golearn/features/home/data/datasources/home_remote_data_source.dart';
import 'package:golearn/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:golearn/features/home/domain/repositories/home_repository.dart';
import 'package:golearn/services/http/network_info.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  HomeRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  getHomeData() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getHomeData();
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
