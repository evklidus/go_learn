import 'package:golearn/features/home/data/models/home_model.dart';
import 'package:golearn/services/http/rest_client.dart';

abstract class HomeRemoteDataSource {
  Future<HomeModel?> getHomeData();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final RestClient client;

  HomeRemoteDataSourceImpl(this.client);

  @override
  Future<HomeModel?> getHomeData() async {
    return await client.getHomeData();
  }
}
