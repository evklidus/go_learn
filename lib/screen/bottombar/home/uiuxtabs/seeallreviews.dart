import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:golearn/utils/mediaqury.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../custtomscreen/custtomreviews.dart';

class SeeAllReviews extends StatefulWidget {
  const SeeAllReviews({Key? key}) : super(key: key);

  @override
  State<SeeAllReviews> createState() => _SeeAllReviewsState();
}

class _SeeAllReviewsState extends State<SeeAllReviews> {
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
          EnString.reviews,
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
            // SizedBox(height: height/50),
            Container(
              height: height / 1,
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.only(left: width / 20, right: width / 20, top: height / 80),
                child: DefaultTabController(
                  length: 7,
                  child: Column(
                    children: <Widget>[
                      ButtonsTabBar(
                        radius: 30,
                        borderWidth: 1,
                        borderColor: Colors.transparent,
                        unselectedBorderColor: notifier.getblue,
                        backgroundColor: notifier.getblue,
                        unselectedBackgroundColor: Colors.transparent,
                        unselectedLabelStyle: TextStyle(color: notifier.getblue, fontFamily: 'Gilroy_Bold'),
                        labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        tabs: [
                          Tab(
                            icon: Padding(
                              padding: EdgeInsets.symmetric(horizontal: width / 50),
                              child: Icon(
                                Icons.star,
                                size: height / 40,
                              ),
                            ),
                            text: "All  ",
                          ),
                          Tab(
                            icon: Padding(
                              padding: EdgeInsets.symmetric(horizontal: width / 50),
                              child: Icon(
                                Icons.star,
                                size: height / 40,
                              ),
                            ),
                            text: "5  ",
                          ),
                          Tab(
                            icon: Padding(
                              padding: EdgeInsets.symmetric(horizontal: width / 50),
                              child: Icon(
                                Icons.star,
                                size: height / 40,
                              ),
                            ),
                            text: "4  ",
                          ),
                          Tab(
                            icon: Padding(
                              padding: EdgeInsets.symmetric(horizontal: width / 50),
                              child: Icon(
                                Icons.star,
                                size: height / 40,
                              ),
                            ),
                            text: "3  ",
                          ),
                          Tab(
                            icon: Padding(
                              padding: EdgeInsets.symmetric(horizontal: width / 50),
                              child: Icon(
                                Icons.star,
                                size: height / 40,
                              ),
                            ),
                            text: "2  ",
                          ),
                          Tab(
                            icon: Padding(
                              padding: EdgeInsets.symmetric(horizontal: width / 50),
                              child: Icon(
                                Icons.star,
                                size: height / 40,
                              ),
                            ),
                            text: "1  ",
                          ),
                          Tab(
                            icon: Padding(
                              padding: EdgeInsets.symmetric(horizontal: width / 50),
                              child: Icon(
                                Icons.star,
                                size: height / 40,
                              ),
                            ),
                            text: "0  ",
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: <Widget>[
                            Container(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  CusttomReviews(
                                    "assets/p3.png",
                                    EnString.mariellewigington,
                                    "5",
                                    EnString.thecourse,
                                    "948",
                                    "2 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p2.png",
                                    EnString.tannerstafford,
                                    "4",
                                    EnString.extraordinary,
                                    "836",
                                    "3 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p4.png",
                                    EnString.lauraleequintero,
                                    "5",
                                    EnString.awesomethisiswhat,
                                    "724",
                                    "3 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p1.png",
                                    EnString.chiekochute,
                                    "5",
                                    EnString.extraordinary,
                                    "597",
                                    "2 weeks ago",
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  CusttomReviews(
                                    "assets/p3.png",
                                    EnString.mariellewigington,
                                    "5",
                                    EnString.thecourse,
                                    "948",
                                    "2 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p2.png",
                                    EnString.tannerstafford,
                                    "4",
                                    EnString.extraordinary,
                                    "836",
                                    "3 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p4.png",
                                    EnString.lauraleequintero,
                                    "5",
                                    EnString.awesomethisiswhat,
                                    "724",
                                    "3 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p1.png",
                                    EnString.chiekochute,
                                    "5",
                                    EnString.extraordinary,
                                    "597",
                                    "2 weeks ago",
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  CusttomReviews(
                                    "assets/p3.png",
                                    EnString.mariellewigington,
                                    "5",
                                    EnString.thecourse,
                                    "948",
                                    "2 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p2.png",
                                    EnString.tannerstafford,
                                    "4",
                                    EnString.extraordinary,
                                    "836",
                                    "3 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p4.png",
                                    EnString.lauraleequintero,
                                    "5",
                                    EnString.awesomethisiswhat,
                                    "724",
                                    "3 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p1.png",
                                    EnString.chiekochute,
                                    "5",
                                    EnString.extraordinary,
                                    "597",
                                    "2 weeks ago",
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  CusttomReviews(
                                    "assets/p3.png",
                                    EnString.mariellewigington,
                                    "5",
                                    EnString.thecourse,
                                    "948",
                                    "2 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p2.png",
                                    EnString.tannerstafford,
                                    "4",
                                    EnString.extraordinary,
                                    "836",
                                    "3 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p4.png",
                                    EnString.lauraleequintero,
                                    "5",
                                    EnString.awesomethisiswhat,
                                    "724",
                                    "3 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p1.png",
                                    EnString.chiekochute,
                                    "5",
                                    EnString.extraordinary,
                                    "597",
                                    "2 weeks ago",
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  CusttomReviews(
                                    "assets/p3.png",
                                    EnString.mariellewigington,
                                    "5",
                                    EnString.thecourse,
                                    "948",
                                    "2 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p2.png",
                                    EnString.tannerstafford,
                                    "4",
                                    EnString.extraordinary,
                                    "836",
                                    "3 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p4.png",
                                    EnString.lauraleequintero,
                                    "5",
                                    EnString.awesomethisiswhat,
                                    "724",
                                    "3 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p1.png",
                                    EnString.chiekochute,
                                    "5",
                                    EnString.extraordinary,
                                    "597",
                                    "2 weeks ago",
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  CusttomReviews(
                                    "assets/p3.png",
                                    EnString.mariellewigington,
                                    "5",
                                    EnString.thecourse,
                                    "948",
                                    "2 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p2.png",
                                    EnString.tannerstafford,
                                    "4",
                                    EnString.extraordinary,
                                    "836",
                                    "3 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p4.png",
                                    EnString.lauraleequintero,
                                    "5",
                                    EnString.awesomethisiswhat,
                                    "724",
                                    "3 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p1.png",
                                    EnString.chiekochute,
                                    "5",
                                    EnString.extraordinary,
                                    "597",
                                    "2 weeks ago",
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  CusttomReviews(
                                    "assets/p3.png",
                                    EnString.mariellewigington,
                                    "5",
                                    EnString.thecourse,
                                    "948",
                                    "2 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p2.png",
                                    EnString.tannerstafford,
                                    "4",
                                    EnString.extraordinary,
                                    "836",
                                    "3 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p4.png",
                                    EnString.lauraleequintero,
                                    "5",
                                    EnString.awesomethisiswhat,
                                    "724",
                                    "3 weeks ago",
                                  ),
                                  SizedBox(height: height / 80),
                                  CusttomReviews(
                                    "assets/p1.png",
                                    EnString.chiekochute,
                                    "5",
                                    EnString.extraordinary,
                                    "597",
                                    "2 weeks ago",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
