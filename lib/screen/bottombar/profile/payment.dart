import 'package:flutter/material.dart';
import 'package:golearn/screen/bottombar/profile/addnewcard.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/EnLanguage.dart';
import '../../../utils/mediaqury.dart';
import '../../custtomscreen/custtombutton.dart';

class PayMent extends StatefulWidget {
  const PayMent({Key? key}) : super(key: key);

  @override
  State<PayMent> createState() => _PayMentState();
}

class _PayMentState extends State<PayMent> {
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
          EnString.payment,
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
          SizedBox(height: height / 50),
          paymentbox("assets/paypal.png", EnString.paypal),
          SizedBox(height: height / 60),
          paymentbox("assets/googlepayment.png", EnString.googlepay),
          SizedBox(height: height / 60),
          paymentbox("assets/applepay.png", EnString.applepay),
          SizedBox(height: height / 60),
          paymentbox("assets/mastercard.png", "•••• •••• •••• •••• 4679"),
          SizedBox(height: height / 4),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddNewCard(),
                  ),
                );
              },
              child: Custombutton.button(notifier.getblue, EnString.addnewcarrd, width / 1.1))
        ],
      ),
    );
  }

  Widget paymentbox(image, name) {
    return Center(
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
                  color: Colors.black,
                  fontSize: height / 48,
                  fontFamily: 'Gilroy_Bold',
                ),
              ),
              const Spacer(),
              Text(
                EnString.connected,
                style: TextStyle(
                  color: notifier.getblue,
                  fontSize: height / 52,
                  fontFamily: 'Gilroy_Bold',
                ),
              ),
              SizedBox(
                width: width / 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
