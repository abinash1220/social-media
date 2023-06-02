    import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/controllers/auth_controller.dart';
import 'package:social_media_marketing/src/controllers/planners_controller.dart';
import 'package:social_media_marketing/src/controllers/posts_controller.dart';
import 'package:social_media_marketing/src/views/widgets/bottumnav-bar.dart';
import 'package:social_media_marketing/src/views/login_views/login_screen.dart';
import 'package:social_media_marketing/src/views/splash_views/Logo_screen.dart';
//import 'package:social_media_marketing/src/views/widgets/bottumnavigationbar.dart';

void main() {
  Get.put(PlannersController());
  Get.put(AuthController());
  Get.put(PostsController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), 
      home: const  LogoScreen(),
    );
  }
}

