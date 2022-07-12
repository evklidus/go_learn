import 'package:flutter/material.dart';
import 'package:golearn/screen/bottombar/home/addquestion.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/mediaqury.dart';
import '../../custtomscreen/customstudentcourse.dart';

class TopMentors extends StatefulWidget {
  const TopMentors({Key? key}) : super(key: key);

  @override
  State<TopMentors> createState() => _TopMentorsState();
}

class _TopMentorsState extends State<TopMentors> {
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, color: notifier.getblack, size: height / 30),
        ),
        title: Text(
          EnString.topmentors,
          style: TextStyle(
            fontSize: height / 40,
            color: notifier.getblack,
            fontFamily: 'Gilroy_Bold',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(
              Icons.search_rounded,
              color: notifier.getblack,
              size: height / 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddQuestion(),
              ),
            );
          },
          child: Column(
            children: [
              SizedBox(height: height / 50),
              Custtomstudentcourse("assets/t1.png", EnString.jacobjones, EnString.marketinganalyst),
              SizedBox(height: height / 70),
              Custtomstudentcourse("assets/t2.png", EnString.claireordonez, EnString.vpofsales),
              SizedBox(height: height / 70),
              Custtomstudentcourse("assets/t3.png", EnString.priscillaehrman, EnString.uiuxdesign),
              SizedBox(height: height / 70),
              Custtomstudentcourse("assets/t4.png", EnString.wadechenail, EnString.managersolutionengineering),
              SizedBox(height: height / 70),
              Custtomstudentcourse("assets/t5.png", EnString.kathrynpera, EnString.productmanager),
              SizedBox(height: height / 70),
              Custtomstudentcourse("assets/t6.png", EnString.francenevandyne, EnString.evpandgmsalescloud),
              SizedBox(height: height / 70),
              Custtomstudentcourse("assets/profileavtar.png", EnString.bennyspanbauer, EnString.seniorproductmanager),
              SizedBox(height: height / 70),
              Custtomstudentcourse("assets/t7.png", EnString.jameleusebio, EnString.productdesigner),
              SizedBox(height: height / 70),
              Custtomstudentcourse("assets/t8.png", EnString.cyndylillibridge, EnString.vpofsales),
              SizedBox(height: height / 70),
            ],
          ),
        ),
      ),
    );
  }
}
