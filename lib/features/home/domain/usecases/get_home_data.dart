import 'package:golearn/core/usecases/usecase.dart';
import 'package:golearn/features/home/domain/entities/home_entity.dart';
import 'package:golearn/features/home/domain/repositories/home_repository.dart';

class GetHomeData extends UseCase<HomeEntity?> {
  final HomeRepository homeRepository;

  GetHomeData(this.homeRepository);

  @override
  call() async {
    return await homeRepository.getHomeData();
  }
}
