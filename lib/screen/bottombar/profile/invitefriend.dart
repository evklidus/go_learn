import 'package:flutter/material.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/EnLanguage.dart';
import '../../../utils/mediaqury.dart';

class InviteFriend extends StatefulWidget {
  const InviteFriend({Key? key}) : super(key: key);

  @override
  State<InviteFriend> createState() => _InviteFriendState();
}

class _InviteFriendState extends State<InviteFriend> {
  late ColorNotifier notifier;

  List imagelist = [
    "assets/p1.png",
    "assets/p2.png",
    "assets/p3.png",
    "assets/p4.png",
    "assets/t1.png",
    "assets/t2.png",
    "assets/t3.png",
    "assets/t5.png",
    "assets/t7.png",
  ];

  List titlelist = [
    EnString.tynishaobey,
    EnString.florenciodorrance,
    EnString.chantalshelburne,
    EnString.marylandwinkles,
    EnString.rodolfogoode,
    EnString.bennyspanbauer,
    EnString.tyradhillon,
    EnString.jameleusebio,
    EnString.pedrohuard,
  ];

  List subtitle = [
    "+1-300-555-0135",
    "+1-202-555-0136",
    "+1-300-555-0119",
    "+1-300-555-0161",
    "+1-300-555-0136",
    "+1-202-555-0167",
    "+1-202-555-0119",
    "+1-300-555-0171",
    "+1-202-555-0171"
  ];
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
          EnString.invitefriends,
          style: TextStyle(
            fontSize: height / 40,
            color: notifier.getblack,
            fontFamily: 'Gilroy_Bold',
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: imagelist.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: width / 20),
                        Image.asset(imagelist[index], height: height / 15),
                        SizedBox(width: width / 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              titlelist[index],
                              style: TextStyle(
                                color: notifier.getblack,
                                fontSize: height / 45,
                                fontFamily: 'Gilroy_Bold',
                              ),
                            ),
                            Text(
                              subtitle[index],
                              style: TextStyle(
                                color: notifier.getgreay,
                                fontSize: height / 55,
                                fontFamily: 'Gilroy_Medium',
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height: height / 25,
                          width: width / 5,
                          decoration: BoxDecoration(
                            color: notifier.getblue,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "Invite",
                              style: TextStyle(
                                color: notifier.getwihitecolor,
                                fontSize: height / 60,
                                fontFamily: 'Gilroy_Medium',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: width / 20)
                      ],
                    ),
                    SizedBox(height: height / 40)
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
