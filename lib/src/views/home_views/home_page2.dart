import 'package:calender_picker/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/views/recent_post_views/recent_post_screen.dart';

import '../../constant/app_fonts.dart';
import '../notification_views/notification_page.dart';
import '../widgets/datepicker.dart';
import '../widgets/home_post_container.dart';
import '../widgets/listview_suggession.dart';
import '../widgets/newbrant_container.dart';
import '../widgets/viewbuttuon_socialmedia.dart';

class home2 extends StatelessWidget {

  const home2({super.key});

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
                    Get.to(const notification());
                  },
                  child: Container(
                      height: 16,
                      width: 33,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child:const Center(
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
        child: ListView(
          physics:const BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                const datepickerwidget(),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 119,
                  decoration: BoxDecoration(
                      color:const Color(0xffE4E4E4),
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/images/NoPath - Copy (2).png',
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:const [
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
                                  'Control every pixel to create\ncustomized & adaptive designs\n '),
                              view_socialmedia()
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                Post_container(),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent post',
                      style: TextStyle(
                          color: Color(0xff023047),
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                    InkWell(
                      onTap: (){
                        Get.to(RecentPostScreen());
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                 child: newbrandcontainer(),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sheduled Post',
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
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child:newbrandcontainer() ,
                ),
                SizedBox(
                  height: 20,
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
                  height: 20,
                ),
                listviewsugetion(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
