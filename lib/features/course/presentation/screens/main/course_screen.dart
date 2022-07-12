import 'package:flutter/material.dart';
import 'package:golearn/core/builders/entity_builder.dart';
import 'package:golearn/features/course/presentation/screens/states/course_screen_loaded.dart';
import 'package:golearn/features/course/presentation/store/course_store.dart';
import 'package:golearn/services/get_it/locator_service.dart';
import 'package:provider/provider.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({
    Key? key,
    this.id = 0,
  }) : super(key: key);

  final int id;

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  final homeStore = getIt.get<CourseStore>();

  @override
  void initState() {
    homeStore.loadCourse(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Provider<CourseStore>(
        create: (context) => homeStore,
        builder: (context, _) {
          return const EntityBuilder<CourseStore>(
            loadedWidget: CourseScreenLoaded(),
          );
        },
      ),
    );
  }
}
