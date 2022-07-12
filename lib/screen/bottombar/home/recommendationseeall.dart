import 'package:flutter/material.dart';
import 'package:golearn/screen/bottombar/home/mostpopularall.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:golearn/utils/mediaqury.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RecommendationSeeAll extends StatefulWidget {
  const RecommendationSeeAll({Key? key}) : super(key: key);

  @override
  State<RecommendationSeeAll> createState() => _RecommendationSeeAllState();
}

class _RecommendationSeeAllState extends State<RecommendationSeeAll>
    with SingleTickerProviderStateMixin {
  late ColorNotifier notifier;
  TabController? controller;
  List<Widget> tabs = [
    const MostPopularAll(),
    const MostPopularAll(),
    const MostPopularAll(),

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
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(backgroundColor: notifier.getprimeryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,color: notifier.getblack, size: height / 30),
        ),
        title: Text(
          "Most Popular Courses",
          style: TextStyle(
            fontSize: height / 40,
            color: notifier.getblack,
            fontFamily: 'Gilroy_Bold',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(Icons.search_rounded,color: notifier.getblack,size: height/30)
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: height / 50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 20),
            child: Container(
              height: height / 1.22,
              color: Colors.transparent,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: const Color(0xffECF1F6),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.all(height / 200),
                      child: TabBar(
                        labelStyle:   const TextStyle(fontFamily: 'Gilroy_Bold'),
                        indicator: BoxDecoration(
                              color: notifier.getcardcolor,
                            borderRadius: BorderRadius.circular(10)),
                        indicatorColor: notifier.getblue,
                        controller: controller,
                        labelColor: notifier.getblack,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(
                            text: EnString.all,
                          ),
                          const Tab(text: "3D Design"),
                          const Tab(text: "Business"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: controller,
                      children: tabs.map((tab) => tab).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
