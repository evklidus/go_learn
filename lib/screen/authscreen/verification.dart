import 'package:flutter/material.dart';
import 'package:golearn/screen/bottombar/bottombar.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utils/mediaqury.dart';
import '../custtomscreen/custtombutton.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
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
    return Scaffold(
      backgroundColor: notifier.getprimeryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          EnString.verification,
          style: TextStyle(
            color: notifier.getblack,
            fontSize: height / 40,
            fontFamily: 'Gilroy_Bold',
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: height / 50,
              width: width / 50,
              decoration: BoxDecoration(
                  color: Colors.transparent, shape: BoxShape.circle, border: Border.all(color: notifier.getgreay)),
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Icon(Icons.arrow_back_ios, color: notifier.getblack, size: height / 50),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height / 50),
            Center(
              child: Image.asset(
                "assets/verification.png",
                height: height / 4,
              ),
            ),
            SizedBox(height: height / 50),
            Text(
              EnString.verificationcode,
              style: TextStyle(
                fontSize: height / 30,
                fontFamily: 'Gilroy_Bold',
                color: notifier.getblack,
              ),
            ),
            SizedBox(height: height / 50),
            Text(
              EnString.wehavetosendthecode,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: height / 50, fontFamily: 'Gilroy_Bold', color: notifier.getgreay),
            ),
            SizedBox(height: height / 60),
            animatedBorders(),
            SizedBox(height: height / 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "+01-202-555-0102",
                  style: TextStyle(fontSize: height / 40, fontFamily: 'Gilroy_Bold', color: notifier.getgreay),
                ),
                SizedBox(width: width / 30),
                Container(
                  height: height / 14,
                  width: width / 14,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: notifier.getgreay),
                  ),
                  child: Icon(
                    Icons.edit,
                    size: height / 55,
                    color: notifier.getblack,
                  ),
                ),
              ],
            ),
            SizedBox(height: height / 20),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: sendagainbutton(EnString.sendagain, width / 1.1),
            ),
            SizedBox(height: height / 50),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Bottombar(index: 0),
                  ),
                );
              },
              child: Custombutton.button(notifier.getblue, EnString.submit, width / 1.1),
            ),
          ],
        ),
      ),
    );
  }

  Widget sendagainbutton(text, wid) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: notifier.getgreay),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        height: height / 15,
        width: wid,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: width / 30),
            Text(
              text,
              style: TextStyle(color: notifier.getblue, fontSize: height / 45, fontFamily: 'Gilroy_Bold'),
            ),
          ],
        ),
      ),
    );
  }

  Widget animatedBorders() {
    return Container(
      color: Colors.transparent,
      height: height / 14,
      width: width / 1.2,
      child: PinPut(
        textStyle: TextStyle(color: notifier.getblack, fontFamily: "Gilroy Bold", fontSize: height / 40),
        fieldsCount: 4,
        eachFieldWidth: width / 6.5,
        withCursor: false,
        submittedFieldDecoration: BoxDecoration(
                color: notifier.getwihitecolor,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: notifier.getblue))
            .copyWith(borderRadius: BorderRadius.circular(10.0), border: Border.all(color: notifier.getblue)),
        selectedFieldDecoration: BoxDecoration(
            color: notifier.getwihitecolor,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: notifier.getblue)),
        followingFieldDecoration: BoxDecoration(
          border: Border.all(color: notifier.getblue),
          color: notifier.getwihitecolor,
          borderRadius: BorderRadius.circular(10.0),
        ).copyWith(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
