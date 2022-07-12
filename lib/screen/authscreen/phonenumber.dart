import 'package:flutter/material.dart';
import 'package:golearn/screen/authscreen/login.dart';
import 'package:golearn/screen/authscreen/verification.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utils/mediaqury.dart';
import '../custtomscreen/custtombutton.dart';

class Phonenumber extends StatefulWidget {
  const Phonenumber({Key? key}) : super(key: key);

  @override
  State<Phonenumber> createState() => _PhonenumberState();
}

class _PhonenumberState extends State<Phonenumber> {
  late ColorNotifier notifier;
  getdarkmodepreviousstate() async {
    final prefs = await SharedPreferences.getInstance();
    bool? previusstate = prefs.getBool("setIsDark");
    if (previusstate == null) {
      notifier.setIsDark = false;
    } else {
      notifier.setIsDark = previusstate;
    }
  }

  String? _selectedindex;
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
  @override
  void initState() {
    super.initState();
    getdarkmodepreviousstate();
  }

  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: notifier.getprimeryColor,
      body: Column(
        children: [
          SizedBox(height: height / 30),
          Row(
            children: [
              SizedBox(width: width / 80),
              Text(
                EnString.phonenumber,
                style: TextStyle(
                  color: notifier.getblack,
                  fontSize: height / 50,
                  fontFamily: 'Gilroy_Bold',
                ),
              ),
            ],
          ),
          SizedBox(height: height / 45),
          Container(
            height: height / 15,
            width: width / 1.1,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: notifier.getgreay)),
            child: Row(
              children: [
                // SizedBox(width: width/20),
                Row(
                  children: [
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
                    Container(height: height / 13, width: width / 200, color: notifier.getgreay),
                    Container(
                      color: Colors.transparent,
                      height: height / 16,
                      width: width / 2,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: notifier.getblack,
                        ),
                        decoration: InputDecoration(
                          // filled: true,
                          contentPadding: EdgeInsets.only(left: height / 80),
                          // fillColor: notifier.getwihitecolor,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "+01-202-555-0102",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: height / 40,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: height / 20),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Verification(),
                  ),
                );
              },
              child: Custombutton.button(notifier.getblue, EnString.sendcode, width / 1.1)),
          SizedBox(height: height / 24),
          Row(children: <Widget>[
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 15.0),
                  child: Divider(
                    color: notifier.getgreay,
                    height: 50,
                  )),
            ),
            Text(
              EnString.signinwithgoogle,
              style: TextStyle(
                color: notifier.getgreay,
                fontSize: height / 55,
                fontFamily: 'Gilroy_Medium',
              ),
            ),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 20.0),
                  child: Divider(
                    color: notifier.getgreay,
                    height: 50,
                  )),
            ),
          ]),
          SizedBox(height: height / 25),
          googlefacebookbutton(EnString.google, width / 1.1, "assets/google.png"),
          SizedBox(height: height / 50),
          googlefacebookbutton(EnString.facebook, width / 1.1, "assets/facebook.png"),
          SizedBox(height: height / 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                EnString.donthaveanaccount,
                style: TextStyle(
                  color: notifier.getgreay,
                  fontSize: height / 50,
                  fontFamily: 'Gilroy_Medium',
                ),
              ),
              SizedBox(width: width / 50),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(0),
                    ),
                  );
                },
                child: Text(
                  EnString.signup,
                  style: TextStyle(
                    color: const Color(0xffdc6a2a),
                    fontSize: height / 50,
                    fontFamily: 'Gilroy_Medium',
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget googlefacebookbutton(text, wid, image) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: notifier.getgreay),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        height: height / 15,
        width: wid,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, height: height / 30),
            SizedBox(width: width / 30),
            Text(
              text,
              style: TextStyle(color: notifier.getblue, fontSize: height / 50, fontFamily: 'Gilroy_Bold'),
            ),
          ],
        ),
      ),
    );
  }
}
