import 'package:flutter/material.dart';
import 'package:golearn/components/boxes/h_box.dart';
import 'package:golearn/features/course/presentation/store/course_store.dart';
import 'package:golearn/screen/bottombar/home/jonathanprofile.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:golearn/utils/mediaqury.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
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
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    final store = context.read<CourseStore>();

    return Scaffold(
      backgroundColor: notifier.getprimeryColor,
      body: Container(
        color: Colors.transparent,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          primary: true,
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                SizedBox(height: height / 50),
                Row(
                  children: [
                    SizedBox(width: width / 20),
                    Text(
                      EnString.mentor,
                      style: TextStyle(color: notifier.getblack, fontSize: height / 45, fontFamily: 'Gilroy_Bold'),
                    )
                  ],
                ),
                SizedBox(height: height / 50),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const JonathnaProfile(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      SizedBox(width: width / 20),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(200),
                        child: Image.network(
                          store.entity!.mentor.imageUrl,
                          height: height / 15,
                          width: height / 15,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: width / 40),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            store.entity!.mentor.name,
                            style: TextStyle(
                              color: notifier.getblack,
                              fontSize: height / 50,
                              fontFamily: 'Gilroy_Bold',
                            ),
                          ),
                          SizedBox(height: height / 300),
                          Text(
                            store.entity!.mentor.position,
                            style: TextStyle(
                              color: notifier.getgreay,
                              fontSize: height / 55,
                              fontFamily: 'Gilroy_Medium',
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Image.asset("assets/messege.png", height: height / 30),
                      SizedBox(width: width / 20),
                    ],
                  ),
                ),
                SizedBox(height: height / 50),
                Row(
                  children: [
                    SizedBox(width: width / 20),
                    Text(
                      EnString.aboutcorse,
                      style: TextStyle(color: notifier.getblack, fontSize: height / 45, fontFamily: 'Gilroy_Bold'),
                    )
                  ],
                ),
                SizedBox(height: height / 60),
                Padding(
                  padding: EdgeInsets.only(left: width / 20, right: width / 20),
                  child: Text(
                    store.entity!.about,
                    style: TextStyle(color: notifier.getgreay, fontSize: height / 45, fontFamily: 'Gilroy_Medium'),
                  ),
                ),
                SizedBox(height: height / 40),
                Row(
                  children: [
                    SizedBox(width: width / 20),
                    Text(
                      EnString.tools,
                      style: TextStyle(color: notifier.getblack, fontSize: height / 45, fontFamily: 'Gilroy_Bold'),
                    )
                  ],
                ),
                Column(
                  children: store.entity!.tools
                      .map(
                        (tool) => Column(
                          children: [
                            HBox(15),
                            Row(
                              children: [
                                SizedBox(width: width / 20),
                                Image.network(
                                  tool.imageUrl,
                                  height: height / 40,
                                  width: height / 40,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width: width / 100),
                                Text(
                                  tool.name,
                                  style: TextStyle(
                                      color: notifier.getblack, fontSize: height / 45, fontFamily: 'Gilroy_Medium'),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
                SizedBox(height: height / 20),
              ],
            );
          },
        ),
      ),
    );
  }
}
