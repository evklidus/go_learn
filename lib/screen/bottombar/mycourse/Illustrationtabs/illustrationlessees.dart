import 'package:flutter/material.dart';
import 'package:golearn/screen/bottombar/mycourse/ereceipt.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../utils/mediaqury.dart';
import '../../../custtomscreen/custtombutton.dart';
import '../../../custtomscreen/custtomlessees.dart';

class Illustrationlessees extends StatefulWidget {
  const Illustrationlessees({Key? key}) : super(key: key);

  @override
  State<Illustrationlessees> createState() => _IllustrationlesseesState();
}

class _IllustrationlesseesState extends State<Illustrationlessees> {
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
                  "17 mins",
                  style: TextStyle(color: notifier.getblue, fontSize: height / 50, fontFamily: 'Gilroy_Bold'),
                ),
                SizedBox(width: width / 20),
              ],
            ),
            SizedBox(height: height / 55),
            const CusttomLessees("01", "Why Using 3D Blender", "10 mins", "assets/Play.png"),
            SizedBox(height: height / 50),
            const CusttomLessees("02", "3D Blender Installation", "7 mins", "assets/Play.png"),
            SizedBox(height: height / 50),
            Row(
              children: [
                SizedBox(width: width / 20),
                Text(
                  "Section 2 - Blender 3D Modelling",
                  style: TextStyle(color: notifier.getgreay, fontSize: height / 55, fontFamily: 'Gilroy_Bold'),
                ),
                const Spacer(),
                Text(
                  "125 mins",
                  style: TextStyle(color: notifier.getblue, fontSize: height / 50, fontFamily: 'Gilroy_Bold'),
                ),
                SizedBox(width: width / 20),
              ],
            ),
            SizedBox(height: height / 50),
            const CusttomLessees("03", "Take a Look Blender Interfa...", "15 mins", "assets/Play.png"),
            SizedBox(height: height / 50),
            const CusttomLessees("04", "The Basic of 3D Modelling", "25 mins", "assets/Play.png"),
            SizedBox(height: height / 50),
            const CusttomLessees("05", "Shading and Lighting", "20 mins", "assets/Play.png"),
            SizedBox(height: height / 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Custombutton.button(notifier.getblue, EnString.startcourseagain, width / 2.3),
                ),
                SizedBox(width: width / 70),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Ereceipt(),
                      ),
                    );
                  },
                  child: Custombutton.button(notifier.getblue, EnString.viewreceipt, width / 2.3),
                ),
              ],
            ),
            SizedBox(height: height / 10)
          ],
        ),
      ),
    );
  }
}
