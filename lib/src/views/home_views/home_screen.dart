import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../controllers/bottum_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var iconList = [
  Icons.home,
  Icons.date_range,
  Icons.notifications,
  Icons.people
];

class _HomePageState extends State<HomePage> {
  final Controller = Get.put(bottombarcontroller());

  var val;
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: Center(
        child: Text(Controller.Getindex() == -1
            ? "home"
            : Controller.Getindex() == 0
                ? 'sunny'
                : Controller.Getindex() == 1
                    ? 'cloudy'
                    : Controller.Getindex() == 2
                        ? 'profile'
                        : 'notification'),
      ), //destination screen
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
