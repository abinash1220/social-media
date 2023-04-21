import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/bottum_controller.dart';
import 'package:social_media_marketing/src/views/widgets/bottumnav-bar.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final Controller = Get.put(bottombarcontroller());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
              Text("Edit Post",
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
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Add Accounts",
                      style: primaryFont.copyWith(
                        fontSize: 16,
                        color: const Color(0xff023047),
                      )),
                Container(
                  child: Image.asset(
                    'assets/icons/floaticon.png',
                    height: 30,
                    width: 30,
                  ),
                )
              ],
            ),
           
            Row(
              children: [
                Image.asset('assets/icons/facebook image.png'),
                Image.asset('assets/icons/instaimage.png'),
                Image.asset('assets/icons/twitterimage.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 17,
                      width: 42,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.black,
                          ),
                          color: Colors.white),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Public",
                      style: primaryFont.copyWith(
                        fontSize: 8,
                        color: const Color(0xff023047),
                      )),
                        ],
                      )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: size.width,
              decoration:const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                                offset: Offset(0, 1),
                                blurRadius: 3.20,
                                spreadRadius: 0.50,
                                color: Color.fromARGB(255, 199, 199, 199),
                              )
                ],
                borderRadius: BorderRadius.only(topLeft: Radius.circular(7),
                topRight: Radius.circular(7),bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Example Contents",
                    style: primaryFont.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do\neiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    style: primaryFont.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10,bottom: 15),
                    child: Text("#new #trending #design",
                    style: primaryFont.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue,
                    )),
                  ),
               
                  Container(
                    width: size.width,
                    height: 196,
                    decoration: BoxDecoration(
                        color:const Color.fromARGB(255, 227, 225, 225),
                        borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius:BorderRadius.circular(10) ,
                          child: Image.asset('assets/icons/editpostimage.png',fit: BoxFit.cover,)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/phovideoimage.png',height: 18,),
                      const SizedBox(width: 4,),
                      Text("Photo / Video",
                    style: primaryFont.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color:const Color(0xffF9FAFC),
                    )),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/logation.png',height: 18,),
                      const SizedBox(width: 4,),
                      Text("Chennai",
                    style: primaryFont.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color:const Color(0xffF9FAFC),
                    )),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/shecduleimage.png',height: 18,),
                      const SizedBox(width: 4,),
                      Text("Schedule",
                    style: primaryFont.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color:const Color(0xffF9FAFC),
                    )),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
           Container(
                  height: 36,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xffED075C),
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: Center(
                    child: Text("Post",
                      style: primaryFont.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color:const Color(0xffF9FAFC),
                      )),
                  ),
                ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        backgroundColor: const Color(0xffED075C),
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
