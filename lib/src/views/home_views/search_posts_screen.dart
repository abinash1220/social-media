import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/bottum_controller.dart';
import 'package:social_media_marketing/src/views/home_views/create_post.dart';
import 'package:social_media_marketing/src/views/widgets/bottumnav-bar.dart';

class SearchPostScreen extends StatefulWidget {
  const SearchPostScreen({super.key});

  @override
  State<SearchPostScreen> createState() => _SearchPostScreenState();
}

class _SearchPostScreenState extends State<SearchPostScreen> {
  var searchController = TextEditingController();
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
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 41,
              decoration: BoxDecoration(
                 color: Colors.white,
                borderRadius: BorderRadius.circular(5)
              ),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Search Posts',
                suffixIcon: Image.asset('assets/icons/searchpostimage1.png',height: 25,),
                  border: OutlineInputBorder()
                ),
                
              ),
            ),
        ),
          ),
        )),

      

      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30
                ),
                child: Text('Recent Search',
                style: TextStyle(color: Colors.grey[400]),),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset('assets/icons/searchpostimage2.png'),
              ),
            ],
          )
        ],
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
}
