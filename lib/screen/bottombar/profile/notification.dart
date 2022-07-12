import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:golearn/utils/mediaqury.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileNotification extends StatefulWidget {
  const ProfileNotification({Key? key}) : super(key: key);

  @override
  State<ProfileNotification> createState() => _ProfileNotificationState();
}

class _ProfileNotificationState extends State<ProfileNotification> {
  bool _switchValue1 = false;
  bool _switchValue2 = false;
  bool _switchValue3 = false;
  bool _switchValue4 = false;
  bool _switchValue5 = false;
  bool _switchValue6 = false;
  bool _switchValue7 = false;
  bool _switchValue8 = false;
  bool _switchValue9 = false;
  bool _switchValue10 = false;

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
          EnString.notification,
          style: TextStyle(
            fontSize: height / 40,
            color: notifier.getblack,
            fontFamily: 'Gilroy_Bold',
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: height / 50),
          genralnotification(EnString.generalnotification),
          SizedBox(height: height / 60),
          soundnotification(EnString.sound),
          SizedBox(height: height / 60),
          vaibratenotification(EnString.vibrate),
          SizedBox(height: height / 60),
          apecialnotification(EnString.vibrate),
          SizedBox(height: height / 60),
          promodicountnotification(EnString.promoanddiscount),
          SizedBox(height: height / 60),
          paymentnotification(EnString.payment),
          SizedBox(height: height / 60),
          paymentnotification(EnString.cashback),
          SizedBox(height: height / 60),
          appupdatenotification(EnString.appupdates),
          SizedBox(height: height / 60),
          newservicesnotification(EnString.newserviceavailable),
          SizedBox(height: height / 60),
          newtipsnotification(EnString.newtipsavailable),
        ],
      ),
    );
  }

  Widget genralnotification(title) {
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

  Widget soundnotification(title) {
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

  Widget vaibratenotification(title) {
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

  Widget apecialnotification(title) {
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
            value: _switchValue4,
            onChanged: (value) {
              setState(
                () {
                  _switchValue4 = value;
                },
              );
            },
          ),
        ),
        SizedBox(width: width / 20)
      ],
    );
  }

  Widget promodicountnotification(title) {
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
            value: _switchValue5,
            onChanged: (value) {
              setState(
                () {
                  _switchValue5 = value;
                },
              );
            },
          ),
        ),
        SizedBox(width: width / 20)
      ],
    );
  }

  Widget paymentnotification(title) {
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
            value: _switchValue6,
            onChanged: (value) {
              setState(
                () {
                  _switchValue6 = value;
                },
              );
            },
          ),
        ),
        SizedBox(width: width / 20)
      ],
    );
  }

  Widget cashbacknotification(title) {
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
            value: _switchValue7,
            onChanged: (value) {
              setState(
                () {
                  _switchValue7 = value;
                },
              );
            },
          ),
        ),
        SizedBox(width: width / 20)
      ],
    );
  }

  Widget appupdatenotification(title) {
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
            value: _switchValue8,
            onChanged: (value) {
              setState(
                () {
                  _switchValue8 = value;
                },
              );
            },
          ),
        ),
        SizedBox(width: width / 20)
      ],
    );
  }

  Widget newservicesnotification(title) {
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
            value: _switchValue9,
            onChanged: (value) {
              setState(
                () {
                  _switchValue9 = value;
                },
              );
            },
          ),
        ),
        SizedBox(width: width / 20)
      ],
    );
  }

  Widget newtipsnotification(title) {
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
            value: _switchValue10,
            onChanged: (value) {
              setState(
                () {
                  _switchValue10 = value;
                },
              );
            },
          ),
        ),
        SizedBox(width: width / 20)
      ],
    );
  }
}
