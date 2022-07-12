import 'package:flutter/material.dart';
import 'package:golearn/core/builders/entity_builder.dart';
import 'package:golearn/features/home/presentation/screens/states/home_loaded.dart';
import 'package:golearn/features/home/presentation/store/home_store.dart';
import 'package:golearn/services/get_it/locator_service.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeStore = getIt.get<HomeStore>();

  @override
  void initState() {
    homeStore.loadEntity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<HomeStore>(
      create: (context) => homeStore,
      builder: (context, _) {
        return const EntityBuilder<HomeStore>(
          loadedWidget: HomeLoaded(),
        );
      },
    );
  }
}
