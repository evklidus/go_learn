import 'package:flutter/material.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:golearn/utils/mediaqury.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
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
          EnString.privacypolicy,
          style: TextStyle(
            fontSize: height / 40,
            color: notifier.getblack,
            fontFamily: 'Gilroy_Bold',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height / 50),
            Row(
              children: [
                SizedBox(width: width / 20),
                Text(
                  EnString.typesofdata,
                  style: TextStyle(
                    color: notifier.getblack,
                    fontSize: height / 45,
                    fontFamily: 'Gilroy_Bold',
                  ),
                )
              ],
            ),
            SizedBox(height: height / 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 20),
              child: Text(
                EnString.loream,
                style: TextStyle(
                  color: notifier.getblack,
                  fontSize: height / 55,
                  fontFamily: 'Gilroy_Medium',
                ),
              ),
            ),
            SizedBox(height: height / 30),
            Row(
              children: [
                SizedBox(width: width / 20),
                Text(
                  EnString.useofyourpersonaldata,
                  style: TextStyle(
                    color: notifier.getblack,
                    fontSize: height / 45,
                    fontFamily: 'Gilroy_Bold',
                  ),
                )
              ],
            ),
            SizedBox(height: height / 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 20),
              child: Text(
                EnString.loream,
                style: TextStyle(
                  color: notifier.getblack,
                  fontSize: height / 55,
                  fontFamily: 'Gilroy_Medium',
                ),
              ),
            ),
            SizedBox(height: height / 30),
            Row(
              children: [
                SizedBox(width: width / 20),
                Text(
                  EnString.disclosureofyou,
                  style: TextStyle(
                    color: notifier.getblack,
                    fontSize: height / 45,
                    fontFamily: 'Gilroy_Bold',
                  ),
                )
              ],
            ),
            SizedBox(height: height / 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 20),
              child: Text(
                EnString.loream,
                style: TextStyle(
                  color: notifier.getblack,
                  fontSize: height / 55,
                  fontFamily: 'Gilroy_Medium',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
