import 'package:flutter/material.dart';
import 'package:golearn/screen/bottombar/home/uiuxtabs/checkout.dart';
import 'package:golearn/screen/custtomscreen/custtomlessees.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../utils/EnLanguage.dart';
import '../../../../utils/mediaqury.dart';
import '../../../custtomscreen/custtombutton.dart';

class SeallLessees extends StatefulWidget {
  const SeallLessees({Key? key}) : super(key: key);

  @override
  State<SeallLessees> createState() => _SeallLesseesState();
}

class _SeallLesseesState extends State<SeallLessees> {
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
      floatingActionButton: SizedBox(
        height: 45,
        width: 410,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CheckOut(),
              ),
            );
          },
          //   _handleURLButtonPress(
          // context, 'http://www.googlemaps.com/'),
          child: Custombutton.button(notifier.getblue, "Enroll Course - \$40", width / 1.1),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
          EnString.lessees,
          style: TextStyle(
            fontSize: height / 40,
            color: notifier.getblack,
            fontFamily: 'Gilroy_Bold',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: height / 30,
              width: width / 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: notifier.getblack,
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.more_horiz,
                  size: height / 40,
                  color: notifier.getblack,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height / 70),
            Row(
              children: [
                SizedBox(width: width / 20),
                Text(
                  "Section 1 - Introduction",
                  style: TextStyle(color: notifier.getgreay, fontSize: height / 55, fontFamily: 'Gilroy_Bold'),
                ),
                const Spacer(),
                Text(
                  "15 mins",
                  style: TextStyle(color: notifier.getblue, fontSize: height / 50, fontFamily: 'Gilroy_Bold'),
                ),
                SizedBox(width: width / 20),
              ],
            ),
            SizedBox(height: height / 55),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CheckOut(),
                  ),
                );
              },
              child: CusttomLessees("01", EnString.whyusingfigma, "10 mins", "assets/Play.png"),
            ),
            SizedBox(height: height / 50),
            CusttomLessees("02", EnString.setupyourfigmaaccount, "5 mins", "assets/Lock.png"),
            SizedBox(height: height / 50),
            Row(
              children: [
                SizedBox(width: width / 20),
                Text(
                  "Section 2 - Figma Basic",
                  style: TextStyle(color: notifier.getgreay, fontSize: height / 55, fontFamily: 'Gilroy_Bold'),
                ),
                const Spacer(),
                Text(
                  "60 mins",
                  style: TextStyle(color: notifier.getblue, fontSize: height / 50, fontFamily: 'Gilroy_Bold'),
                ),
                SizedBox(width: width / 20),
              ],
            ),
            SizedBox(height: height / 50),
            CusttomLessees("03", EnString.takealookfigmainterface, "15 mins", "assets/Lock.png"),
            SizedBox(height: height / 50),
            CusttomLessees("04", EnString.workingwithframe, "10 mins", "assets/Lock.png"),
            SizedBox(height: height / 50),
            CusttomLessees("05", EnString.workingwithtext, "10 mins", "assets/Lock.png"),
            SizedBox(height: height / 50),
            CusttomLessees("06", EnString.usingfigmaplugins, "25 mins", "assets/Lock.png"),
            SizedBox(height: height / 70),
            Row(
              children: [
                SizedBox(width: width / 20),
                Text(
                  "Section 3 - Let’s Practice",
                  style: TextStyle(color: notifier.getgreay, fontSize: height / 55, fontFamily: 'Gilroy_Bold'),
                ),
                const Spacer(),
                Text(
                  "75 mins",
                  style: TextStyle(color: notifier.getblue, fontSize: height / 50, fontFamily: 'Gilroy_Bold'),
                ),
                SizedBox(width: width / 20),
              ],
            ),
            SizedBox(height: height / 50),
            CusttomLessees("07", EnString.letsdesign, "35 mins", "assets/Lock.png"),
            SizedBox(height: height / 50),
            CusttomLessees("08", EnString.letscreateprototype, "20 mins", "assets/Lock.png"),
            SizedBox(height: height / 50),
            CusttomLessees("09", EnString.sharingworkwithteam, "8 mins", "assets/Lock.png"),
            SizedBox(height: height / 50),
            CusttomLessees("10", EnString.exportingassets, "12 mins", "assets/Lock.png"),
            SizedBox(height: height / 10)
          ],
        ),
      ),
    );
  }
}
