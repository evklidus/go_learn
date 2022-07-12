import 'package:flutter/material.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/EnLanguage.dart';
import '../../../utils/mediaqury.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  late ColorNotifier notifier;
  int _groupValue = 0;
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
          child: Icon(Icons.arrow_back, size: height / 30, color: notifier.getblack),
        ),
        title: Text(
          EnString.language,
          style: TextStyle(
            fontSize: height / 40,
            color: notifier.getblack,
            fontFamily: 'Gilroy_Bold',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height / 50),
            Row(
              children: [
                SizedBox(width: width / 20),
                Text(
                  EnString.suggested,
                  style: TextStyle(
                    color: notifier.getblack,
                    fontFamily: 'Gilroy_Bold',
                    fontSize: height / 40,
                  ),
                )
              ],
            ),
            SizedBox(height: height / 40),
            sugesttype(EnString.english, 0),
            sugesttype(EnString.englishuk, 1),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 20),
              child: Divider(
                color: notifier.getgreay,
              ),
            ),
            SizedBox(height: height / 50),
            Row(
              children: [
                SizedBox(width: width / 20),
                Text(
                  EnString.language,
                  style: TextStyle(
                    color: notifier.getblack,
                    fontFamily: 'Gilroy_Bold',
                    fontSize: height / 40,
                  ),
                )
              ],
            ),
            SizedBox(height: height / 40),
            sugesttype(EnString.mandarin, 2),
            sugesttype(EnString.hindi, 3),
            sugesttype(EnString.spanish, 4),
            sugesttype(EnString.french, 5),
            sugesttype(EnString.arabic, 6),
            sugesttype(EnString.bengali, 7),
            sugesttype(EnString.russian, 8),
            sugesttype(EnString.indonesia, 9),
          ],
        ),
      ),
    );
  }

  Widget sugesttype(title, val) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            _groupValue = val as int;
          },
        );
      },
      child: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            SizedBox(width: width / 20),
            Text(
              title,
              style: TextStyle(
                fontSize: height / 45,
                fontFamily: 'Gilroy_Bold',
                color: notifier.getblack,
              ),
            ),
            const Spacer(),
            Radio(
              activeColor: notifier.getblue,
              value: val as int,
              groupValue: _groupValue,
              onChanged: (value) {
                setState(() {
                  _groupValue = value as int;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
