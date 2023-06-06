import 'package:calender_picker/date_picker_widget.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/controllers/posts_controller.dart';

import '../../constant/app_colors.dart';

class datepickerwidget extends StatelessWidget {
  datepickerwidget({super.key});

  final postController = Get.find<PostsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [primaryColor, secondaryColor]),
      ),
      height: 115,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Easy To Select',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              GetBuilder<PostsController>(builder: (_) {
                return Row(
                  children: [
                    Text(
                      formatDate(postController.selectedDate, [
                        D,
                        ",",
                        dd,
                        ",",
                      ]),
                      style: const TextStyle(color: Colors.white),
                    ),
                    const Icon(
                      Icons.calendar_month,
                      color: Colors.white,
                    )
                  ],
                );
              })
            ],
          ),
          CalenderPicker(
            DateTime.now(),
            initialSelectedDate: DateTime.now(),
            selectionColor: const Color.fromARGB(0, 0, 0, 0),
            selectedTextColor: Colors.white,
            onDateChange: (date) {
              postController.selectedDate = date;
              postController.getPostsByDate(
                  date: formatDate(date, [yyyy, "-", mm, "-", dd]));
              postController.update();
            },
          ),
          const SizedBox(
            height: 4,
          )
        ],
      ),
    );
  }
}
