import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';

class SuggestionScreen extends StatefulWidget {
  const SuggestionScreen({super.key});

  @override
  State<SuggestionScreen> createState() => _SuggestionScreenState();
}

class _SuggestionScreenState extends State<SuggestionScreen> {
  
   List festiveimage = [
    'lib/assets/beach.png',
    'lib/assets/3image.png',
    'lib/assets/2image.png',
    'lib/assets/4image.png',
    'lib/assets/againimage.png',
  ];
  List eventsimage = [
    'lib/assets/9image.png',
    'lib/assets/8image.png',
    'lib/assets/7image.png',
    'lib/assets/10image.png',
    'lib/assets/againimage2.png'
  ];
  List businessimage = [
    'lib/assets/11image.png',
    'lib/assets/12image.png',
    'lib/assets/13image.png',
    'lib/assets/14image.png',
    'lib/assets/againimage3.png'
  ];
  List subtitile = ['Post01', "Post02", 'Post03', 'Post04', 'Post05'];

  @override
  Widget build(BuildContext context) {
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
    );
  }
}