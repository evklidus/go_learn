import 'package:flutter/material.dart';
import 'package:golearn/screen/bottombar/home/enrollcoursepin.dart';
import 'package:golearn/screen/bottombar/profile/addnewcard.dart';
import 'package:golearn/screen/custtomscreen/custtombutton.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:golearn/utils/mediaqury.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EnrollCourse extends StatefulWidget {
  const EnrollCourse({Key? key}) : super(key: key);

  @override
  State<EnrollCourse> createState() => _EnrollCourseState();
}

class _EnrollCourseState extends State<EnrollCourse> {
  int _groupValue = 0;
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
                builder: (context) => const EnrollCoursePin(),
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
          EnString.enrollcourse,
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
      body: Column(
        children: [
          SizedBox(height: height / 80),
          Row(
            children: [
              SizedBox(width: width / 20),
              Text(
                EnString.selectthepaymentmethod,
                style: TextStyle(
                  color: notifier.getgreay,
                  fontSize: height / 55,
                  fontFamily: 'Gilroy_Medium',
                ),
              ),
            ],
          ),
          SizedBox(height: height / 50),
          paymentbox("assets/paypal.png", EnString.paypal, 0),
          SizedBox(height: height / 60),
          paymentbox("assets/googlepayment.png", EnString.googlepay, 1),
          SizedBox(height: height / 60),
          paymentbox("assets/applepay.png", EnString.applepay, 2),
          SizedBox(height: height / 60),
          paymentbox("assets/mastercard.png", "•••• •••• •••• •••• 4679", 3),
          SizedBox(height: height / 50),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddNewCard(),
              ),
            ),
            child: Container(
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
                  EnString.addnewcarrd,
                  style: TextStyle(
                    color: notifier.getblue,
                    fontSize: height / 50,
                    fontFamily: 'Gilroy_Bold',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget paymentbox(image, name, val) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            _groupValue = val as int;
          },
        );
      },
      child: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          child: Container(
            height: height / 11,
            width: width / 1.1,
            decoration: BoxDecoration(
              color: notifier.getcardcolor,
              borderRadius: const BorderRadius.all(
                Radius.circular(14),
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: width / 25),
                Image.asset(image, height: height / 23),
                SizedBox(width: width / 23),
                Text(
                  name,
                  style: TextStyle(
                    color: notifier.getblack,
                    fontSize: height / 48,
                    fontFamily: 'Gilroy_Bold',
                  ),
                ),
                const Spacer(),
                Radio(
                  activeColor: notifier.getblue,
                  value: val as int,
                  groupValue: _groupValue,
                  onChanged: (value) {
                    setState(() {
                      _groupValue = value as int;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
