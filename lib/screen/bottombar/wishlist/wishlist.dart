import 'package:flutter/material.dart';

import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';

import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WishList extends StatefulWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  late ColorNotifier notifier;
  List imagelist = [
    "assets/uidesign.png",
    "assets/webdesign.png",
    "assets/forextrade.png",
    "assets/photography.png",
  ];
  List titlt = [
    EnString.uidesignbootcamp,
    EnString.webdesignforbeginners,
    EnString.forextrading,
    EnString.photographybecome,
  ];
  List subtitle = [
    EnString.guy,
    EnString.jacobjones,
    EnString.kristinwatson,
    EnString.annetteblack,
  ];

  List price = [
    "\$94.22",
    "\$100",
    "\$120",
    "\$64.12",
  ];
  List rating = [
    "4.9 (12,990)",
    "4.8 (423)",
    "4.9 (2,123)",
    "4.5 (331)",
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
    );
  }
}
