import 'package:golearn/core/stores/entity_store.dart';
import 'package:golearn/features/home/domain/entities/home_entity.dart';
import 'package:golearn/features/home/domain/usecases/get_home_data.dart';
import 'package:golearn/utils/load_params.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore<T> = _HomeStore<T> with _$HomeStore;

abstract class _HomeStore<T> extends EntityStore<HomeEntity> with Store {
  final GetHomeData getHomedata;

  _HomeStore(this.getHomedata);

  @override
  fetchEntity([LoadParams? params]) {
    return getHomedata();
  }
}
