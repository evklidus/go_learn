import 'package:flutter/material.dart';
import 'package:golearn/screen/bottombar/profile/helpcentertabs/customerservices.dart';
import 'package:golearn/screen/custtomscreen/customstudentcourse.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:golearn/utils/mediaqury.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Student extends StatefulWidget {
  const Student({Key? key}) : super(key: key);

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
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
      body: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CustomerServices(),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: height / 50),
            Custtomstudentcourse("assets/benny.png", EnString.bennyspanbauer, EnString.student),
            SizedBox(height: height / 80),
            Custtomstudentcourse("assets/freida.png", EnString.freidavarnes, EnString.juniordesigner),
            SizedBox(height: height / 80),
            Custtomstudentcourse("assets/francene.png", EnString.francenevandyne, EnString.student),
            SizedBox(height: height / 80),
            Custtomstudentcourse("assets/tannerstafford.png", EnString.tannerstafford, EnString.freelancer),
            SizedBox(height: height / 80),
          ],
        ),
      ),
    );
  }
}
