import 'package:dartz/dartz.dart';
import 'package:golearn/core/errors/failures.dart';
import 'package:golearn/features/home/domain/entities/home_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeEntity?>> getHomeData();
}
