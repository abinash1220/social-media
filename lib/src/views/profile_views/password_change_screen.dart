import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/bottum_controller.dart';
import 'package:social_media_marketing/src/views/profile_views/profile_view_screen.dart';
import 'package:social_media_marketing/src/views/widgets/bottumnav-bar.dart';
import 'package:social_media_marketing/src/views/widgets/button.dart';

class PassWordChangeScreen extends StatefulWidget {
  const PassWordChangeScreen({super.key});

  @override
  State<PassWordChangeScreen> createState() => _PassWordChangeScreenState();
}

class _PassWordChangeScreenState extends State<PassWordChangeScreen> {
  final Controller = Get.put(bottombarcontroller());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor: backgroundColor,
       resizeToAvoidBottomInset: false,
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
              Text("Password Change",
              style: primaryFont.copyWith(fontSize: 18,
              color:  Colors.white)),
            ],
          ),
        ),
          ),
        )),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Create Password",
            style: primaryFont.copyWith(fontSize: 18,
            fontWeight: FontWeight.w600,
            color: const Color(0xff023047))),
            const SizedBox(height: 10,),
            Text("Your new password must be different\nfrom previous used passwords.",
            style: primaryFont.copyWith(fontSize: 18,
            color: Color.fromARGB(255, 111, 112, 112))),
            const SizedBox(height: 25,),
             Text("Old Password",
                                      style: primaryFont.copyWith(
                            fontSize: 12,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                            const SizedBox(height: 10,),
                            Container(
                              height: 45,
                              child: TextField(
                                    decoration: InputDecoration(
                                              isDense: true,
                                              enabledBorder:const OutlineInputBorder(
                            borderSide: BorderSide(
                                                color:  Color(0xff023047),
                                              )),
                                              focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                                color: primaryColor,
                                              )),
                                              hintText: "",
                                              suffixIcon:const Icon(Icons.remove_red_eye,color: Color(0xff023047),),
                                              labelStyle: primaryFont.copyWith(color:const Color(0xff023047))),
                              )),
                              const SizedBox(height: 25,),
             Text("New Password",
                                      style: primaryFont.copyWith(
                            fontSize: 12,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                            const SizedBox(height: 10,),
                            Container(
                              height: 45,
                              child: TextField(
                                    decoration: InputDecoration(
                                              isDense: true,
                                              enabledBorder:const OutlineInputBorder(
                            borderSide: BorderSide(
                                                color:  Color(0xff023047),
                                              )),
                                              focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                                color: primaryColor,
                                              )),
                                              hintText: "",
                                              suffixIcon:const Icon(Icons.remove_red_eye,color: Color(0xff023047),),
                                              labelStyle: primaryFont.copyWith(color:const Color(0xff023047))),
                              )),
                             const SizedBox(height: 25,),
             Text("Confirm Password",
                                      style: primaryFont.copyWith(
                            fontSize: 12,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                            const SizedBox(height: 10,),
                            Container(
                              height: 45,
                              child: TextField(
                                    decoration: InputDecoration(
                                              isDense: true,
                                              enabledBorder:const OutlineInputBorder(
                            borderSide: BorderSide(
                                                color:  Color(0xff023047),
                                              )),
                                              focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                                color: primaryColor,
                                              )),
                                              hintText: "",
                                              suffixIcon:const Icon(Icons.remove_red_eye,color: Color(0xff023047),),
                                              labelStyle: primaryFont.copyWith(color:const Color(0xff023047))),
                              )),
                              const SizedBox(height: 50,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Get.off(const ProfileViewScreen());
                                    },
                                    child: Button(
                                      color: const Color.fromARGB(255, 189, 186, 186),
                                      height: 38,
                                      width: 175,
                                      text: "Cancel",
                                      borderRadius: 3,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      Get.off(const ProfileViewScreen());
                                    },
                                    child: Button(
                                      color: primaryColor,
                                      height: 38,
                                      width: 175,
                                      text: "SAVE",
                                      borderRadius: 3,
                                    ),
                                  ),
                                ],
                              )

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
          backgroundColor: Colors.red,
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