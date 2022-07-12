import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../utils/colornotifir.dart';
import '../../utils/mediaqury.dart';

class CusttomCourses extends StatefulWidget {
  final String? image;
  final Color? bordercolor;
  final String? drname;
  final String? subname;
  final double? kmrw;
  final double? stars;
  final int? studentsCount;
  final String? label;
  final Widget? imagelike;

  const CusttomCourses(
    this.image,
    this.bordercolor,
    this.drname,
    this.subname,
    this.kmrw,
    this.imagelike, {
    Key? key,
    this.stars,
    this.studentsCount,
    this.label,
  }) : super(key: key);

  @override
  State<CusttomCourses> createState() => _CusttomCoursesState();
}

class _CusttomCoursesState extends State<CusttomCourses> {
  late ColorNotifier notifier;

  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          color: notifier.getcardcolor,
          elevation: 1.5,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(11),
            ),
          ),
          child: Container(
            height: height / 6.72,
            width: width / 1.1,
            decoration: BoxDecoration(
              border: Border.all(color: widget.bordercolor!, width: 2),
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: width / 80),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: Colors.transparent,
                    height: height / 7,
                    width: width / 3.5,
                    child: Image.network(
                      widget.image!,
                      height: height / 7,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: width / 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height / 35,
                      width: width / 5.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7), color: notifier.getblue.withOpacity(0.10)),
                      child: Center(
                        child: Text(
                          widget.label ?? 'UI/UX Design',
                          style: TextStyle(color: notifier.getblue, fontSize: height / 80, fontFamily: 'Gilroy_Bold'),
                        ),
                      ),
                    ),
                    SizedBox(height: height / 80),
                    Text(
                      widget.drname!,
                      style: TextStyle(fontSize: 15, fontFamily: 'Gilroy_Bold', color: notifier.getblack),
                    ),
                    Text(
                      widget.subname!,
                      style: TextStyle(fontSize: height / 50, fontFamily: 'Gilroy_Bold', color: notifier.getblue),
                    ),
                    SizedBox(height: height / 70),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color(0xffFFC107),
                          size: 22,
                        ),
                        SizedBox(width: width / 50),
                        Text(
                          "${widget.stars} | ${widget.studentsCount} students",
                          style:
                              TextStyle(color: notifier.getgreay, fontSize: height / 60, fontFamily: 'Gilroy_Medium'),
                        ),
                        // SizedBox(width: widget.kmrw),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height / 70),
                    widget.imagelike!,
                  ],
                ),
                SizedBox(width: width / 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
