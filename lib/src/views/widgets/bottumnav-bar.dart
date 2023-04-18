import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/views/profile_views/profile_view_screen.dart';

import '../../controllers/bottum_controller.dart';
import '../home_views/home_page.dart';
import '../home_views/home_page2.dart';
import '../notification_views/notification_page.dart';

class HomeBottomNavgationBar extends StatefulWidget {
  int index;
  HomeBottomNavgationBar({super.key, this.index=0});

  @override
  State<HomeBottomNavgationBar> createState() => _HomeBottomNavgationBarState();
}

var iconList = [
  Icons.home,
  Icons.date_range,
  Icons.notifications,
  Icons.people
];

class _HomeBottomNavgationBarState extends State<HomeBottomNavgationBar> {
  final Controller = Get.put(bottombarcontroller());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Controller.setIndex(widget.index);
  }

  
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body:Controller.Getindex() == 0
            ? home()
            : Controller.Getindex() == 1
            ? home2() 
            : Controller.Getindex() == 2 
            ? notification() 
            : Controller.Getindex() == 3
            ? const ProfileViewScreen() 
            : home(), 
           
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
          onTap: (index) => Controller.setIndex(index)),
    ));
  }
}
