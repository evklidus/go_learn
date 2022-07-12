import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:golearn/screen/bottombar/home/uiuxtabs/seeallreviews.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../utils/EnLanguage.dart';
import '../../../../utils/mediaqury.dart';
import '../../../../screen/custtomscreen/custtomreviews.dart';

class Reviews extends StatefulWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
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
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: notifier.getprimeryColor,
      body: Container(
        color: Colors.transparent,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          primary: true,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                SizedBox(height: height / 50),
                Row(
                  children: [
                    SizedBox(width: width / 20),
                    const Icon(Icons.star, color: Colors.orange),
                    SizedBox(width: width / 100),
                    Text(
                      "4.8 (4,479 reviews)",
                      style: TextStyle(color: notifier.getblack, fontSize: height / 45, fontFamily: 'Gilroy_Bold'),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SeeAllReviews(),
                          ),
                        );
                      },
                      child: Text(
                        EnString.seeall,
                        style: TextStyle(color: notifier.getblue, fontSize: height / 50, fontFamily: 'Gilroy_Bold'),
                      ),
                    ),
                    SizedBox(width: width / 20),
                  ],
                ),
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
                                  child: SingleChildScrollView(
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
                                          "assets/p2.png",
                                          EnString.chiekochute,
                                          "5",
                                          EnString.extraordinary,
                                          "597",
                                          "2 weeks ago",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.transparent,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        CusttomReviews(
                                          "assets/marielle.png",
                                          EnString.mariellewigington,
                                          "5",
                                          EnString.thecourse,
                                          "948",
                                          "2 weeks ago",
                                        ),
                                        SizedBox(height: height / 80),
                                        CusttomReviews(
                                          "assets/tanner.png",
                                          EnString.tannerstafford,
                                          "4",
                                          EnString.extraordinary,
                                          "836",
                                          "3 weeks ago",
                                        ),
                                        SizedBox(height: height / 80),
                                        CusttomReviews(
                                          "assets/lauralee.png",
                                          EnString.lauraleequintero,
                                          "5",
                                          EnString.awesomethisiswhat,
                                          "724",
                                          "3 weeks ago",
                                        ),
                                        SizedBox(height: height / 80),
                                        CusttomReviews(
                                          "assets/Chieko.png",
                                          EnString.chiekochute,
                                          "5",
                                          EnString.extraordinary,
                                          "597",
                                          "2 weeks ago",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.transparent,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        CusttomReviews(
                                          "assets/marielle.png",
                                          EnString.mariellewigington,
                                          "5",
                                          EnString.thecourse,
                                          "948",
                                          "2 weeks ago",
                                        ),
                                        SizedBox(height: height / 80),
                                        CusttomReviews(
                                          "assets/tanner.png",
                                          EnString.tannerstafford,
                                          "4",
                                          EnString.extraordinary,
                                          "836",
                                          "3 weeks ago",
                                        ),
                                        SizedBox(height: height / 80),
                                        CusttomReviews(
                                          "assets/lauralee.png",
                                          EnString.lauraleequintero,
                                          "5",
                                          EnString.awesomethisiswhat,
                                          "724",
                                          "3 weeks ago",
                                        ),
                                        SizedBox(height: height / 80),
                                        CusttomReviews(
                                          "assets/Chieko.png",
                                          EnString.chiekochute,
                                          "5",
                                          EnString.extraordinary,
                                          "597",
                                          "2 weeks ago",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.transparent,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        CusttomReviews(
                                          "assets/marielle.png",
                                          EnString.mariellewigington,
                                          "5",
                                          EnString.thecourse,
                                          "948",
                                          "2 weeks ago",
                                        ),
                                        SizedBox(height: height / 80),
                                        CusttomReviews(
                                          "assets/tanner.png",
                                          EnString.tannerstafford,
                                          "4",
                                          EnString.extraordinary,
                                          "836",
                                          "3 weeks ago",
                                        ),
                                        SizedBox(height: height / 80),
                                        CusttomReviews(
                                          "assets/lauralee.png",
                                          EnString.lauraleequintero,
                                          "5",
                                          EnString.awesomethisiswhat,
                                          "724",
                                          "3 weeks ago",
                                        ),
                                        SizedBox(height: height / 80),
                                        CusttomReviews(
                                          "assets/Chieko.png",
                                          EnString.chiekochute,
                                          "5",
                                          EnString.extraordinary,
                                          "597",
                                          "2 weeks ago",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.transparent,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        CusttomReviews(
                                          "assets/marielle.png",
                                          EnString.mariellewigington,
                                          "5",
                                          EnString.thecourse,
                                          "948",
                                          "2 weeks ago",
                                        ),
                                        SizedBox(height: height / 80),
                                        CusttomReviews(
                                          "assets/tanner.png",
                                          EnString.tannerstafford,
                                          "4",
                                          EnString.extraordinary,
                                          "836",
                                          "3 weeks ago",
                                        ),
                                        SizedBox(height: height / 80),
                                        CusttomReviews(
                                          "assets/lauralee.png",
                                          EnString.lauraleequintero,
                                          "5",
                                          EnString.awesomethisiswhat,
                                          "724",
                                          "3 weeks ago",
                                        ),
                                        SizedBox(height: height / 80),
                                        CusttomReviews(
                                          "assets/Chieko.png",
                                          EnString.chiekochute,
                                          "5",
                                          EnString.extraordinary,
                                          "597",
                                          "2 weeks ago",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.transparent,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        CusttomReviews(
                                          "assets/marielle.png",
                                          EnString.mariellewigington,
                                          "5",
                                          EnString.thecourse,
                                          "948",
                                          "2 weeks ago",
                                        ),
                                        SizedBox(height: height / 80),
                                        CusttomReviews(
                                          "assets/tanner.png",
                                          EnString.tannerstafford,
                                          "4",
                                          EnString.extraordinary,
                                          "836",
                                          "3 weeks ago",
                                        ),
                                        SizedBox(height: height / 80),
                                        CusttomReviews(
                                          "assets/lauralee.png",
                                          EnString.lauraleequintero,
                                          "5",
                                          EnString.awesomethisiswhat,
                                          "724",
                                          "3 weeks ago",
                                        ),
                                        SizedBox(height: height / 80),
                                        CusttomReviews(
                                          "assets/Chieko.png",
                                          EnString.chiekochute,
                                          "5",
                                          EnString.extraordinary,
                                          "597",
                                          "2 weeks ago",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.transparent,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        CusttomReviews(
                                          "assets/marielle.png",
                                          EnString.mariellewigington,
                                          "5",
                                          EnString.thecourse,
                                          "948",
                                          "2 weeks ago",
                                        ),
                                        SizedBox(height: height / 80),
                                        CusttomReviews(
                                          "assets/tanner.png",
                                          EnString.tannerstafford,
                                          "4",
                                          EnString.extraordinary,
                                          "836",
                                          "3 weeks ago",
                                        ),
                                        SizedBox(height: height / 80),
                                        CusttomReviews(
                                          "assets/lauralee.png",
                                          EnString.lauraleequintero,
                                          "5",
                                          EnString.awesomethisiswhat,
                                          "724",
                                          "3 weeks ago",
                                        ),
                                        SizedBox(height: height / 80),
                                        CusttomReviews(
                                          "assets/Chieko.png",
                                          EnString.chiekochute,
                                          "5",
                                          EnString.extraordinary,
                                          "597",
                                          "2 weeks ago",
                                        ),
                                      ],
                                    ),
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
            );
          },
        ),
      ),
    );
  }
}
