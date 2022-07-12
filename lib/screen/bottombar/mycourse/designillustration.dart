import 'package:flutter/material.dart';
import 'package:golearn/screen/bottombar/mycourse/Illustrationtabs/Illustrationlessees.dart';
import 'package:golearn/screen/bottombar/mycourse/Illustrationtabs/certificate.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../utils/EnLanguage.dart';
import '../../../utils/mediaqury.dart';

class Designillustration extends StatefulWidget {
  const Designillustration({Key? key}) : super(key: key);

  @override
  State<Designillustration> createState() => _DesignillustrationState();
}

class _DesignillustrationState extends State<Designillustration> with SingleTickerProviderStateMixin{
  TabController? controller;
  List<Widget> tabs = [
    const Illustrationlessees(),
    const Certificates(),
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
    controller = TabController(length: 2, vsync: this);
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
          child: Icon(Icons.arrow_back,color: notifier.getblack, size: height / 30),
        ),
        title: Text(
          "3D Design Illustration",
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
                    Tab(text: EnString.lessees),
                    Tab(text: EnString.certificates),
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
