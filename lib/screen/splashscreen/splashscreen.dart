import 'dart:async';

import 'package:flutter/material.dart';
import 'package:golearn/screen/onbonding/onbonding.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:golearn/utils/mediaqury.dart';
import 'package:provider/provider.dart';

class Splshscreen extends StatefulWidget {
  const Splshscreen({Key? key}) : super(key: key);

  @override
  State<Splshscreen> createState() => _SplshscreenState();
}

class _SplshscreenState extends State<Splshscreen> {
  late ColorNotifier notifier;

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Onbonding(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(
      backgroundColor: notifier.getblue,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: height / 3.2),
            Image.asset("assets/logo.png", height: height / 4.5),
            SizedBox(height: height / 200),
            Text(
              EnString.golearn,
              style: TextStyle(
                fontFamily: 'Gilroy_Bold',
                fontSize: height / 20,
                color: notifier.getwihitecolor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
