import 'package:flutter/material.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import '../../utils/mediaqury.dart';

class CusttomLessees extends StatefulWidget {
  final String? txt;
  final String? title;
  final String? minutes;
  final String? image;

  const CusttomLessees(this.txt, this.title, this.minutes, this.image,
      {Key? key})
      : super(key: key);

  @override
  State<CusttomLessees> createState() => _CusttomLesseesState();
}

class _CusttomLesseesState extends State<CusttomLessees> {
  late ColorNotifier notifier;

  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        
        height: height / 12,
        width: width / 1.1,
        decoration: BoxDecoration(
          color: notifier.getcardcolor,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Row(
          children: [
            Container(
              height: height / 17,
              width: width / 5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: notifier.getblue.withOpacity(0.10),
              ),
              child: Center(
                child: Text(
                  widget.txt!,
                  style: TextStyle(
                    color: notifier.getblue,
                    fontSize: height / 50,
                    fontFamily: 'Gilroy_Bold',
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height / 50),
                Text(
                  widget.title!,
                  style: TextStyle(color: notifier.getblack,
                    fontSize: height / 50,
                    fontFamily: 'Gilroy_Bold',
                  ),
                ),
                Text(
                  widget.minutes!,
                  style: TextStyle(
                    color: notifier.getgreay,
                    fontSize: height / 55,
                    fontFamily: 'Gilroy_Medium',
                  ),
                )
              ],
            ),
            const Spacer(),
            Image.asset(widget.image!, height: height / 25),
            SizedBox(width: width / 20),
          ],
        ),
      ),
    );
  }
}
