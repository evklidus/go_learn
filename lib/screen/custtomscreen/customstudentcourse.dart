import 'package:flutter/material.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';

import '../../utils/mediaqury.dart';

class Custtomstudentcourse extends StatefulWidget {

  final String? image;
  final String? title;
  final String? subtitle;
  const Custtomstudentcourse(this.image,this.title,this.subtitle,{Key? key}) : super(key: key);

  @override
  State<Custtomstudentcourse> createState() => _CusttomstudentcourseState();
}

class _CusttomstudentcourseState extends State<Custtomstudentcourse> {

  late ColorNotifier notifier;
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Center(
      child: Container(
        height: height / 11,
        width: width / 1.1,
        color: Colors.transparent,
        child: Row(
          children: [
            Image.asset(widget.image!, height: height / 13),
            SizedBox(width: width / 35),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height / 50),
                Text(
                  widget.title!,
                  style: TextStyle(color: notifier.getblack,
                    fontSize: height / 45,
                    fontFamily: 'Gilroy_Bold',
                  ),
                ),
                SizedBox(height: height / 200),
                Text(
                  widget.subtitle!,
                  style: TextStyle(
                    color: notifier.getgreay,
                    fontSize: height / 55,
                    fontFamily: 'Gilroy_Medium',
                  ),
                )
              ],
            ),
            const Spacer(),
            Image.asset("assets/messege.png", height: height / 25),
            SizedBox(width: width / 20),
          ],
        ),
      ),
    );
  }
}
