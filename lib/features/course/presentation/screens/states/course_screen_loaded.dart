import 'package:flutter/material.dart';
import 'package:golearn/features/course/presentation/store/course_store.dart';
import 'package:golearn/screen/bottombar/home/uiuxtabs/checkout.dart';
import 'package:golearn/features/course/presentation/widgets/lessees.dart';
import 'package:golearn/features/course/presentation/widgets/reviews.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../utils/mediaqury.dart';
import '../../../../../screen/custtomscreen/custtombutton.dart';
import '../../widgets/about.dart';

class CourseScreenLoaded extends StatefulWidget {
  const CourseScreenLoaded({Key? key}) : super(key: key);

  @override
  State<CourseScreenLoaded> createState() => _IntroState();
}

class _IntroState extends State<CourseScreenLoaded> with SingleTickerProviderStateMixin {
  late ColorNotifier notifier;
  TabController? controller;
  List<Widget> tabs = [
    const About(),
    const Lessees(),
    const Reviews(),
  ];

  get expandedHeight => height / 1.84;

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
    controller = TabController(length: 3, vsync: this);
  }

  double top = 0;

  bool like = false;

  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    final store = context.read<CourseStore>();

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
                builder: (context) => const CheckOut(),
              ),
            );
          },
          child: Custombutton.button(notifier.getblue, "Enroll Course - \$${store.entity!.price}", width / 1.1),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          // print("==============================1  $expandedHeight");
          return <Widget>[
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverSafeArea(
                // top: false,
                sliver: SliverAppBar(
                  leading: GestureDetector(
                      onTap: () => Navigator.pop(context), child: Icon(Icons.arrow_back, color: notifier.getblack)),
                  backgroundColor: notifier.getprimeryColor,
                  elevation: 0,
                  // bottom: TabBar(
                  //   // These are the widgets to put in each tab in the tab bar.
                  //   tabs: tabs.map((name) => Tab(text: 'Hello')).toList(),
                  // ),
                  expandedHeight: expandedHeight,
                  floating: true,
                  pinned: true,
                  // title: Padding(
                  //   padding:   EdgeInsets.only(top: 50),
                  //   child: Text(
                  //     EnString.introtouiux,
                  //     style: TextStyle(
                  //       fontSize: height / 30,
                  //       fontFamily: 'Gilroy_Bold',
                  //       color: notifier.getblack,
                  //     ),
                  //   ),
                  // ),
                  flexibleSpace: FlexibleSpaceBar(
                    // titlePadding:
                    //     EdgeInsets.only(bottom: height / 6.5, left: width / 17),
                    // title: Text(
                    //   EnString.introtouiux,
                    //   style: TextStyle(
                    //     fontSize: height / 47,
                    //     fontFamily: 'Gilroy_Bold',
                    //     color: notifier.getblack,
                    //   ),
                    // ),
                    // centerTitle: true,
                    // title: Text("Collapsing Toolbar",
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 16.0,
                    //     ),
                    //     ),
                    background: Column(
                      children: [
                        Image.network(
                          store.entity!.imageUrl,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: height / 60),
                        Row(
                          children: [
                            SizedBox(width: width / 20),
                            Text(
                              store.entity!.title,
                              style: TextStyle(
                                fontSize: height / 30,
                                fontFamily: 'Gilroy_Bold',
                                color: notifier.getblack,
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  like = !like;
                                });
                              },
                              child: Image.asset(like ? "assets/like.png" : "assets/unlike.png", height: height / 30),
                            ),
                            SizedBox(width: width / 20),
                          ],
                        ),
                        SizedBox(height: height / 100),
                        Row(
                          children: [
                            SizedBox(width: width / 20),
                            Container(
                              height: height / 30,
                              width: width / 5.8,
                              decoration: BoxDecoration(
                                color: notifier.getblue.withOpacity(0.10),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  store.entity!.label,
                                  style: TextStyle(
                                    color: notifier.getblue,
                                    fontSize: height / 90,
                                    fontFamily: 'Gilroy_Bold',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: width / 30),
                            Icon(Icons.star, color: Colors.orange, size: height / 50),
                            SizedBox(width: width / 100),
                            Text(
                              "${store.entity!.stars} (${store.entity!.reviewsCount} Reviews)",
                              style: TextStyle(
                                color: notifier.getblack,
                                fontSize: height / 70,
                                fontFamily: 'Gilroy_Medium',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height / 50),
                        Row(
                          children: [
                            SizedBox(width: width / 20),
                            Text(
                              "\$${store.entity!.price}",
                              style:
                                  TextStyle(color: notifier.getblue, fontSize: height / 35, fontFamily: 'Gilroy_Bold'),
                            ),
                            SizedBox(width: width / 17),
                            Text(
                              "\$${store.entity!.oldPrice}",
                              style: TextStyle(
                                  color: notifier.getgreay, fontSize: height / 50, fontFamily: 'Gilroy_Medium'),
                            ),
                          ],
                        ),
                        SizedBox(height: height / 50),
                        Row(
                          children: [
                            SizedBox(width: width / 20),
                            Icon(
                              Icons.person,
                              size: height / 50,
                              color: notifier.getblue,
                            ),
                            SizedBox(width: width / 100),
                            Text(
                              store.entity!.studentsCount,
                              style: TextStyle(
                                  color: notifier.getblack, fontSize: height / 60, fontFamily: 'Gilroy_Medium'),
                            ),
                            SizedBox(width: width / 10),
                            Icon(
                              Icons.timer,
                              size: height / 50,
                              color: notifier.getblue,
                            ),
                            SizedBox(width: width / 100),
                            Text(
                              store.entity!.hours.toString() + " Hours",
                              style: TextStyle(
                                  color: notifier.getblack, fontSize: height / 60, fontFamily: 'Gilroy_Medium'),
                            ),
                            SizedBox(width: width / 8),
                            Icon(
                              Icons.collections,
                              size: height / 50,
                              color: notifier.getblue,
                            ),
                            SizedBox(width: width / 100),
                            Text(
                              EnString.collection,
                              style: TextStyle(
                                  color: notifier.getblack, fontSize: height / 60, fontFamily: 'Gilroy_Medium'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // SliverPersistentHeader(
            //   delegate: _SliverAppBarDelegate(),
            //   pinned: false,
//            ),
          ];
        },
        body: Column(
          children: [
            // SizedBox(height: height / 80),
            Expanded(
              child: Column(
                children: <Widget>[
                  TabBar(
                    physics: const NeverScrollableScrollPhysics(),
                    isScrollable: false,
                    indicatorColor: notifier.getblue,
                    controller: controller,
                    labelColor: notifier.getblue,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: EnString.about),
                      Tab(text: EnString.lessees),
                      Tab(text: EnString.reviews),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: controller,
                      children: tabs.map((tab) => tab).toList(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
