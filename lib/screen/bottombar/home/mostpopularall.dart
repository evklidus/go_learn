import 'package:flutter/material.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:golearn/utils/mediaqury.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/EnLanguage.dart';
import '../../custtomscreen/custoomcourses.dart';

class MostPopularAll extends StatefulWidget {
  const MostPopularAll({Key? key}) : super(key: key);

  @override
  State<MostPopularAll> createState() => _MostPopularAllState();
}

class _MostPopularAllState extends State<MostPopularAll> {
  bool like = false;
  bool like1 = false;
  bool like2 = false;
  bool like3 = false;
  bool like4 = false;
  bool like5 = false;
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
    return Scaffold(
      backgroundColor: notifier.getprimeryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height / 50),
            CusttomCourses(
              "assets/learn1.png",
              Colors.transparent,
              EnString.learnuxuserpersona,
              "\$42",
              width / 7,
              GestureDetector(
                onTap: () {
                  setState(() {
                    like = !like;
                  });
                },
                child: Image.asset(
                  like ? "assets/like.png" : "assets/unlike.png",
                  height: height / 35,
                ),
              ),
            ),
            CusttomCourses(
              "assets/Mask.png",
              Colors.transparent,
              EnString.ddesing,
              "\$42",
              width / 7,
              GestureDetector(
                onTap: () {
                  setState(() {
                    like1 = !like1;
                  });
                },
                child: Image.asset(
                  like1 ? "assets/like.png" : "assets/unlike.png",
                  height: height / 35,
                ),
              ),
            ),
            CusttomCourses(
              "assets/forextrade.png",
              Colors.transparent,
              EnString.digital,
              "\$42",
              width / 7,
              GestureDetector(
                onTap: () {
                  setState(() {
                    like2 = !like2;
                  });
                },
                child: Image.asset(
                  like2 ? "assets/like.png" : "assets/unlike.png",
                  height: height / 35,
                ),
              ),
            ),
            CusttomCourses(
              "assets/uidesign.png",
              Colors.transparent,
              EnString.flutterapps,
              "\$42",
              width / 7,
              GestureDetector(
                onTap: () {
                  setState(() {
                    like3 = !like3;
                  });
                },
                child: Image.asset(
                  like3 ? "assets/like.png" : "assets/unlike.png",
                  height: height / 35,
                ),
              ),
            ),
            CusttomCourses(
              "assets/advance.png",
              Colors.transparent,
              EnString.learnbasicui,
              "\$42",
              width / 7,
              GestureDetector(
                onTap: () {
                  setState(() {
                    like4 = !like4;
                  });
                },
                child: Image.asset(
                  like4 ? "assets/like.png" : "assets/unlike.png",
                  height: height / 35,
                ),
              ),
            ),
            CusttomCourses(
              "assets/photography.png",
              Colors.transparent,
              EnString.techfigmadesign,
              "\$42",
              width / 7,
              GestureDetector(
                onTap: () {
                  setState(() {
                    like5 = !like5;
                  });
                },
                child: Image.asset(
                  like5 ? "assets/like.png" : "assets/unlike.png",
                  height: height / 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
