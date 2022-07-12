import 'package:flutter/material.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:golearn/utils/mediaqury.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../custtomscreen/custtombutton.dart';

class AddQuestion extends StatefulWidget {
  const AddQuestion({Key? key}) : super(key: key);

  @override
  State<AddQuestion> createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {
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
      floatingActionButton: SizedBox(
        height: 45,
        width: 410,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const EnrollCourse(),
            //   ),
            // );
          },
          child: Custombutton.button(notifier.getblue, EnString.send, width / 1.1),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, color: notifier.getblack, size: height / 30),
        ),
        title: Text(
          EnString.addquestion,
          style: TextStyle(
            fontSize: height / 40,
            color: notifier.getblack,
            fontFamily: 'Gilroy_Bold',
          ),
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.all(15),
        //     child: Icon(
        //       Icons.search_rounded,
        //       color: notifier.getblack,
        //       size: height / 30,
        //     ),
        //   ),
        // ],
      ),
      body: Column(
        children: [
          SizedBox(height: height / 50),
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
              ),
              child: Container(
                height: height / 5,
                width: width / 1.1,
                decoration: BoxDecoration(
                  color: notifier.getcardcolor,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        color: Colors.transparent,
                        height: height / 4,
                        child: Image.asset(
                          "assets/uidesign.png",
                          height: height / 10,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: width / 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: height / 70),
                        Text(
                          EnString.uiuxforbeginner,
                          style: TextStyle(
                            color: notifier.getblack,
                            fontSize: height / 45,
                            fontFamily: 'Gilroy_Bold',
                          ),
                        ),
                        SizedBox(height: height / 100),
                        Text(
                          EnString.guy,
                          style: TextStyle(
                            color: notifier.getgreay,
                            fontSize: height / 50,
                            fontFamily: 'Gilroy_Medium',
                          ),
                        ),
                        SizedBox(height: height / 70),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: height / 40),
                            Icon(Icons.star, color: Colors.orange, size: height / 40),
                            Icon(Icons.star, color: Colors.orange, size: height / 40),
                            Icon(Icons.star, color: Colors.orange, size: height / 40),
                            SizedBox(width: width / 50),
                            Text(
                              "4.9 (12,990)",
                              style: TextStyle(
                                color: notifier.getgreay,
                                fontSize: height / 55,
                                fontFamily: 'Gilroy_Medium',
                              ),
                            ),
                            // SizedBox(width: width/10),
                            // Row(
                            //   children: [
                            //     Image.asset("assets/remove.png",height: height/27),
                            //   ],
                            // )
                          ],
                        ),
                        SizedBox(height: height / 70),
                        Text(
                          "\$200",
                          style: TextStyle(
                            color: notifier.getblue,
                            fontSize: height / 40,
                            fontFamily: 'Gilroy_Bold',
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: height / 50),
          Row(
            children: [
              SizedBox(width: width / 20),
              Text(
                EnString.question,
                style: TextStyle(
                  fontSize: height / 50,
                  fontFamily: 'Gilroy_Bold',
                  color: notifier.getblack,
                ),
              )
            ],
          ),
          SizedBox(height: height / 50),
          questiontextfild()
        ],
      ),
    );
  }

  Widget questiontextfild() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width / 20),
      child: TextField(
        maxLines: 10,
        maxLength: 200,
        decoration: InputDecoration(
          hintText: "Enter your question",
          hintStyle: TextStyle(
            color: notifier.getgreay,
            fontSize: height / 50,
            fontFamily: 'Gilroy_Medium',
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: notifier.getgreay, width: 2.0),
            borderRadius: BorderRadius.circular(12),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: notifier.getgreay, width: 2.0),
            borderRadius: BorderRadius.circular(12),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: notifier.getgreay, width: 2.0),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
