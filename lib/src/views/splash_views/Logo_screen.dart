import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_media_marketing/src/constant/app_constants.dart';
import 'package:social_media_marketing/src/controllers/auth_controller.dart';
import 'package:social_media_marketing/src/views/login_views/login_screen.dart';
import 'package:social_media_marketing/src/views/register_views/otp_screen.dart';
import 'package:social_media_marketing/src/views/widgets/bottumnav-bar.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  final authController = Get.find<AuthController>();

  @override
  void initState() {
    super.initState();
    checkForAuth();
  }

  redirectToNext() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAll(() => const LoginScreen());
  }

  redirectToHome() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAll(() => HomeBottomNavgationBar());
  }

  redirectToOtpScreen() async {
    final prefs = await SharedPreferences.getInstance();
    String? tmobileNumber = prefs.getString(kMobileNumber);
    authController.getOTP(mobileNumber: tmobileNumber.toString());
    await Future.delayed(const Duration(seconds: 2));
    Get.offAll(() => OtpScreen(
          mobileNumber: tmobileNumber.toString(),
        ));
  }

  checkForAuth() async {
    final prefs = await SharedPreferences.getInstance();
    String? authtoken = prefs.getString(authToken);
    bool? verify = prefs.getBool(kIsVerifyed);
    print("Token is here");
    print(authtoken);
    if (authtoken == "null" || authtoken == null) {
      redirectToNext();
    } else {
      print("---------inside login---------");
      if (verify == true) {
        redirectToHome();
      } else {
        print("---------verify false---------");
        redirectToOtpScreen();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Image(image: AssetImage("assets/icons/1024 Logo.png")),
          ),
        ),
      ),
    );
  }
}
