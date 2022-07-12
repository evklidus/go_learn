import 'package:flutter/material.dart';
import 'package:golearn/components/boxes/w_padding_box.dart';
import 'package:golearn/features/course/presentation/screens/main/course_screen.dart';
import 'package:golearn/features/home/presentation/store/home_store.dart';
import 'package:golearn/screen/bottombar/home/recommendationseeall.dart';
import 'package:golearn/screen/bottombar/home/topmentor.dart';
import 'package:golearn/screen/bottombar/profile/notification.dart';
import 'package:golearn/screen/custtomscreen/recommendetion.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:golearn/utils/mediaqury.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../screen/custtomscreen/custoomcourses.dart';
import '../../../../../screen/custtomscreen/recommendetion.dart';

class HomeLoaded extends StatefulWidget {
  const HomeLoaded({Key? key}) : super(key: key);

  @override
  State<HomeLoaded> createState() => _HomeLoadedState();
}

class _HomeLoadedState extends State<HomeLoaded> {
  late ColorNotifier notifier;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator(int numPages) {
    List<Widget> list = [];
    for (int i = 0; i < numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  bool like = false;
  bool like1 = false;

  bool like2 = false;
  bool like3 = false;
  bool like4 = false;
  bool like5 = false;
  bool like6 = false;
  bool like7 = false;
  bool like8 = false;
  bool like9 = false;

  List topmemberimagelit = [
    "assets/p1.png",
    "assets/p2.png",
    "assets/p3.png",
    "assets/p4.png",
    "assets/p1.png",
    "assets/p2.png",
    "assets/p3.png",
  ];
  bool showImageWidget = false;

  List catogerylist = [
    "Art and Humanities",
    "Finance & Accounting",
    "Business",
    "Design",
    "Computer",
    "Information Technology",
  ];

  List popularmentorstext = ["Jem's", "Johan", "Deny", "Tani", "Vatsal", "Nija", "Andy"];

  List catogeryimage = [
    "assets/laptop.png",
    "assets/erth.png",
    "assets/art.png",
    "assets/gym.png",
    "assets/com.png",
    "assets/information.png",
  ];

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3.0),
      height: 8.0,
      width: isActive ? 8.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? notifier.getblue : notifier.getwihitecolor,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

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

  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;
  bool selected4 = false;
  bool selected5 = false;
  bool selected6 = false;
  bool selected7 = false;
  bool selected8 = false;
  bool selected9 = false;
  bool selected0 = false;

  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    final store = context.read<HomeStore>();

    return Scaffold(
      backgroundColor: notifier.getprimeryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height / 17),
            Row(
              children: [
                SizedBox(width: width / 20),
                Image.asset(
                  "assets/p1.png",
                  height: height / 20,
                ),
                SizedBox(width: width / 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      EnString.goodmornin,
                      style: TextStyle(color: notifier.getblack, fontSize: height / 50, fontFamily: 'Gilroy_Medium'),
                    ),
                    Text(
                      EnString.andrewainsley,
                      style: TextStyle(color: notifier.getblack, fontSize: height / 50, fontFamily: 'Gilroy_Bold'),
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                    onTap: () =>
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileNotification())),
                    child: Image.asset("assets/Notification.png", color: notifier.getblack, height: height / 25)),
                SizedBox(width: width / 20),
              ],
            ),
            SizedBox(height: height / 35),
            serarchtextField(
              notifier.getblack,
              notifier.getgreay,
              notifier.getblue,
              EnString.search,
            ),
            SizedBox(height: height / 50),
            Container(
              color: Colors.transparent,
              height: MediaQuery.of(context).size.height / 5,
              child: Stack(
                children: [
                  PageView.builder(
                      physics: const ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      itemCount: store.entity!.banners.length,
                      itemBuilder: (context, index) {
                        return WPaddingBox(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              store.entity!.banners[index].imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }),
                  Column(
                    children: [
                      SizedBox(height: height / 5.5),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: _buildPageIndicator(store.entity!.banners.length)),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: width / 35),
            catogery(),
            SizedBox(height: height / 50),
            Row(
              children: [
                SizedBox(width: width / 20),
                Text(
                  EnString.topmembers,
                  style: TextStyle(color: notifier.getblack, fontSize: height / 50, fontFamily: 'Gilroy_Bold'),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TopMentors(),
                      ),
                    );
                  },
                  child: Text(
                    EnString.seeall,
                    style: TextStyle(fontSize: height / 50, fontFamily: 'Gilroy_Bold', color: notifier.getblue),
                  ),
                ),
                SizedBox(width: width / 20),
              ],
            ),
            SizedBox(height: height / 60),
            WPaddingBox(
              child: SizedBox(
                height: height / 8,
                child: ListView.builder(
                  itemCount: store.entity?.mentors.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CourseScreen(),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(200),
                            child: Image.network(
                              store.entity!.mentors[index].imageUrl,
                              height: 15.w,
                              width: 15.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: height / 100),
                        SizedBox(
                          width: 60,
                          child: Text(
                            store.entity!.mentors[index].name,
                            maxLines: 2,
                            style: TextStyle(
                              color: notifier.getblack,
                              fontSize: 15.sp,
                              fontFamily: 'Gilroy_Medium',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: height / 60),
            Row(
              children: [
                SizedBox(width: width / 20),
                Text(
                  EnString.mostpopularcourse,
                  style: TextStyle(color: notifier.getblack, fontSize: height / 50, fontFamily: 'Gilroy_Bold'),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RecommendationSeeAll(),
                      ),
                    );
                  },
                  child: Text(
                    EnString.seeall,
                    style: TextStyle(fontSize: height / 50, fontFamily: 'Gilroy_Bold', color: notifier.getblue),
                  ),
                ),
                SizedBox(width: width / 20),
              ],
            ),
            SizedBox(height: height / 50),
            WPaddingBox(
              child: SizedBox(
                height: height / 2.6,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: store.entity!.recomendations.length,
                  itemBuilder: (context, index) {
                    return CusttomPopularfoodlist(
                      store.entity!.recomendations[index].imageUrl,
                      height / 2.6,
                      width / 1.3,
                      height / 5,
                      width / 1.3,
                      width / 100,
                      store.entity!.recomendations[index].title,
                      store.entity!.recomendations[index].authorName,
                      store.entity!.recomendations[index].price,
                      store.entity!.recomendations[index].stars,
                      store.entity!.recomendations[index].studentsCount,
                      width / 4.7,
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            like = !like;
                          });
                        },
                        child: Image.asset(
                          like ? "assets/like.png" : "assets/unlike.png",
                          height: height / 25,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: height / 45),
            Row(
              children: [
                SizedBox(width: width / 20),
                Text(
                  EnString.mostpopularcourses,
                  style: TextStyle(color: notifier.getblack, fontSize: height / 50, fontFamily: 'Gilroy_Bold'),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RecommendationSeeAll(),
                      ),
                    );
                  },
                  child: Text(
                    EnString.seeall,
                    style: TextStyle(fontSize: height / 50, fontFamily: 'Gilroy_Bold', color: notifier.getblue),
                  ),
                ),
                SizedBox(width: width / 20),
              ],
            ),
            SizedBox(height: height / 50),
            Column(
              children: store.entity!.popularCourses
                  .map(
                    (course) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CourseScreen(),
                          ),
                        );
                      },
                      child: CusttomCourses(
                        store.entity!.popularCourses[0].imageUrl,
                        Colors.transparent,
                        store.entity!.popularCourses[0].title,
                        "\$${store.entity!.popularCourses[0].price}",
                        width / 7,
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              like7 = !like7;
                            });
                          },
                          child: Image.asset(
                            like7 ? "assets/like.png" : "assets/unlike.png",
                            height: height / 35,
                          ),
                        ),
                        stars: store.entity!.popularCourses[0].stars,
                        studentsCount: store.entity!.popularCourses[0].studentsCount,
                        label: store.entity!.popularCourses[0].label,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget catogery() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width / 20),
      child: Container(
        color: Colors.transparent,
        height: height / 17,
        width: width,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount: catogerylist.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: height / 25,
                // width: width / 2,
                decoration: BoxDecoration(
                    border: Border.all(color: notifier.getgreay.withOpacity(0.4)),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width / 25),
                        child: Image.asset(catogeryimage[index], height: height / 45),
                      ),
                      SizedBox(width: width / 50),
                      Padding(
                        padding: EdgeInsets.only(right: width / 25),
                        child: Text(
                          catogerylist[index],
                          style: TextStyle(color: notifier.getblack, fontFamily: 'Gilroy_Bold', fontSize: height / 65),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget serarchtextField(textclr, hintclr, borderclr, hinttext) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width / 18),
      child: Container(
        color: Colors.transparent,
        height: height / 15,
        child: TextField(
          autofocus: false,
          style: TextStyle(
            fontSize: height / 50,
            color: textclr,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hinttext,
            prefixIcon: const Icon(Icons.search),
            suffixIcon: Icon(
              Icons.add_road_rounded,
              color: notifier.getblue,
            ),
            hintStyle: TextStyle(color: hintclr, fontSize: height / 60),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderclr),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }

  Widget conference(se, img) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CourseScreen(),
            ),
          );
        },
        child: Card(
          color: notifier.getwihitecolor,
          child: Container(
            decoration: BoxDecoration(
              color: notifier.getwihitecolor,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            height: height / 7,
            width: width,
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 5, top: 5),
              child: Row(
                children: [
                  Container(
                    width: width / 5,
                    height: height / 8,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        img,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: height / 200,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: width / 50,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    "1 ST MAY - SAT -2:00 PM",
                                    style: TextStyle(
                                        fontFamily: 'Gilroy Medium',
                                        color: Color(0xff4A43EC),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: width / 5.2,
                                  ),
                                  se,
                                ],
                              ),
                              Text(
                                "3D Design",
                                style: TextStyle(
                                    fontFamily: 'Gilroy_Bold',
                                    color: notifier.getblack,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "\$48",
                                style: TextStyle(
                                    fontFamily: 'Gilroy_Bold',
                                    color: notifier.getblue,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: height / 200,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: height / 50,
                                  ),
                                  const Text(
                                    " 36 Guild Street London , UK",
                                    style: TextStyle(
                                      fontFamily: 'Gilroy Medium',
                                      color: Colors.grey,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 80,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
