import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';

class PostScheduleScreen extends StatefulWidget {
  const PostScheduleScreen({super.key});

  @override
  State<PostScheduleScreen> createState() => _PostScheduleScreenState();
}

class _PostScheduleScreenState extends State<PostScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
        padding: const EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Weekly Schedule Post",
              style: primaryFont.copyWith(fontSize: 22,
              fontWeight: FontWeight.w500,
              color: const Color(0xff023047))),
              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 10),
                child: Container(
                      height: 37,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: const Color(0xff023047),width: 0.4)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Image(image: AssetImage("assets/icons/clock.png")),
                                const SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Mon",
                                      style: primaryFont.copyWith(fontSize: 13,
                                      color:const Color(0xff023047))),
                                    Text("22/02/2023 at 13:30",
                                      style: primaryFont.copyWith(fontSize: 7,
                                      color:Colors.black)),
                                  ],
                                ),
                                  
                              ],
                            ),
                            Row(
                              children:const [
                                Image(image: AssetImage("assets/icons/arrow.png"))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 10),
                child: Container(
                      height: 37,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: const Color(0xff023047),width: 0.4)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Image(image: AssetImage("assets/icons/clock.png")),
                                const SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("The",
                                      style: primaryFont.copyWith(fontSize: 13,
                                      color:const Color(0xff023047))),
                                    Text("22/02/2023 at 13:30",
                                      style: primaryFont.copyWith(fontSize: 7,
                                      color:Colors.black)),
                                  ],
                                ),
                                  
                              ],
                            ),
                            Row(
                              children:const [
                                Image(image: AssetImage("assets/icons/arrow.png"))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 10),
                child: Container(
                      height: 37,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: const Color(0xff023047),width: 0.4)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Image(image: AssetImage("assets/icons/clock.png")),
                                const SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Wed",
                                      style: primaryFont.copyWith(fontSize: 13,
                                      color:const Color(0xff023047))),
                                    Text("22/02/2023 at 13:30",
                                      style: primaryFont.copyWith(fontSize: 7,
                                      color:Colors.black)),
                                  ],
                                ),
                                  
                              ],
                            ),
                            Row(
                              children:const [
                                Image(image: AssetImage("assets/icons/arrow.png"))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 10),
                child: Container(
                      height: 37,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: const Color(0xff023047),width: 0.4)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Image(image: AssetImage("assets/icons/clock.png")),
                                const SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Thu",
                                      style: primaryFont.copyWith(fontSize: 13,
                                      color:const Color(0xff023047))),
                                    Text("22/02/2023 at 13:30",
                                      style: primaryFont.copyWith(fontSize: 7,
                                      color:Colors.black)),
                                  ],
                                ),
                                  
                              ],
                            ),
                            Row(
                              children:const [
                                Image(image: AssetImage("assets/icons/arrow.png"))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 10),
                child: Container(
                      height: 37,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: const Color(0xff023047),width: 0.4)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Image(image: AssetImage("assets/icons/clock.png")),
                                const SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Fri",
                                      style: primaryFont.copyWith(fontSize: 13,
                                      color:const Color(0xff023047))),
                                    Text("22/02/2023 at 13:30",
                                      style: primaryFont.copyWith(fontSize: 7,
                                      color:Colors.black)),
                                  ],
                                ),
                                  
                              ],
                            ),
                            Row(
                              children:const [
                                Image(image: AssetImage("assets/icons/arrow.png"))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 10),
                child: Container(
                      height: 37,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: const Color(0xff023047),width: 0.4)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Image(image: AssetImage("assets/icons/clock.png")),
                                const SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sat",
                                      style: primaryFont.copyWith(fontSize: 13,
                                      color:const Color(0xff023047))),
                                    Text("22/02/2023 at 13:30",
                                      style: primaryFont.copyWith(fontSize: 7,
                                      color:Colors.black)),
                                  ],
                                ),
                                  
                              ],
                            ),
                            Row(
                              children:const [
                                Image(image: AssetImage("assets/icons/arrow.png"))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 10),
                child: Container(
                      height: 37,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: const Color(0xff023047),width: 0.4)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Image(image: AssetImage("assets/icons/clock.png")),
                                const SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Mon",
                                      style: primaryFont.copyWith(fontSize: 13,
                                      color:const Color(0xff023047))),
                                    Text("22/02/2023 at 13:30",
                                      style: primaryFont.copyWith(fontSize: 7,
                                      color:Colors.black)),
                                  ],
                                ),
                                  
                              ],
                            ),
                            Row(
                              children:const [
                                Image(image: AssetImage("assets/icons/arrow.png"))
                              ],
                            ),
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