import 'package:flutter/material.dart';
import 'package:golearn/screen/authscreen/verification.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utils/mediaqury.dart';
import '../custtomscreen/custtombutton.dart';
import '../custtomscreen/custtomtextfild.dart';

class Email extends StatefulWidget {
  const Email({Key? key}) : super(key: key);

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  late ColorNotifier notifier;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height / 30),
            Row(
              children: [
                SizedBox(width: width / 80),
                Text(
                  EnString.email,
                  style: TextStyle(
                    color: notifier.getblack,
                    fontSize: height / 50,
                    fontFamily: 'Gilroy_Bold',
                  ),
                ),
              ],
            ),
            SizedBox(height: height / 45),
            Customtextfild.textField(
              email,
              EnString.enteryoremail,
              notifier.getgreay,
              notifier.getgreay,
              notifier.getgreay,
              notifier.getblack,
              notifier.getgreay,
              height / 12,
              width / 1.1,
              EnString.email,
              notifier.getblue,
            ),
            // SizedBox(height: height/100),
            Row(
              children: [
                SizedBox(width: width / 80),
                Text(
                  EnString.password,
                  style: TextStyle(
                    color: notifier.getblack,
                    fontSize: height / 50,
                    fontFamily: 'Gilroy_Bold',
                  ),
                ),
              ],
            ),
            SizedBox(height: height / 55),
            Customtextfild.textField(
              password,
              EnString.enteryourpassword,
              notifier.getgreay,
              notifier.getgreay,
              notifier.getgreay,
              notifier.getblack,
              notifier.getgreay,
              height / 12,
              width / 1.1,
              EnString.password,
              notifier.getblue,
            ),
            SizedBox(height: height / 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Verification(),
                  ),
                );
              },
              child: Custombutton.button(notifier.getblue, EnString.sendcode, width / 1.1),
            ),
            SizedBox(height: height / 24),
            Row(children: <Widget>[
              Expanded(
                child: Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 15.0),
                    child: Divider(
                      color: notifier.getgreay,
                      height: 50,
                    )),
              ),
              Text(
                EnString.signinwithgoogle,
                style: TextStyle(
                  color: notifier.getgreay,
                  fontSize: height / 55,
                  fontFamily: 'Gilroy_Medium',
                ),
              ),
              Expanded(
                child: Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 20.0),
                    child: Divider(
                      color: notifier.getgreay,
                      height: 50,
                    )),
              ),
            ]),
            SizedBox(height: height / 25),
            googlefacebookbutton(EnString.google, width / 1.1, "assets/google.png"),
            SizedBox(height: height / 50),
            googlefacebookbutton(EnString.facebook, width / 1.1, "assets/facebook.png"),
            SizedBox(height: height / 22),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       EnString.donthaveanaccount,
            //       style: TextStyle(
            //         color: notifier.getgreay,
            //         fontSize: height / 50,
            //         fontFamily: 'Gilroy_Medium',
            //       ),
            //     ),
            //     SizedBox(width: width/50),
            //     Text(
            //       EnString.signup,
            //       style: TextStyle(
            //         color: const Color(0xffdc6a2a),
            //         fontSize: height / 50,
            //         fontFamily: 'Gilroy_Medium',
            //       ),
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }

  Widget googlefacebookbutton(text, wid, image) {
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
            Image.asset(image, height: height / 30),
            SizedBox(width: width / 30),
            Text(
              text,
              style: TextStyle(color: notifier.getblue, fontSize: height / 50, fontFamily: 'Gilroy_Bold'),
            ),
          ],
        ),
      ),
    );
  }
}
