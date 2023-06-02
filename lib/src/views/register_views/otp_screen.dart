// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/auth_controller.dart';

class OtpScreen extends StatefulWidget {
  String mobileNumber;
  OtpScreen({super.key, required this.mobileNumber});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final authController = Get.find<AuthController>();

  String otpValue = "0000";

  bool showResendButton = false;

  @override
  void initState() {
    super.initState();
    setResendButton();
  }

  setResendButton() async {
    await Future.delayed(const Duration(seconds: 10));
    setState(() {
      showResendButton = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Color(0xff023047),
              size: 25,
            )),
        title: Text("OTP",
            style: secondaryFont.copyWith(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                color: const Color(0xff023047))),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Center(
              child: Image(image: AssetImage("assets/images/Group 1582.png"))),
          const SizedBox(
            height: 20,
          ),
          Text("Verification code",
              textAlign: TextAlign.center,
              style: secondaryFont.copyWith(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff023047),
                  height: 2)),
          Text("We have sent the code verification to\nyour mobile number",
              textAlign: TextAlign.center,
              style: secondaryFont.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff023047),
                  height: 2)),
          Obx(
            () => Text(
              "Otp is : ${authController.otpValue.value}",
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.mobileNumber,
                  textAlign: TextAlign.center,
                  style: secondaryFont.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff023047),
                  )),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Image(
                      image: AssetImage("assets/icons/Group 1787.png"))),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          OtpTextField(
            numberOfFields: 4,
            disabledBorderColor: primaryColor,
            enabledBorderColor: primaryColor,
            fieldWidth: 50,
            borderColor: const Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              setState(() {
                otpValue = verificationCode;
              });
              // showDialog(
              //     context: context,
              //     builder: (context) {
              //       return AlertDialog(
              //         title: const Text("Verification Code"),
              //         content: Text('Code entered is $verificationCode'),
              //       );
              //     });
            }, // end onSubmit
          ),
          const SizedBox(
            height: 25,
          ),
          showResendButton
              ? InkWell(
                  onTap: () {
                    authController.getOTP(mobileNumber: widget.mobileNumber);
                    setState(() {
                      showResendButton = false;
                    });
                    setResendButton();
                  },
                  child: Text("Resend Code",
                      style: primaryFont.copyWith(
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                          color: primaryColor,
                          fontWeight: FontWeight.w500)),
                )
              : Text("Resend Code",
                  style: primaryFont.copyWith(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      color: primaryColor.withOpacity(0.2),
                      fontWeight: FontWeight.w500)),
          Obx(
            () => Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: authController.isLoading.isTrue
                  ? Container(
                      height: 41,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 1),
                              blurRadius: 3.20,
                              spreadRadius: 0.50,
                              color: Color.fromARGB(255, 247, 114, 158),
                            )
                          ]),
                      child: const Center(child: CircularProgressIndicator()),
                    )
                  : InkWell(
                      onTap: () {
                        authController.verifyOtp(otpValue: otpValue);
                      },
                      child: Container(
                        height: 41,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 1),
                                blurRadius: 3.20,
                                spreadRadius: 0.50,
                                color: Color.fromARGB(255, 247, 114, 158),
                              )
                            ]),
                        child: Center(
                            child: Text("Verify",
                                style: primaryFont.copyWith(
                                    fontSize: 18,
                                    color: const Color(0xffF9FAFC),
                                    fontWeight: FontWeight.w500))),
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
