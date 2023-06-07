import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/bottum_controller.dart';
import 'package:social_media_marketing/src/views/home_views/create_post.dart';
import 'package:social_media_marketing/src/views/planner_views/draft_screen.dart';
import 'package:social_media_marketing/src/views/planner_views/schedule_screen.dart';
import 'package:social_media_marketing/src/views/widgets/bottumnav-bar.dart';

class RecentPostScreen extends StatefulWidget {
  const RecentPostScreen({super.key});

  @override
  State<RecentPostScreen> createState() => _RecentPostScreenState();
}

class _RecentPostScreenState extends State<RecentPostScreen> {
  final Controller = Get.put(bottombarcontroller());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            colors: [
              primaryColor,
              secondaryColor
            ]
            ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  Get.back();
                },
                child: const Icon(Icons.arrow_back,color:Color(0xffF9FAFC),)),
              Text("Recent Posts",
              style: primaryFont.copyWith(fontSize: 18,
              color:  Colors.white)),
               Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child:const Center(
                  child: Icon(Icons.search,size: 13,),
                ),
              ),
            ],
          ),
        ),
          ),
        )),
        body: Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 20),
          child: ListView(
            children:const [
              ScheduleScreen(),
              SizedBox(height: 20,),
              DraftScreen(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(CreateScreen());
        },
        backgroundColor:const Color(0xff75032D),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          backgroundColor: const Color(0xffED075C),
          icons: iconList,
          activeColor: Colors.white,
          activeIndex: Controller.Getindex(),
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.sharpEdge,
          leftCornerRadius: 0,
          rightCornerRadius: 0,
          onTap: (index) => Get.offAll(HomeBottomNavgationBar(index: index,))),
    );
  }
}