import 'package:flutter/material.dart';
import 'package:golearn/screen/bottombar/profile/helpcentertabs/customerservices.dart';
import 'package:golearn/screen/bottombar/profiletabs/courses.dart';
import 'package:golearn/screen/bottombar/profiletabs/student.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../utils/mediaqury.dart';
import '../profiletabs/profilereviews.dart';

class JonathnaProfile extends StatefulWidget {
  const JonathnaProfile({Key? key}) : super(key: key);

  @override
  _JonathnaProfileState createState() => _JonathnaProfileState();
}

class _JonathnaProfileState extends State<JonathnaProfile>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  List<Widget> tabs = [
    const Courses(),
    const Student(),
    const ProfileReviews(),
  ];

  getdarkmodepreviousstate() async {
    final prefs = await SharedPreferences.getInstance();
    bool? previusstate = prefs.getBool("setIsDark");
    if (previusstate == null) {
      notifire.setIsDark = false;
    } else {
      notifire.setIsDark = previusstate;
    }
  }

  @override
  void initState() {
    super.initState();
    getdarkmodepreviousstate();
    controller = TabController(length: 3, vsync: this);
  }

  late ColorNotifier notifire;

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(
      backgroundColor: notifire.getprimeryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: height / 4,
                  width: width,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage("assets/profilebg.png"),
                          fit: BoxFit.cover)),
                ),
                Column(
                  children: [
                    SizedBox(height: height / 13),
                    Row(
                      children: [
                        SizedBox(
                          width: width / 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back,
                              color: notifire.getwihitecolor),
                        ),
                        SizedBox(
                          width: width / 80,
                        ),
                        const Spacer(),
                        Container(
                          height: height / 30,
                          width: width / 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: notifire.getwihitecolor),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.more_horiz,
                              color: notifire.getwihitecolor,
                              size: height / 40,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width / 20,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 25,
                ),
                Column(
                  children: [
                    SizedBox(height: height / 5.6),
                    Padding(
                      padding: EdgeInsets.only(left: width / 2.7),
                      child: Image.asset(
                        "assets/p1.png",
                        height: height / 8,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 40,
                ),
              ],
            ),
            SizedBox(height: height / 50),
            Text(
              EnString.jonathanwilliams,
              style: TextStyle(
                fontSize: height / 40,
                fontWeight: FontWeight.w900,
                fontFamily: 'Gilroy_Medium',
                color: notifire.getblack,
              ),
            ),
            SizedBox(height: height / 100),
            Text(
              EnString.senioruiuxdesigneratgoogle,
              style: TextStyle(
                fontSize: height / 60,
                fontWeight: FontWeight.w900,
                fontFamily: 'Gilroy_Medium',
                color: notifire.getgreay,
              ),
            ),
            SizedBox(
              height: height / 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "12",
                      style: TextStyle(
                        fontSize: height / 50,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Gilroy_Medium',
                        color: notifire.getblack,
                      ),
                    ),
                    SizedBox(
                      height: height / 120,
                    ),
                    Text(
                      "Courses",
                      style: TextStyle(
                        fontSize: height / 50,
                        fontFamily: 'Gilroy_Medium',
                        color: notifire.getgreay,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: width / 10,
                ),
                Container(
                  height: height / 20,
                  color: notifire.getgreay,
                  width: width / 200,
                ),
                SizedBox(
                  width: width / 10,
                ),
                Column(
                  children: [
                    Text(
                      "19000",
                      style: TextStyle(
                          fontSize: height / 50,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Gilroy Medium',
                          color: notifire.getblack),
                    ),
                    SizedBox(
                      height: height / 120,
                    ),
                    Text(
                      "Students",
                      style: TextStyle(
                        fontSize: height / 50,
                        fontFamily: 'Gilroy Medium',
                        color: notifire.getgreay,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: width / 10,
                ),
                Container(
                  height: height / 20,
                  color: notifire.getgreay,
                  width: width / 200,
                ),
                SizedBox(
                  width: width / 10,
                ),
                Column(
                  children: [
                    Text(
                      "16,309",
                      style: TextStyle(
                        fontSize: height / 50,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Gilroy Medium',
                        color: notifire.getblack,
                      ),
                    ),
                    SizedBox(
                      height: height / 120,
                    ),
                    Text(
                      "Students",
                      style: TextStyle(
                        fontSize: height / 50,
                        fontFamily: 'Gilroy Medium',
                        color: notifire.getgreay,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height / 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buttons(
                    "assets/Group.png",
                    "Follow",
                    notifire.getblue,
                    Colors.white,
                    Border.all(color: notifire.getblue),
                    SizedBox(
                      width: width / 10,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CustomerServices(),
                        ),
                      );
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.fade,
                      //         child: const Message()));
                    },
                    child: buttons(
                      "assets/Discovery.png",
                      "Message",
                      Colors.white,
                      notifire.getblue,
                      Border.all(color: notifire.getblue),
                      SizedBox(
                        width: width / 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height / 80),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: height / 1.3,
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    TabBar(
                      indicatorColor: notifire.getblue,
                      indicatorSize: TabBarIndicatorSize.label,
                      controller: controller,
                      labelColor: notifire.getblue,
                      unselectedLabelColor: Colors.grey,
                      tabs: const [
                        Tab(text: "Courses"),
                        Tab(text: "Students"),
                        Tab(text: "Reviews"),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.transparent,
                        child: TabBarView(
                          controller: controller,
                          children: tabs.map((tab) => tab).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buttons(img, name, clr, clr1, bor, siz) {
    return Container(
      height: height / 20,
      width: width / 2.5,
      decoration: BoxDecoration(
        border: bor,
        color: clr,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Center(
        child: Row(
          children: [
            siz,
            Image.asset(
              img,
              color: clr1,
              height: height / 50,
            ),
            SizedBox(
              width: width / 40,
            ),
            Text(
              name,
              style: TextStyle(
                  color: clr1, fontFamily: 'Gilroy Medium', fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
