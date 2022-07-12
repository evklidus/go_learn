import 'package:flutter/material.dart';

import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';

import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyCources extends StatefulWidget {
  const MyCources({Key? key}) : super(key: key);

  @override
  State<MyCources> createState() => _MyCourcesState();
}

class _MyCourcesState extends State<MyCources> {
  late ColorNotifier notifier;

  List imagelist = [
    "assets/uidesign.png",
    "assets/webdesign.png",
    "assets/photography.png",
    "assets/forextrade.png",
  ];

  List title = [
    EnString.comptaeanimation,
    EnString.fitnesstraning,
    EnString.advancetradingforextradingStocktrading,
    EnString.learnbasicanimation
  ];
  List subtitle = [EnString.janecooper, EnString.estherhoward, EnString.courtneyhenry, EnString.devonlane];
  List memberlist = [
    "420 Members",
    "100 Members",
    "221 Members",
    "400 Members",
  ];

  List courses = [
    "43 Courses",
    "16 Courses",
    "12 Courses",
    "48 Courses",
  ];

  List subnamelist = [
    EnString.alisha,
    EnString.margenty,
    EnString.maira,
    EnString.nairobi,
  ];
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
    );
  }
}
