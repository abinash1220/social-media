import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/views/login_views/login_form_screen.dart';
import 'package:social_media_marketing/src/views/profile_views/add_social_media_screen.dart';
import 'package:social_media_marketing/src/views/profile_views/password_change_screen.dart';
import 'package:social_media_marketing/src/views/profile_views/post_shedule_screen.dart';
import 'package:social_media_marketing/src/views/profile_views/user_profile_view_screen.dart';
import 'package:social_media_marketing/src/views/widgets/bottumnav-bar.dart';

class ProfileViewScreen extends StatefulWidget {
  const ProfileViewScreen({super.key});

  @override
  State<ProfileViewScreen> createState() => _ProfileViewScreenState();
}

class _ProfileViewScreenState extends State<ProfileViewScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
              Text("Profile",
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
              Text("User Details",
                style: primaryFont.copyWith(fontSize: 13,
                fontWeight: FontWeight.w600,
                color: const Color(0xffED075C))),
                const SizedBox(height: 10),
                InkWell(
                  onTap: (){
                    Get.to(const UserProfileViewScreen());
                  },
                  child: Container(
                    height: 37,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow:const [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    blurRadius: 3.20,
                                    spreadRadius: 0.50,
                                    color: Color.fromARGB(255, 189, 189, 189),
                                  )
                                ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("User Profile",
                            style: primaryFont.copyWith(fontSize: 13,
                            color:const Color(0xff023047))),
                            const Image(image: AssetImage("assets/icons/arrowCircle.png"))
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: (){
                    Get.to(const PassWordChangeScreen());
                  },
                  child: Container(
                    height: 37,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow:const [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    blurRadius: 3.20,
                                    spreadRadius: 0.50,
                                    color: Color.fromARGB(255, 189, 189, 189),
                                  )
                                ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Password Change",
                            style: primaryFont.copyWith(fontSize: 13,
                            color:const Color(0xff023047))),
                            const Image(image: AssetImage("assets/icons/arrowCircle.png"))
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text("Social media Management",
                style: primaryFont.copyWith(fontSize: 13,
                fontWeight: FontWeight.w600,
                color: const Color(0xffED075C))),
                const SizedBox(height: 10),
                InkWell(
                  onTap: (){
                    Get.to(const AddSocialMediaScreen());
                  },
                  child: Container(
                    height: 37,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow:const [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    blurRadius: 3.20,
                                    spreadRadius: 0.50,
                                    color: Color.fromARGB(255, 189, 189, 189),
                                  )
                                ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Add social media",
                            style: primaryFont.copyWith(fontSize: 13,
                            color:const Color(0xff023047))),
                            const Image(image: AssetImage("assets/icons/arrowCircle.png"))
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text("Schedule",
                style: primaryFont.copyWith(fontSize: 13,
                fontWeight: FontWeight.w600,
                color: const Color(0xffED075C))),
                const SizedBox(height: 10),
                InkWell(
                  onTap: (){
                    Get.to(const PostScheduleScreen());
                  },
                  child: Container(
                    height: 37,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow:const [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    blurRadius: 3.20,
                                    spreadRadius: 0.50,
                                    color: Color.fromARGB(255, 189, 189, 189),
                                  )
                                ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Post Schedule",
                            style: primaryFont.copyWith(fontSize: 13,
                            color:const Color(0xff023047))),
                            const Image(image: AssetImage("assets/icons/arrowCircle.png"))
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text("Other",
                style: primaryFont.copyWith(fontSize: 13,
                fontWeight: FontWeight.w600,
                color: const Color(0xffED075C))),
                const SizedBox(height: 10),
                Container(
                  height: 37,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow:const [
                                BoxShadow(
                                  offset: Offset(0, 1),
                                  blurRadius: 3.20,
                                  spreadRadius: 0.50,
                                  color: Color.fromARGB(255, 189, 189, 189),
                                )
                              ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Support",
                          style: primaryFont.copyWith(fontSize: 13,
                          color:const Color(0xff023047))),
                          const Image(image: AssetImage("assets/icons/arrowCircle.png"))
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: (){
                    Get.offAll(const LoginFormScreen());
                  },
                  child: Container(
                    height: 37,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow:const [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    blurRadius: 3.20,
                                    spreadRadius: 0.50,
                                    color: Color.fromARGB(255, 189, 189, 189),
                                  )
                                ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Logout",
                            style: primaryFont.copyWith(fontSize: 13,
                            color:const Color(0xff023047))),
                            const Image(image: AssetImage("assets/icons/arrowCircle.png"))
                        ],
                      ),
                    ),
                  ),
                ),
                
            ],
          ),
        ),
        
    );
  }
}