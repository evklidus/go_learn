import 'package:flutter/material.dart';
import 'package:golearn/features/home/presentation/screens/main/home_screen.dart';
import 'package:golearn/screen/bottombar/mycourse/mycources.dart';
import 'package:golearn/screen/bottombar/profile/profile.dart';
import 'package:golearn/screen/bottombar/wishlist/wishlist.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Bottombar extends StatefulWidget {
  final int index;

  const Bottombar({Key? key, this.index = 0}) : super(key: key);

  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedIndex = 0;

  late ColorNotifier notifier;
  final _pageOption = [
    const HomeScreen(),
    const WishList(),
    const MyCources(),
    const Profile(),
  ];

  @override
  void initState() {
    super.initState();
    getdarkmodepreviousstate();
    setState(() {
      _selectedIndex = widget.index;
    });
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
    // print(widget.index);
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
// backgroundColor: notifire.getwihitecolor,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: const Color(0xff6978A0).withOpacity(.80),
          backgroundColor: notifier.getwihitecolor,
          selectedLabelStyle: const TextStyle(fontFamily: 'Gilroy_Medium'),
          fixedColor: notifier.getblue,
          unselectedLabelStyle: const TextStyle(fontFamily: 'Gilroy_Medium'),
          currentIndex: _selectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                // backgroundColor: notifire.getprimerycolor,
                icon: Image.asset("assets/Home.png",
                    color: _selectedIndex == 0 ? notifier.getblue : notifier.getblack,
                    height: MediaQuery.of(context).size.height / 35),
                label: 'Home'),
            BottomNavigationBarItem(
                // backgroundColor: notifire.getprimerycolor,
                icon: Image.asset("assets/Paper.png",
                    color: _selectedIndex == 1 ? notifier.getblue : notifier.getblack,
                    height: MediaQuery.of(context).size.height / 35),
                label: 'Wishlist'),
            BottomNavigationBarItem(
                // backgroundColor: notifire.getprimerycolor,
                icon: Image.asset("assets/Chat.png",
                    color: _selectedIndex == 2 ? notifier.getblue : notifier.getblack,
                    height: MediaQuery.of(context).size.height / 35),
                label: 'My Course'),
            BottomNavigationBarItem(
              // backgroundColor: notifire.getprimerycolor,
              icon: Image.asset("assets/Profile.png",
                  color: _selectedIndex == 3 ? notifier.getblue : notifier.getblack,
                  height: MediaQuery.of(context).size.height / 35),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        body: _pageOption[_selectedIndex],
      ),
    );
  }
}
