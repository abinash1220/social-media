import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/views/splash_views/connect_first_account_screen.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Image(image: AssetImage("assets/images/success.png"))),
          const SizedBox(height: 20,),
          const Text("SUCCESS",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600,
              color: Color(0xff023047),)),
              const SizedBox(height: 20,),
              Text("Congratulations, your account has been\nsuccessfully created",
          textAlign: TextAlign.center,
          style: secondaryFont.copyWith(fontSize: 14,fontWeight: FontWeight.w500,
          color: const Color(0xff023047),height: 1.5)),
          Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 50,),
                        child: InkWell(
                          onTap: (){
                           Get.to(const ConnectFirstAccountScreen());
                          },
                          child: Container(
                            height: 41,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow:const [
                                BoxShadow(
                                  offset: Offset(0, 1),
                                  blurRadius: 3.20,
                                  spreadRadius: 0.50,
                                  color: Color.fromARGB(255, 247, 114, 158),
                                )
                              ]
                            ),
                            child: Center(
                                          child: Text("Continue",
                                          style: primaryFont.copyWith(
                                            fontSize: 18,
                                            color: const Color(0xffF9FAFC),
                                            fontWeight: FontWeight.w500))),
                          ),
                        ),
                      ),
        ],
      ),
    );
  }
}