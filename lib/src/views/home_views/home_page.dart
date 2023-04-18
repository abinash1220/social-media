import 'package:calender_picker/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:social_media_marketing/src/views/home_views/home_page2.dart';
import 'package:social_media_marketing/src/views/notification_views/notification_page.dart';

import '../../constant/app_colors.dart';
import '../../constant/app_fonts.dart';
import '../widgets/bottumnav-bar.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: const Image(image: AssetImage("assets/icons/lg.png")),
        title: Text("Connect First Account",
            style: secondaryFont.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0xff023047))),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                       Get.to(notification());
                  },
                  child: Container(
                      height: 16,
                      width: 33,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                          child: Icon(
                        Icons.search,
                        color: Colors.black,
                      ))),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(6)),
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalenderPicker(
                    DateTime.now(),
                    initialSelectedDate: DateTime.now(),
                    selectionColor: Colors.black,
                    selectedTextColor: Colors.white,
                    onDateChange: (date) {
                      // New date selected
                      // setState(() {
                      //   _selectedValue = date;
                      // });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(6)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        'assets/images/Group 1584.png',
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'New Brand Post',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              'Control every pixel \nto create customized \n& adaptive designs \n '),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/icons/twitter.png',
                                height: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                'assets/icons/pinterest.png',
                                height: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                'assets/icons/linkedin.png',
                                height: 20,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              InkWell(onTap: (){  Get.to(home2());},
                                child: Container(
                                  width: 60,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(67),
                                      color: Colors.white),
                                  child: Center(child: Text('view')),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.only(right: 5, left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/images.jpeg'),
                    ),
                    Text('Control every pixel adaptive designs that lo'),
                    Container(
                      width: 60,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(67),
                          color: Colors.white),
                      child: Center(child: Text('post')),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sugession',
                  style: TextStyle(
                      color: Color(0xff023047),
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
                Text(
                  'See All',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 74,
                      child: Image.asset('assets/images/images.jpeg'),
                    ),
                Text('Fasion design')  ],
                ), SizedBox(width: 20,) ,  Column(
                  children: [
                    Container(
                      height: 70,
                      width: 74,
                      child: Image.asset('assets/images/images.jpeg'),
                    ),
                Text('Fasion design')  ],
                ), SizedBox(width: 20,) , Column(
                  children: [
                    Container(
                      height: 70,
                      width: 74,
                      child: Image.asset('assets/images/images.jpeg'),
                    ),
                Text('Fasion design')  ],
                ), 
              ],
            )
          ],
        ),
      ),
    );
  }
}
