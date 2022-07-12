import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/EnLanguage.dart';
import '../../../utils/mediaqury.dart';

class Security extends StatefulWidget {
  const Security({Key? key}) : super(key: key);

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  late ColorNotifier notifier;
  bool _switchValue1 = false;
  bool _switchValue2 = false;
  bool _switchValue3 = false;
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
          EnString.security,
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
            rememberme(EnString.rememberme),
            SizedBox(height: height / 60),
            facid(EnString.faceid),
            SizedBox(height: height / 60),
            biometricid(EnString.biometricid),
            SizedBox(height: height / 60),
            googleauth(EnString.googleauthenticator),
            SizedBox(height: height / 20),
            Container(
              height: height / 15,
              width: width / 1.1,
              decoration: BoxDecoration(
                color: notifier.getblue.withOpacity(0.10),
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Center(
                child: Text(
                  EnString.changepin,
                  style: TextStyle(
                    color: notifier.getblue,
                    fontSize: height / 50,
                    fontFamily: 'Gilroy_Bold',
                  ),
                ),
              ),
            ),
            SizedBox(height: height / 40),
            Container(
              height: height / 15,
              width: width / 1.1,
              decoration: BoxDecoration(
                color: notifier.getblue.withOpacity(0.10),
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Center(
                child: Text(
                  EnString.changepassword,
                  style: TextStyle(
                    color: notifier.getblue,
                    fontSize: height / 50,
                    fontFamily: 'Gilroy_Bold',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget rememberme(title) {
    return Row(
      children: [
        SizedBox(width: width / 20),
        Text(
          title,
          style: TextStyle(fontSize: height / 45, fontFamily: 'Gilroy_Bold', color: notifier.getblack),
        ),
        const Spacer(),
        Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
            trackColor: notifier.getgreay,
            thumbColor: Colors.white,
            activeColor: notifier.getblue,
            value: _switchValue1,
            onChanged: (value) {
              setState(
                () {
                  _switchValue1 = value;
                },
              );
            },
          ),
        ),
        SizedBox(width: width / 20)
      ],
    );
  }

  Widget facid(title) {
    return Row(
      children: [
        SizedBox(width: width / 20),
        Text(
          title,
          style: TextStyle(fontSize: height / 45, fontFamily: 'Gilroy_Bold', color: notifier.getblack),
        ),
        const Spacer(),
        Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
            trackColor: notifier.getgreay,
            thumbColor: Colors.white,
            activeColor: notifier.getblue,
            value: _switchValue2,
            onChanged: (value) {
              setState(
                () {
                  _switchValue2 = value;
                },
              );
            },
          ),
        ),
        SizedBox(width: width / 20)
      ],
    );
  }

  Widget biometricid(title) {
    return Row(
      children: [
        SizedBox(width: width / 20),
        Text(
          title,
          style: TextStyle(fontSize: height / 45, fontFamily: 'Gilroy_Bold', color: notifier.getblack),
        ),
        const Spacer(),
        Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
            trackColor: notifier.getgreay,
            thumbColor: Colors.white,
            activeColor: notifier.getblue,
            value: _switchValue3,
            onChanged: (value) {
              setState(
                () {
                  _switchValue3 = value;
                },
              );
            },
          ),
        ),
        SizedBox(width: width / 20)
      ],
    );
  }

  Widget googleauth(title) {
    return Row(
      children: [
        SizedBox(width: width / 20),
        Text(
          title,
          style: TextStyle(fontSize: height / 45, fontFamily: 'Gilroy_Bold', color: notifier.getblack),
        ),
        const Spacer(),
        Icon(Icons.arrow_forward_ios, color: notifier.getblue, size: height / 35),
        SizedBox(width: width / 20)
      ],
    );
  }
}
