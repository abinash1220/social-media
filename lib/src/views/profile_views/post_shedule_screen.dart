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
                child: InkWell(
                  onTap: (){
                       _showlog(context);
                  },
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

  Future<void> _showlog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(6.0)), //this right here
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(6)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     Text("Monday",
                                            style: primaryFont.copyWith(
                                  fontSize: 29,
                                  color: const Color(0xff023047),
                                  fontWeight: FontWeight.w600)),
                                  const SizedBox(height: 10,),
                                   Padding(
                                     padding: const EdgeInsets.only(left: 10,right: 10),
                                     child: Container(
                                              height: 42,
                                              child: TextField(
                                         decoration: InputDecoration(
                                                isDense: true,
                                                enabledBorder:const OutlineInputBorder(
                                                               borderSide: BorderSide(
                                                  color: Colors.grey,
                                                )),
                                                focusedBorder:const OutlineInputBorder(
                                                               borderSide: BorderSide(
                                                  color: Colors.grey,
                                                )),
                                                hintText: "Date",
                                                suffixIcon:const Icon(Icons.calendar_month,color: Color(0xff023047),),
                                                labelStyle: primaryFont.copyWith(color:const Color(0xff023047))),
                                                                 )),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                                     child: Container(
                                              height: 42,
                                              child: TextField(
                                         decoration: InputDecoration(
                                                isDense: true,
                                                enabledBorder:const OutlineInputBorder(
                                                               borderSide: BorderSide(
                                                  color: Colors.grey,
                                                )),
                                                focusedBorder:const OutlineInputBorder(
                                                               borderSide: BorderSide(
                                                  color: Colors.grey,
                                                )),
                                                hintText: "Time",
                                                suffixIcon:const Icon(Icons.watch_later,color: Color(0xff023047),),
                                                labelStyle: primaryFont.copyWith(color:const Color(0xff023047))),
                                                                 )),
                                   ),
                                   SizedBox(height: 5,),
                                  Row(
                                    children: [
                                       Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 20),
                      child: InkWell(
                        onTap: (){
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => const LoaderScreen()));
                        },
                        child: Container(
                          height: 38,
                          width: 104,
                          decoration: BoxDecoration(
                            color:const Color(0xffE4E4E4),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow:const [
                              
                            ]
                          ),
                          child: Center(
                                            child: Text("Cancel",
                                            style: primaryFont.copyWith(
                                              fontSize: 16,
                                              color: const Color(0xff023047),
                                              fontWeight: FontWeight.w500))),
                        ),
                      ),
                    ),
                                      Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 20),
                      child: InkWell(
                        onTap: (){
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => const LoaderScreen()));
                        },
                        child: Container(
                          height: 35,
                          width: 104,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow:const [
                              BoxShadow(
                                offset: Offset(0, 1),
                                blurRadius: 3.20,
                                spreadRadius: 0.50,
                                color: Color.fromARGB(255, 101, 9, 171),
                              )
                            ]
                          ),
                          child: Center(
                                            child: Text("Submit",
                                            style: primaryFont.copyWith(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500))),
                        ),
                      ),
                    ),
                                    ],
                                  ),
                    
                  ],
                ),
              ),
            ),
          );
        });
  }
}