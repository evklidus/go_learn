import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:golearn/screen/authscreen/login.dart';
import 'package:golearn/screen/bottombar/profile/editprofile.dart';
import 'package:golearn/screen/bottombar/profile/helpcenter.dart';
import 'package:golearn/screen/bottombar/profile/invitefriend.dart';
import 'package:golearn/screen/bottombar/profile/laguage.dart';
import 'package:golearn/screen/bottombar/profile/payment.dart';
import 'package:golearn/screen/bottombar/profile/privacypolicy.dart';
import 'package:golearn/screen/bottombar/profile/security.dart';
import 'package:golearn/screen/custtomscreen/custtombutton.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:golearn/utils/mediaqury.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'notification.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Image.asset(
                "assets/imagepro.png",
                height: height / 3.3,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                SizedBox(height: height / 12),
                Row(
                  children: [
                    SizedBox(width: width / 20),
                    Image.asset("assets/logo.png", height: height / 20),
                    SizedBox(width: width / 22),
                    Text(
                      EnString.profile,
                      style: TextStyle(
                        fontSize: height / 40,
                        color: notifier.getblack,
                        fontFamily: 'Gilroy_Bold',
                      ),
                    ),
                    const Spacer(),
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
                SizedBox(height: height / 50),
              ],
            ),
            Column(
              children: [
                SizedBox(height: height / 4),
                Container(
                  height: height / 1.2,
                  width: width,
                  decoration: BoxDecoration(
                      color: notifier.getprimeryColor,
                      borderRadius:
                          const BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35))),
                  child: Column(
                    children: [
                      SizedBox(height: height / 10),
                      Text(
                        EnString.andrewainsley,
                        style: TextStyle(
                          color: notifier.getblack,
                          fontSize: height / 35,
                          fontFamily: 'Gilroy_Bold',
                        ),
                      ),
                      SizedBox(height: height / 100),
                      Text(
                        EnString.mailid,
                        style: TextStyle(
                          color: notifier.getblack,
                          fontSize: height / 55,
                          fontFamily: 'Gilroy_Medium',
                        ),
                      ),
                      SizedBox(height: height / 80),
                      Divider(color: notifier.getgreay),
                      SizedBox(height: height / 50),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EditProfile(),
                            ),
                          );
                        },
                        child: settingtype("assets/Profilesa.png", EnString.editprofile),
                      ),
                      SizedBox(height: height / 50),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProfileNotification(),
                              ),
                            );
                          },
                          child: settingtype("assets/Notification.png", EnString.notification)),
                      SizedBox(height: height / 50),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PayMent(),
                              ),
                            );
                          },
                          child: settingtype("assets/Wallet.png", EnString.payment)),
                      SizedBox(height: height / 50),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Security(),
                              ),
                            );
                          },
                          child: settingtype("assets/ShieldDone.png", EnString.security)),
                      SizedBox(height: height / 50),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LanguagePage(),
                              ),
                            );
                          },
                          child: laguage("assets/MoreCircle.png", EnString.language)),
                      SizedBox(height: height / 50),
                      darkmode("assets/Show.png", EnString.darkmode),
                      SizedBox(height: height / 50),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PrivacyPolicy(),
                              ),
                            );
                          },
                          child: settingtype("assets/privcyLock.png", EnString.privacypolicy)),
                      SizedBox(height: height / 50),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HelpCenter(),
                              ),
                            );
                          },
                          child: settingtype("assets/Info.png", EnString.helpcenter)),
                      SizedBox(height: height / 50),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const InviteFriend(),
                              ),
                            );
                          },
                          child: settingtype("assets/invitefriend.png", EnString.invitefriends)),
                      SizedBox(height: height / 50),
                      GestureDetector(
                          onTap: () {
                            bottomsheet();
                          },
                          child: logout("assets/Logout.png", EnString.logout)),
                      SizedBox(height: height / 30),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: height / 6.5),
                Stack(
                  children: [
                    Center(
                      child: Image.asset("assets/profileavatar.png", height: height / 6),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width / 1.65, top: height / 9.3),
                      child: GestureDetector(
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const EditProfile(),
                                ),
                              ),
                          child: Image.asset("assets/EditSquare.png", height: height / 21)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: height / 45),
          ],
        ),
      ),
    );
  }

  Future bottomsheet() {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      backgroundColor: notifier.getcardcolor,
      context: context,
      builder: (context) {
        return Container(
          color: Colors.transparent,
          height: height / 3.7,
          child: Column(
            children: [
              SizedBox(height: height / 50),
              Text(
                EnString.logout,
                style: TextStyle(color: const Color(0xffF75555), fontSize: height / 35, fontFamily: 'Gilroy_Bold'),
              ),
              SizedBox(height: height / 100),
              Divider(color: notifier.getgreay),
              SizedBox(height: height / 60),
              Text(
                EnString.areyousure,
                style: TextStyle(color: notifier.getblack, fontSize: height / 40, fontFamily: 'Gilroy_Bold'),
              ),
              SizedBox(height: height / 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: cancelbutton(const Color(0xffEBEFFE), EnString.cancel, width / 2.3),
                  ),
                  SizedBox(width: width / 70),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(0),
                        ),
                      );
                    },
                    child: Custombutton.button(notifier.getblue, EnString.yeslogout, width / 2.3),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  Widget cancelbutton(clr, text, wid) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          color: clr,
        ),
        height: height / 15,
        width: wid,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: notifier.getblue, fontSize: height / 50, fontFamily: 'Gilroy_Medium'),
          ),
        ),
      ),
    );
  }

  Widget darkmode(image, title) {
    return Row(
      children: [
        SizedBox(width: width / 20),
        Image.asset(
          image,
          height: height / 27,
          color: notifier.getblack,
        ),
        SizedBox(width: width / 30),
        Text(
          title,
          style: TextStyle(
            fontSize: height / 50,
            color: notifier.getblack,
            fontFamily: 'Gilroy_Bold',
          ),
        ),
        const Spacer(),
        Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
            activeColor: notifier.getblue,
            value: notifier.getIsDark,
            onChanged: (val) async {
              final prefs = await SharedPreferences.getInstance();
              setState(() {
                notifier.setIsDark = val;
                prefs.setBool("setIsDark", val);
              });
            },
          ),
        ),
        SizedBox(width: width / 20)
      ],
    );
  }

  Widget laguage(image, title) {
    return Container(
      color: Colors.transparent,
      child: Row(
        children: [
          SizedBox(width: width / 20),
          Image.asset(
            image,
            height: height / 27,
            color: notifier.getblack,
          ),
          SizedBox(width: width / 30),
          Text(
            title,
            style: TextStyle(
              color: notifier.getblack,
              fontSize: height / 50,
              fontFamily: 'Gilroy_Bold',
            ),
          ),
          const Spacer(),
          Text(
            EnString.english,
            style: TextStyle(
              color: notifier.getblack,
              fontSize: height / 50,
              fontFamily: 'Gilroy_Bold',
            ),
          ),
          SizedBox(width: width / 20),
          Icon(
            Icons.arrow_forward_ios,
            size: height / 40,
            color: notifier.getblack,
          ),
          SizedBox(width: width / 20)
        ],
      ),
    );
  }

  Widget settingtype(image, title) {
    return Container(
      color: Colors.transparent,
      child: Row(
        children: [
          SizedBox(width: width / 20),
          Image.asset(
            image,
            height: height / 27,
            color: notifier.getblack,
          ),
          SizedBox(width: width / 30),
          Text(
            title,
            style: TextStyle(
              color: notifier.getblack,
              fontSize: height / 50,
              fontFamily: 'Gilroy_Bold',
            ),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: height / 40,
            color: notifier.getblack,
          ),
          SizedBox(width: width / 20)
        ],
      ),
    );
  }

  Widget logout(image, title) {
    return Container(
      color: Colors.transparent,
      child: Row(
        children: [
          SizedBox(width: width / 20),
          Image.asset(image, height: height / 27),
          SizedBox(width: width / 30),
          Text(
            title,
            style: TextStyle(
              color: const Color(0xffF75555),
              fontSize: height / 50,
              fontFamily: 'Gilroy_Bold',
            ),
          ),
        ],
      ),
    );
  }
}
