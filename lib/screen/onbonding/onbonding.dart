import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:golearn/screen/authscreen/login.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utils/EnLanguage.dart';
import '../../utils/colornotifir.dart';
import '../../utils/mediaqury.dart';

class Onbonding extends StatefulWidget {
  const Onbonding({Key? key}) : super(key: key);

  @override
  _OnbondingState createState() => _OnbondingState();
}

class _OnbondingState extends State<Onbonding> {
  final int _numPages = 3;

  late ColorNotifier notifire;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  late bool isLoading;

  getdarkmodepreviousstate() async {
    final prefs = await SharedPreferences.getInstance();
    bool? previusstate = prefs.getBool("setIsDark");
    if (previusstate == null) {
      notifire.setIsDark = false;
    } else {
      notifire.setIsDark = previusstate;
    }
  }

  @override
  void initState() {
    getdarkmodepreviousstate();
    isLoading = true;
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
    super.initState();
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3.0),
      height: isActive ? 14 : 8.0,
      width: isActive ? 14.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? notifire.getblue : const Color(0xffe5e5f0),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: notifire.getprimeryColor,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    color: notifire.getprimeryColor,
                    height: height,
                    child: PageView(
                      physics: const ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/onbondingbg.png"))),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Column(
                                    children: [
                                      SizedBox(height: height / 15),
                                      Row(
                                        children: [
                                          const Spacer(),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Login(0),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              "Skip",
                                              style: TextStyle(
                                                color: const Color(0xffe59160),
                                                fontSize: height / 50,
                                                fontFamily: 'Gilroy_Medium',
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: width / 20,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: height / 15),
                                      Image.asset(
                                        "assets/homework.png",
                                        height: height / 2,
                                      ),
                                      SizedBox(height: height / 15),
                                      Text(
                                        EnString.homeworkeasly,
                                        style: TextStyle(
                                            fontFamily: 'Gilroy_Bold',
                                            color: notifire.getblue,
                                            fontSize: height / 30),
                                      ),
                                      SizedBox(height: height / 40),
                                      Text(
                                        EnString.itisrecommended,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'Gilroy_Medium',
                                            color: notifire.getgreay,
                                            fontSize: height / 43),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/onbondingbg.png"))),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Column(
                                    children: [
                                      SizedBox(height: height / 15),
                                      Row(
                                        children: [
                                          const Spacer(),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Login(0),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              "Skip",
                                              style: TextStyle(
                                                color: const Color(0xffe59160),
                                                fontSize: height / 50,
                                                fontFamily: 'Gilroy_Medium',
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: width / 20,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: height / 15),
                                      Image.asset("assets/funevent.png",
                                          height: height / 2),
                                      SizedBox(height: height / 13),
                                      Text(
                                        EnString.funevent,
                                        style: TextStyle(
                                            fontFamily: 'Gilroy_Bold',
                                            color: notifire.getblue,
                                            fontSize: height / 30),
                                      ),
                                      SizedBox(height: height / 40),
                                      Text(
                                        EnString.thaksforfunevent,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'Gilroy_Medium',
                                            color: notifire.getgreay,
                                            fontSize: height / 43),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/onbondingbg.png"))),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Column(
                                    children: [
                                      SizedBox(height: height / 15),
                                      Row(
                                        children: [
                                          const Spacer(),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Login(0),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              "Skip",
                                              style: TextStyle(
                                                color: const Color(0xffe59160),
                                                fontSize: height / 50,
                                                fontFamily: 'Gilroy_Medium',
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: width / 20,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: height / 15),
                                      Image.asset(
                                          "assets/timlynotification.png",
                                          height: height / 2),
                                      SizedBox(height: height / 13),
                                      Text(
                                        EnString.timelynotification,
                                        style: TextStyle(
                                            fontFamily: 'Gilroy_Bold',
                                            color: notifire.getblue,
                                            fontSize: height / 30),
                                      ),
                                      SizedBox(height: height / 40),
                                      Text(
                                        EnString.withtimelynotification,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'Gilroy_Medium',
                                            color: notifire.getgreay,
                                            fontSize: height / 43),
                                      ),
                                    ],
                                  ),
                                )
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
            _currentPage != _numPages - 1
                ? Column(
                    children: [
                      SizedBox(height: height / 1.12),
                      Container(
                        color: Colors.transparent,
                        height: height / 11,
                        child: Align(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    _pageController.previousPage(
                                        duration:
                                            const Duration(microseconds: 300),
                                        curve: Curves.easeIn);
                                  },
                                  child: Container(
                                      height: height / 15,
                                      width: width / 8,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: notifire.getgreay)),
                                      child: Center(
                                        child: Icon(
                                          Icons.arrow_back,
                                          size: height / 35,
                                          color: notifire.getblue,
                                        ),
                                      )),
                                ),
                                Container(
                                  color: Colors.transparent,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: _buildPageIndicator(),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _pageController.nextPage(
                                        duration:
                                            const Duration(microseconds: 300),
                                        curve: Curves.easeIn);
                                  },
                                  child: Container(
                                      height: height / 15,
                                      width: width / 8,
                                      decoration: BoxDecoration(
                                        color: notifire.getblue,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.arrow_forward,
                                          size: height / 35,
                                          color: notifire.getwihitecolor,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      SizedBox(height: height / 1.12),
                      Container(
                        color: Colors.transparent,
                        height: height / 11,
                        child: Align(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    _pageController.previousPage(
                                        duration:
                                            const Duration(microseconds: 300),
                                        curve: Curves.easeIn);
                                  },
                                  child: Container(
                                      height: height / 15,
                                      width: width / 8,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: notifire.getgreay)),
                                      child: Center(
                                        child: Icon(
                                          Icons.arrow_back,
                                          size: height / 35,
                                          color: notifire.getblue,
                                        ),
                                      )),
                                ),
                                Container(
                                  color: Colors.transparent,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: _buildPageIndicator(),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: ((context) => const Login(0)),
                                      ),
                                    );
                                  },
                                  child: Container(
                                      height: height / 15,
                                      width: width / 8,
                                      decoration: BoxDecoration(
                                        color: notifire.getblue,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.arrow_forward,
                                          size: height / 35,
                                          color: notifire.getwihitecolor,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
