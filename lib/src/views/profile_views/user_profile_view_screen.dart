import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/bottum_controller.dart';
import 'package:social_media_marketing/src/views/widgets/bottumnav-bar.dart';

class UserProfileViewScreen extends StatefulWidget {
  const UserProfileViewScreen({super.key});

  @override
  State<UserProfileViewScreen> createState() => _UserProfileViewScreenState();
}

class _UserProfileViewScreenState extends State<UserProfileViewScreen> {

  final Controller = Get.put(bottombarcontroller());
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
            colors: [
              primaryColor,
              secondaryColor
            ]
            ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              InkWell(
                onTap: (){
                  Get.back();
                },
                child: const Icon(Icons.arrow_back,color:Color(0xffF9FAFC),)),
              const SizedBox(width: 10,),
              Text("User Profile",
              style: primaryFont.copyWith(fontSize: 18,
              color:  Colors.white)),
            ],
          ),
        ),
          ),
        )),
        body: Padding(
          padding: const EdgeInsets.only(top: 25,left: 15,right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    Image(image: AssetImage("assets/images/Ellipse 283.png")),
                    Padding(
                      padding: const EdgeInsets.only(left: 90,top: 75),
                      child: Image(image: AssetImage("assets/images/Group 1597.png")),
                    )
                    ])),
                    SizedBox(height: 20,),
                     Center(
                       child: Text("Niki Billa",
                              style: primaryFont.copyWith(
                              fontSize: 26,
                              color: const Color(0xff023047),
                              fontWeight: FontWeight.w500)),
                     ),
                    SizedBox(height: 40,),
                     Text("Email",
                            style: primaryFont.copyWith(
                            fontSize: 16,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                            const SizedBox(height: 10,),
                            Container(
                              height: 36,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(2)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                        Text("socialmedia@gmail.com",
                                                          style: primaryFont.copyWith(
                                                          fontSize: 13,
                                                          color:  Colors.black,
                                                          fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text("Phone Number",
                            style: primaryFont.copyWith(
                            fontSize: 16,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                            const SizedBox(height: 10,),
                            Container(
                              height: 36,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(2)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                        Text("+91 9876543210",
                                                          style: primaryFont.copyWith(
                                                          fontSize: 13,
                                                          color:  Colors.black,
                                                          fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                            ),
                             
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          backgroundColor: secondaryColor,
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