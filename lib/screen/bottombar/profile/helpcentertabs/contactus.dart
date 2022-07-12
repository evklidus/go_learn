import 'package:flutter/material.dart';

import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../utils/mediaqury.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
    );
  }

  Widget paymentbox(image, name) {
    return Center(
      child: Card(
        color: notifier.getcardcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Container(
          height: height / 14,
          width: width / 1.1,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(14),
            ),
          ),
          child: Row(
            children: [
              SizedBox(width: width / 25),
              Image.asset(image, height: height / 33),
              SizedBox(width: width / 23),
              Text(
                name,
                style: TextStyle(
                  color: notifier.getblack,
                  fontSize: height / 48,
                  fontFamily: 'Gilroy_Bold',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
