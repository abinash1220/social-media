import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/views/widgets/bottumnav-bar.dart';

class ConnectFirstAccountScreen extends StatefulWidget {
  const ConnectFirstAccountScreen({super.key});

  @override
  State<ConnectFirstAccountScreen> createState() => _ConnectFirstAccountScreenState();
}

class _ConnectFirstAccountScreenState extends State<ConnectFirstAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: const Image(image: AssetImage("assets/icons/lg.png")),
        title: Text("Connect First Account",
        style: secondaryFont.copyWith(fontSize: 18,fontWeight: FontWeight.w600,
        color: const Color(0xff023047))),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Get.to(HomePage());
                  },
                  child: Container(
                    height: 16,
                    width: 33,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text("Skip",
                      style: primaryFont.copyWith(fontSize: 9,
                      color: const Color(0xff219EBC))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              child: Text("Social Media lets you connect multiple\nsocial networks to monitor, post and\nschedule on the go.",
              textAlign: TextAlign.center,
              style: primaryFont.copyWith(fontSize: 17,
              color: const Color(0xff023047))),
            ),
          ),
        ],
      ),
    );
  }
}