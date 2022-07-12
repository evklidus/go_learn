import 'package:flutter/material.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:golearn/utils/mediaqury.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../custtomscreen/custtombutton.dart';
import '../../custtomscreen/custtomtextfild.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({Key? key}) : super(key: key);

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  TextEditingController cardname = TextEditingController();
  TextEditingController cardnumber = TextEditingController();
  TextEditingController expirydate = TextEditingController();
  TextEditingController cvv = TextEditingController();
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
          EnString.addnewcarrd,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height / 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 20),
              child: Image.asset("assets/Mocard.png"),
            ),
            SizedBox(height: height / 40),
            Row(
              children: [
                SizedBox(width: width / 20),
                Text(
                  EnString.cardname,
                  style: TextStyle(
                    fontSize: height / 40,
                    fontFamily: 'Gilroy_Bold',
                    color: notifier.getblack,
                  ),
                )
              ],
            ),
            SizedBox(height: height / 50),
            Center(
              child: Customtextfild.textField(
                cardname,
                EnString.andrewainsley,
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
            ),
            SizedBox(height: height / 80),
            Row(
              children: [
                SizedBox(width: width / 20),
                Text(
                  EnString.cardnumber,
                  style: TextStyle(color: notifier.getblack, fontSize: height / 40, fontFamily: 'Gilroy_Bold'),
                )
              ],
            ),
            SizedBox(height: height / 50),
            Center(
              child: Customtextfild.textField(
                cardnumber,
                "2672 4738 7837 7285",
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
            ),
            SizedBox(height: height / 80),
            Row(
              children: [
                SizedBox(width: width / 20),
                Text(
                  EnString.expirydate,
                  style: TextStyle(color: notifier.getblack, fontSize: height / 40, fontFamily: 'Gilroy_Bold'),
                ),
                const Spacer(),
                Text(
                  EnString.cvv,
                  style: TextStyle(color: notifier.getblack, fontSize: height / 40, fontFamily: 'Gilroy_Bold'),
                ),
                SizedBox(width: width / 2.7),
              ],
            ),
            SizedBox(height: height / 50),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Customtextfild.textField(
                    expirydate,
                    "09/07/26",
                    notifier.getgreay,
                    notifier.getgreay,
                    notifier.getgreay,
                    notifier.getblack,
                    notifier.getgreay,
                    height / 12,
                    width / 2.3,
                    EnString.email,
                    notifier.getblue,
                  ),
                  SizedBox(width: width / 30),
                  Customtextfild.textField(
                    cvv,
                    "699",
                    notifier.getgreay,
                    notifier.getgreay,
                    notifier.getgreay,
                    Colors.black,
                    notifier.getgreay,
                    height / 12,
                    width / 2.3,
                    EnString.email,
                    notifier.getblue,
                  ),
                ],
              ),
            ),
            SizedBox(height: height / 30),
            Custombutton.button(notifier.getblue, EnString.addnewcarrd, width / 1.1),
            SizedBox(height: height / 30),
          ],
        ),
      ),
    );
  }
}
