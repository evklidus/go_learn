import 'package:flutter/material.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/EnLanguage.dart';
import '../../../utils/mediaqury.dart';
import '../../custtomscreen/custtombutton.dart';
import '../../custtomscreen/custtomtextfild.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  late ColorNotifier notifier;
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController dateinput = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController student = TextEditingController();
  String statesvalue = 'United States';

  var stateitems = [
    'United States',
    'Uk',
    'USA'
  ];

  @override
  void initState() {
    getdarkmodepreviousstate();
    dateinput.text = "";
    super.initState();
  }
  final List<Map> _myjson = [
    {
      'id': '1',
      'assets': 'assets/flag.png',
      'Text': "+91",
    },
    {
      'id': '2',
      'assets': 'assets/flagtwo.png.png',
      'Text': "+92",
    },
    {
      'id': '3',
      'assets': 'assets/flagthree.jpg',
      'Text': "+93",
    },
    {
      'id': '4',
      'assets': 'assets/flagfour.png',
      'Text': "+91",
    },
    {
      'id': '5',
      'assets': 'assets/flagfive.png',
      'Text': "+95",
    }
  ];
  String dropdownvalue = 'Female';


  var items = [
    'Female',
    'Male',
  ];
  String? _selectedindex;
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
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(backgroundColor: notifier.getprimeryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child:
                Icon(Icons.arrow_back, color: notifier.getblack, size: height / 30)),
        title: Text(
          EnString.editprofile,
          style: TextStyle(
            fontSize: height / 40,
            color: notifier.getblack,
            fontFamily: 'Gilroy_Bold',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height / 50),
            Center(
              child: Customtextfild.textField(
                fname,
                EnString.andrewainsley,
                notifier.getgreay,
                notifier.getgreay,
                notifier.getgreay,
                notifier.getblack,
                notifier.getgreay,
                height / 12,
                width / 1.1,
                EnString.email,
                notifier.getblue,
              ),
            ),
            SizedBox(height: height / 100),
            Center(
              child: Customtextfild.textField(
                lname,
                "Andrew",
                notifier.getgreay,
                notifier.getgreay,
                notifier.getgreay,
                notifier.getblack,
                notifier.getgreay,
                height / 12,
                width / 1.1,
                EnString.email,
                notifier.getblue,
              ),
            ),
            SizedBox(height: height / 80),
            datepicker(notifier.getgreay, notifier.getgreay, notifier.getgreay),
            SizedBox(height: height / 30),
            Center(
              child: Customtextfild.textField(
                email,
                "andrew_ainsley@yourdomain.com",
                notifier.getgreay,
                notifier.getgreay,
                notifier.getgreay,
                notifier.getblack,
                notifier.getgreay,
                height / 12,
                width / 1.1,
                EnString.email,
                notifier.getblue,
              ),
            ),
            SizedBox(height: height/80),
            Container(
              height: height / 16,
              width: width / 1.1,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                border: Border.all(color: notifier.getgreay, width: 1),
              ),
              child: Center(
                child: DropdownButton(
                  dropdownColor: notifier.getcardcolor,
                  elevation: 0,
                  value: statesvalue,
                  underline: const SizedBox(),
                  icon: Row(
                    children: [
                      SizedBox(width: width / 2),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: notifier.getgreay,
                      ),
                    ],
                  ),
                  items: stateitems.map((String stateitems) {
                    return DropdownMenuItem(
                      value: stateitems,
                      child: Row(
                        children: [
                          SizedBox(width: width / 40),
                          Text(
                            stateitems,
                            style: TextStyle(fontFamily: 'Gilroy_Medium',
                              color: notifier.getblack,
                              fontSize: height / 50,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      statesvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: height/30),

            Container(
              height: height / 15.5,
              width: width / 1.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: notifier.getgreay),),
              child: Row(
                children: [
                  // SizedBox(width: width/20),
                  Row(
                    children: [
                      DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          // buttonColor: notifire.getdarkpinkscolor,
                          child: DropdownButton<String>(
                            // dropdownColor: notifire.getpinkscolor.withOpacity(0.4),
                            icon: const Icon(Icons.keyboard_arrow_down_rounded,
                                color: Colors.black),
                            hint: Container(
                              height: height / 25,
                              width: width / 7,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: notifier.getblue),
                                image: const DecorationImage(
                                    image: AssetImage("assets/flagfour.png"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            value: _selectedindex,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedindex = newValue;
                              });
                            },
                            items: _myjson.map(
                                  (Map map) {
                                return DropdownMenuItem<String>(
                                  value: map["id"].toString(),
                                  child: Container(
                                    height: height / 25,
                                    width: width / 7,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:
                                        Border.all(color: notifier.getblue),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              map["assets"].toString(),
                                            ),
                                            fit: BoxFit.cover)),
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ),
                      Container(
                          height: height / 13,
                          width: width / 200,
                          color: notifier.getgreay),
                      Container(
                        color: Colors.transparent,
                        height: height / 16,
                        width: width / 2,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          style:   TextStyle(color: Colors.black,fontSize: height/55),
                          decoration: InputDecoration(
                            // filled: true,
                            contentPadding: EdgeInsets.only(left: height / 80),
                            // fillColor: notifier.getwihitecolor,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "+01-202-555-0102",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: height / 40,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: height/30),
            Container(
              height: height / 15,
              width: width/1.1,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15),),
                  border: Border.all(color: notifier.getgreay, width: 1),),
              child: Center(
                child: DropdownButton(dropdownColor: Colors.white,
                  elevation: 0,
                  value: dropdownvalue,
                  underline: const SizedBox(),
                  icon: Row(
                    children: [
                      SizedBox(width: width / 1.74),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: notifier.getblue,
                      ),
                    ],
                  ),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Row(
                        children: [
                          SizedBox(width: width / 40),
                          Text(
                            items,
                            style: TextStyle(color: notifier.getblack),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: height/32),
            Center(
              child: Customtextfild.textField(
                student,
                EnString.student,
                notifier.getgreay,
                notifier.getgreay,
                notifier.getgreay,
                Colors.black,
                notifier.getgreay,
                height / 12,
                width / 1.1,
                EnString.email,
                notifier.getblue,
              ),
            ),
            SizedBox(height: height/40),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Custombutton.button(
                  notifier.getblue, EnString.update, width / 1.1),
            ),
            SizedBox(height: height/50),
          ],
        ),
      ),
    );
  }

  Widget datepicker(textcolor, bordercolor, focuscolor) {
    return Container(
      color: Colors.transparent,
      height: height / 16,
      width: width / 1.1,
      child: TextField(
        controller: dateinput,
        style: TextStyle(color: textcolor, fontSize: height / 55),
        readOnly: true,
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(
                  2000), //DateTime.now() - not to allow to choose before today.
              lastDate: DateTime(2101));

          if (pickedDate != null) {
            // print(
            //     pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            // print(
            //     formattedDate); //formatted date output using intl package =>  2021-03-16
            //you can implement different kind of Date Format here according to your requirement

            setState(() {
              dateinput.text =
                  formattedDate; //set output date to TextField value.
            });
          } else {
            // print("Date is not selected");
          }
        },
        //show/hide password
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.all(13),
            child: Image.asset("assets/Calendar.png",color: notifier.getblack),
          ),
          contentPadding: EdgeInsets.only(top: height / 100, left: width / 20),
          hintText: "1999/09/21",
          hintStyle: TextStyle(color: notifier.getgreay),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: bordercolor, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: focuscolor, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
