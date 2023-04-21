import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/bottum_controller.dart';
import 'package:social_media_marketing/src/views/home_views/create_post.dart';
import 'package:social_media_marketing/src/views/widgets/bottumnav-bar.dart';

class SuggestionScreen extends StatefulWidget {
  const SuggestionScreen({super.key});

  @override
  State<SuggestionScreen> createState() => _SuggestionScreenState();
}

class _SuggestionScreenState extends State<SuggestionScreen> {
  List festiveimage = [
    'assets/images/beach.png',
    'assets/images/3image.png',
    'assets/images/2image.png',
    'assets/images/4image.png',
    'assets/images/againimage.png',
  ];
  List eventsimage = [
    'assets/images/9image.png',
    'assets/images/8image.png',
    'assets/images/7image.png',
    'assets/images/10image.png',
    'assets/images/againimage2.png'
  ];
  List businessimage = [
    'assets/images/11image.png',
    'assets/images/12image.png',
    'assets/images/13image.png',
    'assets/images/14image.png',
    'assets/images/againimage3.png'
  ];
  List subtitile = ['Post01', "Post02", 'Post03', 'Post04', 'Post05'];

  final Controller = Get.put(bottombarcontroller());
  @override
  Widget build(BuildContext context) {
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
              Text("Suggestion",
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
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    '   Festival Posts',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              listimage(),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    '   Events Posts',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              listimage2(),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    '   Business Posts',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              listimage3()
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
       onPressed: () {
          Get.to(const CreateScreen());
        },
        backgroundColor:const Color(0xff75032D),
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

  Widget listimage() {
    return Container(
      height: 150,
      child: ListView.builder(
          itemCount: festiveimage.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, Index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                        child: Image.asset(
                      festiveimage[Index],
                      height: 69,
                      width: 71,
                      fit: BoxFit.fitHeight,
                    )),
                    Text(
                      subtitile[Index],
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget listimage2() {
    return Container(
      height: 150,
      child: ListView.builder(
          itemCount: eventsimage.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, Index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                        child: Image.asset(
                      eventsimage[Index],
                      height: 69,
                      width: 71,
                      fit: BoxFit.fitHeight,
                    )),
                    Text(
                      subtitile[Index],
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget listimage3() {
    return Container(
      height: 150,
      child: ListView.builder(
          itemCount: businessimage.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, Index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                        child: Image.asset(
                      businessimage[Index],
                      height: 69,
                      width: 71,
                      fit: BoxFit.fitHeight,
                    )),
                    Text(
                      subtitile[Index],
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
