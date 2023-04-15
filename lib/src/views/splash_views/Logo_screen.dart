import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/views/login_views/login_screen.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    redirectToNext();
  }

  redirectToNext() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(image: AssetImage("assets/images/img.png")),
              const SizedBox(height: 20,),
              Text("Social Media Manage",style: primaryFont.copyWith(fontSize: 24,color: const Color(0xffF9FAFC)))
            ],
          ),
          ),
        ),
    );
  }
}