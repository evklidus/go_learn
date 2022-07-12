import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:golearn/utils/EnLanguage.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../utils/mediaqury.dart';

class Faq extends StatefulWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  late ColorNotifier notifier;
  final _loremIpsum =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";
  final _contentStyle = const TextStyle(color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
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
      body: Column(
        children: [
          Container(
            width: width,
            height: height / 1.3,
            color: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.only(left: width / 20, right: width / 20, top: height / 80),
              child: DefaultTabController(
                length: 4,
                child: Column(
                  children: <Widget>[
                    ButtonsTabBar(
                      radius: 30,
                      borderWidth: 1,
                      borderColor: Colors.transparent,
                      unselectedBorderColor: notifier.getblue,
                      backgroundColor: notifier.getblue,
                      unselectedBackgroundColor: Colors.transparent,
                      unselectedLabelStyle: TextStyle(color: notifier.getblue, fontFamily: 'Gilroy_Bold'),
                      labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      tabs: [
                        Tab(text: "     ${EnString.general}     "),
                        Tab(
                          text: "     ${EnString.account}     ",
                        ),
                        Tab(
                          text: "     ${EnString.course}     ",
                        ),
                        Tab(
                          text: "     ${EnString.payment}     ",
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          Container(
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                SizedBox(height: height / 50),
                                serarchtextField(
                                  Colors.black,
                                  notifier.getgreay,
                                  notifier.getblue,
                                  EnString.search,
                                ),
                                Accordion(
                                  disableScrolling: true,
                                  flipRightIconIfOpen: true,
                                  contentVerticalPadding: 0,
                                  scrollIntoViewOfItems: ScrollIntoViewOfItems.fast,
                                  contentBorderColor: Colors.transparent,
                                  maxOpenSections: 1,
                                  headerBackgroundColorOpened: Colors.black54,
                                  headerPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                                  children: [
                                    AccordionSection(
                                      sectionClosingHapticFeedback: SectionHapticFeedback.light,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'What is Maira?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                    AccordionSection(
                                      flipRightIconIfOpen: true,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'How to use Maira?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                    AccordionSection(
                                      flipRightIconIfOpen: true,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'Can I create my own course?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                    AccordionSection(
                                      flipRightIconIfOpen: true,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'Is Maira free to use?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                    AccordionSection(
                                      flipRightIconIfOpen: true,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'How to make offer on Maira?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                SizedBox(height: height / 50),
                                serarchtextField(
                                  Colors.black,
                                  notifier.getgreay,
                                  notifier.getblue,
                                  EnString.search,
                                ),
                                Accordion(
                                  disableScrolling: true,
                                  flipRightIconIfOpen: true,
                                  contentVerticalPadding: 0,
                                  scrollIntoViewOfItems: ScrollIntoViewOfItems.fast,
                                  contentBorderColor: Colors.transparent,
                                  maxOpenSections: 1,
                                  headerBackgroundColorOpened: Colors.black54,
                                  headerPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                                  children: [
                                    AccordionSection(
                                      sectionClosingHapticFeedback: SectionHapticFeedback.light,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'What is Elera?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                    AccordionSection(
                                      flipRightIconIfOpen: true,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'How to use Elera?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                    AccordionSection(
                                      flipRightIconIfOpen: true,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'Can I create my own course?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                    AccordionSection(
                                      flipRightIconIfOpen: true,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'Is Elera free to use?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                    AccordionSection(
                                      flipRightIconIfOpen: true,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'How to make offer on Elera?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                SizedBox(height: height / 50),
                                serarchtextField(
                                  Colors.black,
                                  notifier.getgreay,
                                  notifier.getblue,
                                  EnString.search,
                                ),
                                Accordion(
                                  disableScrolling: true,
                                  flipRightIconIfOpen: true,
                                  contentVerticalPadding: 0,
                                  scrollIntoViewOfItems: ScrollIntoViewOfItems.fast,
                                  contentBorderColor: Colors.transparent,
                                  maxOpenSections: 1,
                                  headerBackgroundColorOpened: Colors.black54,
                                  headerPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                                  children: [
                                    AccordionSection(
                                      sectionClosingHapticFeedback: SectionHapticFeedback.light,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'What is Elera?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                    AccordionSection(
                                      flipRightIconIfOpen: true,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'How to use Elera?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                    AccordionSection(
                                      flipRightIconIfOpen: true,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'Can I create my own course?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                    AccordionSection(
                                      flipRightIconIfOpen: true,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'Is Elera free to use?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                    AccordionSection(
                                      flipRightIconIfOpen: true,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'How to make offer on Elera?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                SizedBox(height: height / 50),
                                serarchtextField(
                                  Colors.black,
                                  notifier.getgreay,
                                  notifier.getblue,
                                  EnString.search,
                                ),
                                Accordion(
                                  disableScrolling: true,
                                  flipRightIconIfOpen: true,
                                  contentVerticalPadding: 0,
                                  scrollIntoViewOfItems: ScrollIntoViewOfItems.fast,
                                  contentBorderColor: Colors.transparent,
                                  maxOpenSections: 1,
                                  headerBackgroundColorOpened: Colors.black54,
                                  headerPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                                  children: [
                                    AccordionSection(
                                      sectionClosingHapticFeedback: SectionHapticFeedback.light,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'What is Elera?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                    AccordionSection(
                                      flipRightIconIfOpen: true,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'How to use Elera?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                    AccordionSection(
                                      flipRightIconIfOpen: true,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'Can I create my own course?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                    AccordionSection(
                                      flipRightIconIfOpen: true,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'Is Elera free to use?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                    AccordionSection(
                                      flipRightIconIfOpen: true,
                                      headerBackgroundColor: notifier.getwihitecolor,
                                      header: Text(
                                        'How to make offer on Elera?',
                                        style: TextStyle(
                                            color: notifier.getblack, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(_loremIpsum, style: _contentStyle),
                                      contentHorizontalPadding: 20,
                                      contentBorderWidth: 1,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget serarchtextField(textclr, hintclr, borderclr, hinttext) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width / 60),
      child: Container(
        color: Colors.transparent,
        height: height / 15,
        child: TextField(
          autofocus: false,
          style: TextStyle(
            fontSize: height / 50,
            color: textclr,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hinttext,
            prefixIcon: const Icon(Icons.search),
            suffixIcon: Icon(
              Icons.add_road_rounded,
              color: notifier.getblue,
            ),
            hintStyle: TextStyle(color: hintclr, fontSize: height / 60),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderclr),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
