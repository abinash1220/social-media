import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/views/forgot_password_views/verify_your_mail_screen.dart';

class ForgotPassWordScreen extends StatefulWidget {
  const ForgotPassWordScreen({super.key});

  @override
  State<ForgotPassWordScreen> createState() => _ForgotPassWordScreenState();
}

class _ForgotPassWordScreenState extends State<ForgotPassWordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Get.back();
          },
          child: const Icon(Icons.arrow_back,color: Color(0xff023047),size: 25,)),
        title: Text("Forgot password",
        style: secondaryFont.copyWith(fontSize: 18,fontWeight: FontWeight.w600,
        color: const Color(0xff023047))),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          const Center(child: Image(image: AssetImage("assets/images/Group 1580.png"))),
          const SizedBox(height: 20,),
          Text("Please Enter Your Email Address or Mobile\nNumber To Recieve a Verification Code.",
          textAlign: TextAlign.center,
          style: secondaryFont.copyWith(fontSize: 14,fontWeight: FontWeight.w500,
          color: const Color(0xff023047),height: 2)),
          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,top: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Enter Mobile Number or Email",
                                      style: primaryFont.copyWith(
                            fontSize: 18,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                            const SizedBox(height: 10,),
                            Container(
                              height: 45,
                              color: Colors.white,
                              child: TextField(
                                    decoration: InputDecoration(
                                              isDense: true,
                                              enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                                color: secondaryColor,
                                              )),
                                              focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                                color: primaryColor,
                                              )),
                                              hintText: "Enter Mobile Number or Email",
                                              labelStyle: primaryFont.copyWith(color:const Color(0xff023047),fontSize: 12)),
                              )),
                              ],
                            ),
                          ),
                          Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                        child: InkWell(
                          onTap: (){
                            Get.to(const VerifyYourMailScreen());
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
                                          child: Text("Send It",
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