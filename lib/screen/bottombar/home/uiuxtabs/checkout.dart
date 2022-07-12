import 'package:flutter/material.dart';
import 'package:golearn/screen/bottombar/home/anrollcourse.dart';
import 'package:golearn/screen/custtomscreen/custtombutton.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../utils/EnLanguage.dart';
import '../../../../utils/mediaqury.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
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
                builder: (context) => const EnrollCourse(),
              ),
            );
          },
          child: Custombutton.button(notifier.getblue, EnString.checkoutcourse, width / 1.1),
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
          EnString.checkout,
          style: TextStyle(
            fontSize: height / 40,
            color: notifier.getblack,
            fontFamily: 'Gilroy_Bold',
          ),
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.all(15),
        //     child: Icon(
        //       Icons.search_rounded,
        //       color: notifier.getblack,
        //       size: height / 30,
        //     ),
        //   ),
        // ],
      ),
      body: Column(
        children: [
          SizedBox(height: height / 50),
          Row(
            children: [
              SizedBox(width: width / 20),
              Text(
                EnString.summary,
                style: TextStyle(
                  fontSize: height / 50,
                  fontFamily: 'Gilroy_Bold',
                  color: notifier.getblack,
                ),
              )
            ],
          ),
          SizedBox(height: height / 80),
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
              ),
              child: Container(
                height: height / 5,
                width: width / 1.1,
                decoration: BoxDecoration(
                  color: notifier.getcardcolor,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        color: Colors.transparent,
                        height: height / 4,
                        child: Image.asset(
                          "assets/uidesign.png",
                          height: height / 10,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: width / 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: height / 70),
                        Text(
                          EnString.uiuxforbeginner,
                          style: TextStyle(
                            color: notifier.getblack,
                            fontSize: height / 45,
                            fontFamily: 'Gilroy_Bold',
                          ),
                        ),
                        SizedBox(height: height / 100),
                        Text(
                          EnString.guy,
                          style: TextStyle(
                            color: notifier.getgreay,
                            fontSize: height / 50,
                            fontFamily: 'Gilroy_Medium',
                          ),
                        ),
                        SizedBox(height: height / 70),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: height / 40),
                            Icon(Icons.star, color: Colors.orange, size: height / 40),
                            Icon(Icons.star, color: Colors.orange, size: height / 40),
                            Icon(Icons.star, color: Colors.orange, size: height / 40),
                            SizedBox(width: width / 50),
                            Text(
                              "4.9 (12,990)",
                              style: TextStyle(
                                color: notifier.getgreay,
                                fontSize: height / 55,
                                fontFamily: 'Gilroy_Medium',
                              ),
                            ),
                            // SizedBox(width: width/10),
                            // Row(
                            //   children: [
                            //     Image.asset("assets/remove.png",height: height/27),
                            //   ],
                            // )
                          ],
                        ),
                        SizedBox(height: height / 70),
                        Text(
                          "\$200",
                          style: TextStyle(
                            color: notifier.getblue,
                            fontSize: height / 40,
                            fontFamily: 'Gilroy_Bold',
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: height / 40),
          Row(
            children: [
              SizedBox(width: width / 20),
              Text(
                EnString.paymentmethod,
                style: TextStyle(
                  fontSize: height / 50,
                  fontFamily: 'Gilroy_Bold',
                  color: notifier.getblack,
                ),
              )
            ],
          ),
          SizedBox(height: height / 65),
          visacard(),
          SizedBox(height: height / 40),
          Row(
            children: [
              SizedBox(width: width / 20),
              Text(
                EnString.discountcode,
                style: TextStyle(
                  fontSize: height / 50,
                  fontFamily: 'Gilroy_Bold',
                  color: notifier.getblack,
                ),
              )
            ],
          ),
          SizedBox(height: height / 60),
          discountcode(),
          SizedBox(height: height / 30),
          Row(
            children: [
              SizedBox(width: width / 20),
              Text(
                EnString.subtotal,
                style: TextStyle(
                  fontSize: height / 55,
                  fontFamily: 'Gilroy_Medium',
                  color: notifier.getgreay,
                ),
              ),
              const Spacer(),
              Text(
                "\$200",
                style: TextStyle(
                  fontSize: height / 55,
                  fontFamily: 'Gilroy_Bold',
                  color: notifier.getblack,
                ),
              ),
              SizedBox(width: width / 20),
            ],
          ),
          SizedBox(height: height / 45),
          Row(
            children: [
              SizedBox(width: width / 20),
              Text(
                EnString.discount,
                style: TextStyle(
                  fontSize: height / 55,
                  fontFamily: 'Gilroy_Medium',
                  color: notifier.getgreay,
                ),
              ),
              const Spacer(),
              Text(
                "-\$5.25",
                style: TextStyle(
                  fontSize: height / 55,
                  fontFamily: 'Gilroy_Bold',
                  color: const Color(0xffE8503A),
                ),
              ),
              SizedBox(width: width / 20),
            ],
          ),
          SizedBox(height: height / 60),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 20),
            child: const Divider(),
          ),
          SizedBox(height: height / 60),
          Row(
            children: [
              SizedBox(width: width / 20),
              Text(
                EnString.total,
                style: TextStyle(
                  fontSize: height / 55,
                  fontFamily: 'Gilroy_Medium',
                  color: notifier.getgreay,
                ),
              ),
              const Spacer(),
              Text(
                "\$194,75",
                style: TextStyle(
                  fontSize: height / 55,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy_Bold',
                  color: notifier.getblack,
                ),
              ),
              SizedBox(width: width / 20),
            ],
          ),
        ],
      ),
    );
  }

  Widget visacard() {
    return Container(
      height: height / 13,
      width: width / 1.1,
      decoration: BoxDecoration(
        color: notifier.getvisacolor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          SizedBox(width: width / 40),
          Image.asset("assets/visa.png", height: height / 20),
          SizedBox(width: width / 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height / 70),
              Text(
                "Visa",
                style: TextStyle(
                  fontSize: height / 55,
                  fontFamily: 'Gilroy_Bold',
                  color: notifier.getblack,
                ),
              ),
              Text("1234 ****",
                  style: TextStyle(
                    fontSize: height / 55,
                    fontFamily: 'Gilroy_Medium',
                    color: notifier.getgreay,
                  )),
            ],
          ),
          const Spacer(),
          Text(
            EnString.change,
            style: TextStyle(
              fontSize: height / 55,
              fontFamily: 'Gilroy_Medium',
              color: notifier.getblue,
            ),
          ),
          SizedBox(width: width / 20),
        ],
      ),
    );
  }

  Widget discountcode() {
    return Container(
      height: height / 13,
      width: width / 1.1,
      decoration: BoxDecoration(
        border: Border.all(color: notifier.getblue),
        color: notifier.getvisacolor,
        //   color:   Colors.redAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          SizedBox(width: width / 40),
          Image.asset("assets/coupne.png", height: height / 27),
          SizedBox(width: width / 50),
          Text(
            "COURUIX20",
            style: TextStyle(
              fontSize: height / 55,
              fontFamily: 'Gilroy_Bold',
              color: notifier.getblack,
            ),
          ),
          const Spacer(),
          Text(
            EnString.applycode,
            style: TextStyle(
              fontSize: height / 55,
              fontFamily: 'Gilroy_Medium',
              color: notifier.getblue,
            ),
          ),
          SizedBox(width: width / 20),
        ],
      ),
    );
  }
}
