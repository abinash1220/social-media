import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/views/login_views/login_form_screen.dart';
import 'package:social_media_marketing/src/views/splash_views/connect_first_account_screen.dart';

class LoaderScreen extends StatefulWidget {
  const LoaderScreen({super.key});

  @override
  State<LoaderScreen> createState() => _LoaderScreenState();
}

class _LoaderScreenState extends State<LoaderScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    redirectToNext();
  }

  redirectToNext() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.push(context, MaterialPageRoute(builder: (context) => const ConnectFirstAccountScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(image: AssetImage("assets/images/loader.png")),
              const SizedBox(height: 20,),
              Text("Loading Screen....",style: primaryFont.copyWith(fontSize: 18,color: const Color(0xff023047)))
            ],
          ),
          )
        ],
      ),
    );
  }
}