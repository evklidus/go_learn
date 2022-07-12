import 'package:flutter/material.dart';
import 'package:golearn/screen/bottombar/bottombar.dart';
import 'package:golearn/screen/bottombar/mycourse/ereceipt.dart';
import 'package:golearn/screen/custtomscreen/custtombutton.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:golearn/utils/mediaqury.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EnrollCoursePin extends StatefulWidget {
  const EnrollCoursePin({Key? key}) : super(key: key);

  @override
  State<EnrollCoursePin> createState() => _EnrollCoursePinState();
}

class _EnrollCoursePinState extends State<EnrollCoursePin> {
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
            _showMyDialog();
          },
          child: Custombutton.button(notifier.getblue, EnString.continues, width / 1.1),
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
          EnString.enrollcourse,
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
          Center(
            child: Text(
              EnString.enteryourpin,
              style: TextStyle(
                fontSize: height / 50,
                fontFamily: 'Gilroy_Medium',
                color: notifier.getblack,
              ),
            ),
          ),
          SizedBox(height: height / 40),
          animatedBorders()
        ],
      ),
    );
  }

  _showMyDialog() async {
    return showDialog(
      context: context, useRootNavigator: true,
      // barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: notifier.getcardcolor,
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Container(
                color: notifier.getcardcolor,
                height: height / 1.8,
                // width: width / 1.1,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/enrollsuccessful.png",
                      height: height / 5,
                    ),
                    SizedBox(height: height / 30),
                    Text(
                      EnString.enrollcoursesuccessful,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: notifier.getblue, fontFamily: 'Gilroy_Bold', fontSize: height / 38),
                    ),
                    SizedBox(height: height / 50),
                    Text(
                      EnString.youhavesuccessfullymade,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: notifier.getgreay, fontFamily: 'Gilroy_Medium', fontSize: height / 55),
                    ),
                    SizedBox(height: height / 30),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Bottombar(index: 2),
                          ),
                        );
                      },
                      child: Container(
                        height: height / 14,
                        width: width / 1.6,
                        decoration: BoxDecoration(
                          color: notifier.getblue,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            EnString.viewcourse,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: notifier.getwihitecolor, fontFamily: 'Gilroy_Bold', fontSize: height / 50),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height / 80),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Ereceipt(),
                          ),
                        );
                      },
                      child: Container(
                        height: height / 14,
                        width: width / 1.6,
                        decoration: const BoxDecoration(
                          color: Color(0xffEBEFFE),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            EnString.viewreceipt,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: notifier.getblue, fontFamily: 'Gilroy_Bold', fontSize: height / 50),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        );
      },
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
          border: Border.all(color: notifier.getblue),
        ).copyWith(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: notifier.getblue),
        ),
        selectedFieldDecoration: BoxDecoration(
          color: notifier.getwihitecolor,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: notifier.getblue),
        ),
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
