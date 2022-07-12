import 'package:flutter/material.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:golearn/utils/mediaqury.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Ereceipt extends StatefulWidget {
  const Ereceipt({Key? key}) : super(key: key);

  @override
  State<Ereceipt> createState() => _EreceiptState();
}

class _EreceiptState extends State<Ereceipt> {
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
          "E-Receipt",
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
            SizedBox(height: height / 40),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/barcode.png"),
            ),
            SizedBox(height: height / 50),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                height: height / 8,
                width: width / 1.1,
                decoration: BoxDecoration(
                  color: notifier.getcardcolor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    SizedBox(height: height / 40),
                    receipttype(EnString.course, EnString.masteringfigma),
                    SizedBox(height: height / 45),
                    receipttype(EnString.category, EnString.uiuxdesign),
                  ],
                ),
              ),
            ),
            SizedBox(height: height / 70),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                height: height / 4.5,
                width: width / 1.1,
                decoration: BoxDecoration(
                  color: notifier.getcardcolor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    SizedBox(height: height / 40),
                    receipttype(EnString.name, EnString.andrewainsley),
                    SizedBox(height: height / 45),
                    receipttype(EnString.phone, "+1 111 467 378 399"),
                    SizedBox(height: height / 45),
                    receipttype(EnString.email, EnString.mailid),
                    SizedBox(height: height / 45),
                    receipttype(EnString.country, EnString.unitedstates),
                  ],
                ),
              ),
            ),
            SizedBox(height: height / 70),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                height: height / 3.8,
                width: width / 1.1,
                decoration: BoxDecoration(
                  color: notifier.getcardcolor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    SizedBox(height: height / 40),
                    receipttype(EnString.price, "\$40.00"),
                    SizedBox(height: height / 45),
                    receipttype(EnString.paymentmethods, EnString.creditcard),
                    SizedBox(height: height / 45),
                    receipttype(EnString.date, "Dec 14, 2024 | 14:27:45 PM"),
                    SizedBox(height: height / 45),
                    tranjection(EnString.transactionid, EnString.unitedstates),
                    SizedBox(height: height / 45),
                    status(EnString.status, EnString.creditcard),
                  ],
                ),
              ),
            ),
            SizedBox(height: height / 45),
          ],
        ),
      ),
    );
  }

  Widget receipttype(txt, name) {
    return Row(
      children: [
        SizedBox(width: width / 20),
        Text(
          txt,
          style: TextStyle(
            fontSize: height / 50,
            fontFamily: 'Gilroy_Medium',
            color: notifier.getgreay,
          ),
        ),
        const Spacer(),
        Text(
          name,
          style: TextStyle(
            fontSize: height / 50,
            fontFamily: 'Gilroy_Bold',
            color: notifier.getblack,
          ),
        ),
        SizedBox(width: width / 20),
      ],
    );
  }

  Widget tranjection(txt, name) {
    return Row(
      children: [
        SizedBox(width: width / 20),
        Text(
          txt,
          style: TextStyle(
            fontSize: height / 50,
            fontFamily: 'Gilroy_Medium',
            color: notifier.getgreay,
          ),
        ),
        const Spacer(),
        Text(
          name,
          style: TextStyle(
            fontSize: height / 50,
            fontFamily: 'Gilroy_Bold',
            color: notifier.getblack,
          ),
        ),
        SizedBox(width: width / 80),
        Icon(Icons.copy, size: height / 40, color: notifier.getblue),
        SizedBox(width: width / 20),
      ],
    );
  }

  Widget status(txt, name) {
    return Row(
      children: [
        SizedBox(width: width / 20),
        Text(
          txt,
          style: TextStyle(
            fontSize: height / 50,
            fontFamily: 'Gilroy_Medium',
            color: notifier.getgreay,
          ),
        ),
        const Spacer(),
        Container(
          height: height / 35,
          width: width / 7,
          decoration: BoxDecoration(color: notifier.getblue.withOpacity(0.10), borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: Text(
              EnString.paid,
              style: TextStyle(
                color: notifier.getblue,
                fontSize: height / 70,
                fontFamily: 'Gilroy_Medium',
              ),
            ),
          ),
        ),
        SizedBox(width: width / 20),
      ],
    );
  }
}
