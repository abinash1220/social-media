import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/planners_controller.dart';
import 'package:social_media_marketing/src/controllers/posts_controller.dart';
import 'package:social_media_marketing/src/views/home_views/create_post.dart';
import 'package:social_media_marketing/src/views/home_views/search_posts_screen.dart';
import 'package:social_media_marketing/src/views/planner_views/draft_screen.dart';
import 'package:social_media_marketing/src/views/planner_views/schedule_screen.dart';
import 'package:table_calendar/table_calendar.dart';

class PlannerScreen extends StatefulWidget {
  const PlannerScreen({super.key});

  @override
  State<PlannerScreen> createState() => _PlannerScreenState();
}

class _PlannerScreenState extends State<PlannerScreen> {
  final plannerController = Get.find<PlannersController>();

  final postsController = Get.find<PostsController>();

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
                  foregroundColor: const Color.fromARGB(255, 42, 59, 158),
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
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: SafeArea(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [primaryColor, secondaryColor]),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Profile",
                        style: primaryFont.copyWith(
                            fontSize: 18, color: Colors.white)),
                    InkWell(
                      onTap: () {
                        Get.to(const SearchPostScreen());
                      },
                      child: Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.search,
                            size: 13,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
      body: GetBuilder<PlannersController>(builder: (_) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        plannerController.index(0);
                        plannerController.update();
                      },
                      child: Container(
                        height: 26,
                        width: 107,
                        decoration: BoxDecoration(
                          color: plannerController.index == 0
                              ? secondaryColor
                              : const Color(0xffE4E4E4),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Center(
                          child: Text("Calendar",
                              style: primaryFont.copyWith(
                                  fontSize: 11,
                                  color: plannerController.index == 0
                                      ? const Color(0xffF9FAFC)
                                      : const Color(0xff023047))),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        plannerController.index(1);
                        plannerController.update();
                        postsController.getScheduledPost(status: "scheduled");
                      },
                      child: Container(
                        height: 26,
                        width: 107,
                        decoration: BoxDecoration(
                          color: plannerController.index == 1
                              ? secondaryColor
                              : const Color(0xffE4E4E4),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Schedule",
                                style: primaryFont.copyWith(
                                    fontSize: 11,
                                    color: plannerController.index == 1
                                        ? const Color(0xffF9FAFC)
                                        : const Color(0xff023047))),
                            const SizedBox(
                              width: 5,
                            ),
                            // Container(
                            // height: 14,
                            // width: 14,
                            // decoration: BoxDecoration(
                            //   color: const Color(0xffF9FAFC),
                            //   borderRadius: BorderRadius.circular(7),
                            // ),
                            // child: Center(
                            //   child: Text("03",
                            //     style: secondaryFont.copyWith(fontSize: 7,
                            //     color:const Color(0xff023047))),
                            // ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        plannerController.index(2);
                        plannerController.update();
                        postsController.getDraftPost(status: "draft");
                      },
                      child: Container(
                        height: 26,
                        width: 107,
                        decoration: BoxDecoration(
                          color: plannerController.index == 2
                              ? secondaryColor
                              : const Color(0xffE4E4E4),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Draft",
                                style: primaryFont.copyWith(
                                    fontSize: 11,
                                    color: plannerController.index == 2
                                        ? const Color(0xffF9FAFC)
                                        : const Color(0xff023047))),
                            const SizedBox(
                              width: 5,
                            ),
                            //     Container(
                            // height: 14,
                            // width: 14,
                            // decoration: BoxDecoration(
                            //   color: const Color(0xffF9FAFC),
                            //   borderRadius: BorderRadius.circular(7),
                            // ),
                            // child: Center(
                            //   child: Text("12",
                            //     style: secondaryFont.copyWith(fontSize: 7,
                            //     color:const Color(0xff023047))),
                            // ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            if (plannerController.index.value == 0)
              // Image(image: AssetImage("assets/images/Group 1788.png")),
              TableCalendar(
                currentDay: date,
                firstDay: DateTime.now(),
                calendarFormat: CalendarFormat.month,
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: date,
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    date = selectedDay;
                  });
                },
              ),
            if (plannerController.index.value == 0)
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                  onTap: () {
                    Get.to(() => CreateScreen(
                          selectedDate:
                              "${date.year}-${date.month}-${date.day}",
                        ));
                  },
                  child: Container(
                    height: 41,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 1),
                            blurRadius: 3.20,
                            spreadRadius: 0.50,
                            color: Color.fromARGB(255, 247, 114, 158),
                          )
                        ]),
                    child: Center(
                        child: Text("Schedule Post",
                            style: primaryFont.copyWith(
                                fontSize: 14,
                                color: const Color(0xffF9FAFC),
                                fontWeight: FontWeight.w500))),
                  ),
                ),
              ),
            const SizedBox(
              height: 30,
            ),
            if (plannerController.index.value == 1) const ScheduleScreen(),
            if (plannerController.index.value == 2) const DraftScreen(),
          ],
        );
      }),
    );
  }
}
