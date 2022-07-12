import 'package:flutter/material.dart';
import 'package:golearn/features/course/presentation/screens/main/course_screen.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../../utils/mediaqury.dart';

class CusttomPopularfoodlist extends StatefulWidget {
  final String? bgimage;
  final double? bh;
  final double? bw;
  final double? eh;
  final double? ew;
  final double? sw;
  final String? name;
  final String? subt;
  final int? price;
  final double? stars;
  final int? studentsCount;
  final double? dw;
  final Widget? image;

  const CusttomPopularfoodlist(
    this.bgimage,
    this.bh,
    this.bw,
    this.eh,
    this.ew,
    this.sw,
    this.name,
    this.subt,
    this.price,
    this.stars,
    this.studentsCount,
    this.dw,
    this.image, {
    Key? key,
  }) : super(key: key);

  @override
  State<CusttomPopularfoodlist> createState() => _CusttomPopularfoodlistState();
}

class _CusttomPopularfoodlistState extends State<CusttomPopularfoodlist> {
  late ColorNotifier notifier;

  // getdarkmodepreviousstate() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   bool? previusstate = prefs.getBool("setIsDark");
  //   if (previusstate == null) {
  //     notifier.setIsDark = false;
  //   } else {
  //     notifier.setIsDark = previusstate;
  //   }
  // }

  @override
  void initState() {
    super.initState();
    // getdarkmodepreviousstate();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CourseScreen(),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          height: widget.bh!,
          width: widget.bw!,
          decoration: BoxDecoration(
            color: notifier.getcardcolor,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Column(
            children: [
              Container(
                color: Colors.transparent,
                height: widget.eh!,
                width: widget.ew!,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(widget.bgimage!, fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: width / 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height / 90),
                  Row(
                    children: [
                      SizedBox(width: width / 20),
                      Text(
                        widget.name!,
                        style: TextStyle(color: notifier.getblack, fontSize: height / 45, fontFamily: 'Gilroy_Bold'),
                      ),
                      const Spacer(),
                      widget.image!,
                      SizedBox(width: width / 20)
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: width / 20),
                      Text(
                        widget.subt!,
                        style: TextStyle(color: notifier.getgreay, fontSize: height / 65, fontFamily: 'Gilroy_Bold'),
                      ),
                    ],
                  ),
                  SizedBox(height: height / 100),
                  Row(
                    children: [
                      SizedBox(width: width / 20),
                      Text(
                        "\$${widget.price}",
                        style: TextStyle(color: notifier.getblue, fontSize: height / 45, fontFamily: 'Gilroy_Bold'),
                      ),
                    ],
                  ),
                  SizedBox(height: height / 100),
                  Row(
                    children: [
                      SizedBox(width: width / 20),
                      Icon(
                        Icons.star,
                        size: height / 40,
                        color: const Color(0xfff29a4c),
                      ),
                      Icon(Icons.star, size: height / 40, color: const Color(0xfff29a4c)),
                      Icon(Icons.star, size: height / 40, color: const Color(0xfff29a4c)),
                      Icon(Icons.star, size: height / 40, color: const Color(0xfff29a4c)),
                      SizedBox(width: widget.sw!),
                      Text(
                        "${widget.stars} (${widget.studentsCount})",
                        style: TextStyle(fontSize: height / 55, fontFamily: 'Gilroy_Medium', color: notifier.getgreay),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
