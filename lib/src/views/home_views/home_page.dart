import 'package:calender_picker/date_picker_widget.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:social_media_marketing/src/views/home_views/home_page2.dart';
import 'package:social_media_marketing/src/views/home_views/suggestions_screen.dart';
import 'package:social_media_marketing/src/views/notification_views/notification_page.dart';

import '../../constant/app_colors.dart';
import '../../constant/app_fonts.dart';
import '../widgets/bottumnav-bar.dart';
import '../widgets/datepicker.dart';
import '../widgets/home_post_container.dart';
import '../widgets/listview_suggession.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  DateTime date = DateTime.now();

  String selectdt =
      formatDate(DateTime(DateTime.now().year, DateTime.now().month, 01), [
    yyyy,
    "-",
    mm,
    "-",
    dd,
  ]);

  _showDatePicker(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030),
        builder: ((context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: primaryColor,
                onPrimary: Colors.white,
                onSurface: Colors.blue,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: Color.fromARGB(255, 42, 59, 158),
                ),
              ),
            ),
            child: child!,
          );
        }));

    if (picked != null) {
      setState(() {
        date = picked;
        selectdt = formatDate(date, [
          yyyy,
          "-",
          mm,
          "-",
          dd,
        ]);
      });
      
    }
  }


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
                    Get.to(const home2());
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
            InkWell(
              onTap: (){
                _showDatePicker(context);
              },
              child: datepickerwidget()),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 119,
              decoration: BoxDecoration(
                  color: Color(0xffE4E4E4),
                  borderRadius: BorderRadius.circular(6)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/images/NoPath - Copy (2).png',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'New Brand Post',
                             style: secondaryFont.copyWith(fontSize: 14,
                               fontWeight: FontWeight.w600,
                               color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                              'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua.\nUtenim ad minim veniam, quis nostrud',
                               style: secondaryFont.copyWith(fontSize: 10,
                               fontWeight: FontWeight.w500,
                               height: 1.5,
                               color: Colors.black),
                              ),
                          InkWell(
                            onTap: (){
                                  Get.to(const SuggestionScreen());
                            },
                            child: Container(
                              height: 18,
                              width: 58,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:const [
                                 Text(
                                  'Explore',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blueGrey),
                                ),
                                Icon(
                                  Icons.arrow_right_alt,
                                  size: 17,
                                )
                              ]),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Post_container(),
            const SizedBox(
              height: 15,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                           Text("Suggestion",
                                            style: primaryFont.copyWith(
                                              fontSize: 15,
                                              color: const Color(0xff023047),
                                              fontWeight: FontWeight.w600)),
                            InkWell(
                              onTap: (){
                                Get.to(const SuggestionScreen());
                              },
                              child: Text("See All",
                                              style: primaryFont.copyWith(
                                                fontSize: 10,
                                                color: const Color(0xff219EBC),
                                                fontWeight: FontWeight.w500)),
                            ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            listviewsugetion()
          ],
        ),
      ),
    );
  }
}
