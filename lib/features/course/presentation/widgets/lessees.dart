import 'package:flutter/material.dart';
import 'package:golearn/features/course/presentation/store/course_store.dart';
import 'package:golearn/screen/bottombar/home/uiuxtabs/seealllessees.dart';
import 'package:golearn/screen/custtomscreen/custtomlessees.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../utils/mediaqury.dart';

class Lessees extends StatefulWidget {
  const Lessees({Key? key}) : super(key: key);

  @override
  State<Lessees> createState() => _LesseesState();
}

class _LesseesState extends State<Lessees> {
  late ColorNotifier notifier;
  getdarkmodepreviousstate() async {
    final prefs = await SharedPreferences.getInstance();
    bool? previusstate = prefs.getBool("setIsDark");
    if (previusstate == null) {
      notifier.setIsDark = false;
    } else {
      notifier.setIsDark = previusstate;
    }
  }

  @override
  void initState() {
    super.initState();
    getdarkmodepreviousstate();
  }

  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    final store = context.read<CourseStore>();

    return Scaffold(
      backgroundColor: notifier.getprimeryColor,
      body: Container(
        color: Colors.transparent,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          primary: true,
          itemCount: store.entity!.sections.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                SizedBox(height: height / 50),
                Row(
                  children: [
                    SizedBox(width: width / 20),
                    Text(
                      store.entity!.lessonsCount.toString() + " Lessons",
                      style: TextStyle(color: notifier.getblack, fontSize: height / 45, fontFamily: 'Gilroy_Bold'),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SeallLessees(),
                          ),
                        );
                      },
                      child: Text(
                        EnString.seeall,
                        style: TextStyle(color: notifier.getblue, fontSize: height / 50, fontFamily: 'Gilroy_Bold'),
                      ),
                    ),
                    SizedBox(width: width / 20),
                  ],
                ),
                SizedBox(height: height / 70),
                Row(
                  children: [
                    SizedBox(width: width / 20),
                    Text(
                      store.entity!.sections[index].name,
                      style: TextStyle(color: notifier.getgreay, fontSize: height / 55, fontFamily: 'Gilroy_Bold'),
                    ),
                    const Spacer(),
                    Text(
                      store.entity!.sections[index].time,
                      style: TextStyle(color: notifier.getblue, fontSize: height / 50, fontFamily: 'Gilroy_Bold'),
                    ),
                    SizedBox(width: width / 20),
                  ],
                ),
                SizedBox(height: height / 55),
                Column(
                  children: store.entity!.sections[index].lessons
                      .map(
                        (lesson) => CusttomLessees(
                          "0${index + 1}",
                          lesson.title,
                          lesson.time,
                          "assets/Play.png",
                        ),
                      )
                      .toList(),
                ),
                SizedBox(height: height / 50),
              ],
            );
          },
        ),
      ),
    );
  }
}
