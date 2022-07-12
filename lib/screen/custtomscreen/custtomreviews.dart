import 'package:flutter/material.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import '../../utils/mediaqury.dart';

class CusttomReviews extends StatefulWidget {
  final String? image;
  final String? title;
  final String? rate;
  final String? subtitle;
  final String? likes;
  final String? times;

  const CusttomReviews(
      this.image, this.title, this.rate, this.subtitle, this.likes, this.times,
      {Key? key})
      : super(key: key);

  @override
  State<CusttomReviews> createState() => _CusttomReviewsState();
}

class _CusttomReviewsState extends State<CusttomReviews> {
  late ColorNotifier notifier;

  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);

    return Container(
      height: height / 5,
      width: width / 1.1,
      color: Colors.transparent,
      child: Column(
        children: [
          SizedBox(height: height / 50),
          Row(
            children: [
              Image.asset(
                widget.image!,
                height: height / 15,
              ),
              SizedBox(width: width / 40),
              Text(
                widget.title!,
                style:
                    TextStyle(fontSize: height / 45, fontFamily: 'Gilroy_Bold',color: notifier.getblack,),
              ),
              const Spacer(),
              Container(
                height: height / 27,
                width: width / 7,
                decoration: BoxDecoration(
                  border: Border.all(color: notifier.getblue,width: width/300),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star,
                        size: height / 45, color: notifier.getblue),
                    SizedBox(width: width/70),
                    Text(
                      widget.rate!,
                      style: TextStyle(
                        fontSize: height / 50,
                        fontFamily: 'Gilroy_Bold',
                        color: notifier.getblue,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: height / 30,
                width: width / 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(  color: notifier.getblack,width: width/170),
                ),
                child: Center(
                  child: Icon(
                    Icons.more_horiz,color: notifier.getblack,
                    size: height / 40,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: height / 70),
          Text(
            widget.subtitle!,
            style: TextStyle(fontSize: height / 60,color: notifier.getblack,fontFamily: 'Gilroy_Medium'),
          ),
          SizedBox(height: height / 70),
          Row(
            children: [
              Image.asset("assets/Heart.png", height: height / 30),
              SizedBox(width: width / 60),
              Text(
                widget.likes!,
                style:
                    TextStyle(fontSize: height / 60, fontFamily: 'Gilroy_Bold',color: notifier.getblack,),
              ),
              SizedBox(width: width / 20),
              Text(
                widget.times!,
                style: TextStyle(
                  fontSize: height / 60,
                  fontFamily: 'Gilroy_Medium',
                  color: notifier.getgreay,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
