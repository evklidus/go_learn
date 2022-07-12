import 'package:flutter/material.dart';
import 'package:golearn/screen/bottombar/profile/helpcentertabs/contactus.dart';
import 'package:golearn/screen/bottombar/profile/helpcentertabs/faq.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/EnLanguage.dart';
import '../../../utils/mediaqury.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> with SingleTickerProviderStateMixin{
  TabController? controller;
  List<Widget> tabs = [
    const Faq(),
    const ContactUs(),
  ];

  @override
  void initState() {
    super.initState();
    getdarkmodepreviousstate();
    controller = TabController(length: 2, vsync: this);
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

  late ColorNotifier notifier;
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
          child: Icon(Icons.arrow_back , size: height / 30,color: notifier.getblack,),
        ),
        title: Text(
          EnString.helpcenter,
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
                border: Border.all(color: notifier.getblack,),
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
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: <Widget>[
                TabBar(
                  indicatorColor: notifier.getblue,
                  controller: controller,
                  labelColor: notifier.getblue,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(text: EnString.faq),
                    Tab(text: EnString.contactus),
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
        ],
      ),
    );
  }
}
