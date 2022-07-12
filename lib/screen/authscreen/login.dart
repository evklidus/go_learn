import 'package:flutter/material.dart';
import 'package:golearn/screen/authscreen/email.dart';
import 'package:golearn/screen/authscreen/phonenumber.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utils/mediaqury.dart';

class Login extends StatefulWidget {
  final int index;
  const Login(this.index, {Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  late ColorNotifier notifier;
  String? _selectedindex;
  TabController? controller;
  List<Widget> tabs = [const Email(), const Phonenumber()];

  @override
  void initState() {
    super.initState();
    // _selectedindex = widget.index.toString();
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

  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    final List<Map> _myjson = [
      {
        'id': '1',
        'assets': 'assets/flag.png',
        'Text': "+91",
      },
      {
        'id': '2',
        'assets': 'assets/flagtwo.png.png',
        'Text': "+92",
      },
      {
        'id': '3',
        'assets': 'assets/flagthree.jpg',
        'Text': "+93",
      },
      {
        'id': '4',
        'assets': 'assets/flagfour.png',
        'Text': "+91",
      },
      {
        'id': '5',
        'assets': 'assets/flagfive.png',
        'Text': "+95",
      }
    ];
    return Scaffold(
      backgroundColor: notifier.getprimeryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height / 15),
            Row(
              children: [
                SizedBox(width: width / 20),
                Text(
                  EnString.loginaccount,
                  style: TextStyle(
                    color: notifier.getblack,
                    fontSize: height / 35,
                    fontFamily: 'Gilroy_Bold',
                  ),
                ),
                const Spacer(),
                DropdownButtonHideUnderline(
                  child: ButtonTheme(
                    // buttonColor: notifire.getdarkpinkscolor,
                    child: DropdownButton<String>(
                      // dropdownColor: notifire.getpinkscolor.withOpacity(0.4),
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: notifier.getblack,
                      ),
                      hint: Container(
                        height: height / 25,
                        width: width / 7,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: notifier.getblue),
                          image: const DecorationImage(image: AssetImage("assets/flagfour.png"), fit: BoxFit.cover),
                        ),
                      ),
                      value: _selectedindex,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedindex = newValue;
                        });
                      },
                      items: _myjson.map(
                        (Map map) {
                          return DropdownMenuItem<String>(
                            value: map["id"].toString(),
                            child: Container(
                              height: height / 25,
                              width: width / 7,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: notifier.getblue),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        map["assets"].toString(),
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ),
                SizedBox(width: width / 20),
              ],
            ),
            Row(
              children: [
                SizedBox(width: width / 20),
                Text(
                  EnString.hellowelcome,
                  style: TextStyle(fontSize: height / 45, fontFamily: 'Gilroy_Medium', color: notifier.getgreay),
                ),
              ],
            ),
            SizedBox(height: height / 45),
            Container(
              color: Colors.transparent,
              height: height / 1.1,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width / 20),
                    child: Container(
                      height: height / 1.2,
                      color: Colors.transparent,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 45,
                            decoration:
                                BoxDecoration(color: const Color(0xffECF1F6), borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.all(height / 200),
                              child: TabBar(
                                labelStyle: const TextStyle(fontFamily: 'Gilroy_Bold'),
                                indicator: BoxDecoration(
                                    color: notifier.getcardcolor, borderRadius: BorderRadius.circular(10)),
                                indicatorColor: notifier.getblue,
                                controller: controller,
                                labelColor: notifier.getblack,
                                unselectedLabelColor: Colors.grey,
                                tabs: [
                                  Tab(text: EnString.email),
                                  Tab(text: EnString.phonenumber),
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
            ),
          ],
        ),
      ),
    );
  }
}
