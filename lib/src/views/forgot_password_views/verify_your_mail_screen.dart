import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/views/forgot_password_views/create_new_password_screen.dart';

class VerifyYourMailScreen extends StatefulWidget {
  const VerifyYourMailScreen({super.key});

  @override
  State<VerifyYourMailScreen> createState() => _VerifyYourMailScreenState();
}

class _VerifyYourMailScreenState extends State<VerifyYourMailScreen> {
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
        title: Text("Verify Your OTP",
        style: secondaryFont.copyWith(fontSize: 18,fontWeight: FontWeight.w600,
        color: const Color(0xff023047))),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          const Center(child: Image(image: AssetImage("assets/images/Group 1582.png"))),
          const SizedBox(height: 20,),
          Text("Please Enter the 4 Digit Code Sent to\nexample123@gmil.com",
          textAlign: TextAlign.center,
          style: secondaryFont.copyWith(fontSize: 14,fontWeight: FontWeight.w500,
          color: const Color(0xff023047),height: 2)),
          const SizedBox(height: 25,),
           OtpTextField(
        numberOfFields: 4,
        disabledBorderColor: primaryColor,
        enabledBorderColor: primaryColor,
        fieldWidth: 50,
        borderColor:const Color(0xFF512DA8),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        onCodeChanged: (String code) {
            //handle validation or checks here           
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
            showDialog(
                context: context,
                builder: (context){
                return AlertDialog(
                    title: const Text("Verification Code"),
                    content: Text('Code entered is $verificationCode'),
                );
                }
            );
        }, // end onSubmit
    ),
    const SizedBox(height: 25,),
                          Text("Resend Code",
                            style: primaryFont.copyWith(
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                            color: primaryColor,
                            fontWeight: FontWeight.w500)),
                          Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                        child: InkWell(
                          onTap: (){
                            Get.to(const CreateNewPasswordScreen());
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
                                          child: Text("Verify",
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