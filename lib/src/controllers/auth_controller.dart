import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_constants.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/auth_api_services/get_otp_api-services.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/auth_api_services/login_api_services.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/auth_api_services/otp_verify_api_services.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/auth_api_services/register_api_services.dart';
import 'package:social_media_marketing/src/views/login_views/login_screen.dart';
import 'package:social_media_marketing/src/views/register_views/otp_screen.dart';
import 'package:social_media_marketing/src/views/register_views/success_screen.dart';
import 'package:social_media_marketing/src/views/splash_views/loader_screen.dart';

import '../models/register_model.dart';

class AuthController extends GetxController {
  RegisterServicesApi registerServicesApi = RegisterServicesApi();

  LoginApiServices loginApiServices = LoginApiServices();

  OtpVerifyApiServices otpVerifyApiServices = OtpVerifyApiServices();

  GetOTPApiServices getOTPApiServices = GetOTPApiServices();

  RxString otpValue = "".obs;
  RxBool isLoading = false.obs;

  registerUser(RegisterModel registerModel) async {
    isLoading(true);
    update();
    dio.Response<dynamic> response =
        await registerServicesApi.registerApi(registerModel);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isLoading(false);
    if (response.statusCode == 201) {
      otpValue(response.data["user"]["otp"].toString());
      await prefs.setString(authToken, response.data["token"]);
      await prefs.setString(kMobileNumber, registerModel.mobile);
      await prefs.setBool(kIsVerifyed, false);
      Get.to(OtpScreen(
        mobileNumber: registerModel.mobile,
      ));

      // Get.rawSnackbar(
      //     messageText: Text(
      //       "Registered Successfully",
      //       style: primaryFont.copyWith(
      //         color: Colors.white,
      //       ),
      //     ),
      //     backgroundColor: Colors.green);
    } else if (response.statusCode == 500) {
      Get.rawSnackbar(
          messageText: Text(
            "Server not responding",
            style: primaryFont.copyWith(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red);
    } else {
      Get.rawSnackbar(
          messageText: Text(
            response.data["errors"].first,
            style: primaryFont.copyWith(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red);
    }
  }

  loginUser(
      {required String userName,
      required String password,
      required BuildContext context}) async {
    isLoading(true);
    dio.Response<dynamic> response =
        await loginApiServices.loginApi(password: password, userName: userName);
    isLoading(false);
    if (response.statusCode == 200) {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(authToken, response.data["token"]);
      await prefs.setBool(kIsVerifyed, true);
      // ignore: use_build_context_synchronously
      showloginDialouge(context);
    } else {
      Get.rawSnackbar(
          messageText: Text(
            response.data["message"],
            style: primaryFont.copyWith(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red);
    }
  }

  getOTP({required String mobileNumber}) async {
    dio.Response<dynamic> response =
        await getOTPApiServices.getOTP(mobileNumber);

    if (response.statusCode == 200) {
      otpValue(response.data["otp"].toString());
      Get.rawSnackbar(
          messageText: Text(
            "Otp send Successfully",
            style: primaryFont.copyWith(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.green);
    } else {
      Get.rawSnackbar(
          messageText: Text(
            response.data["errors"].first,
            style: primaryFont.copyWith(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red);
    }
  }

  verifyOtp({required String otpValue}) async {
    isLoading(true);
    dio.Response<dynamic> response =
        await otpVerifyApiServices.otpVerify(otpValue);
    isLoading(false);
    if (response.statusCode == 200) {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool(kIsVerifyed, true);
      Get.offAll(const SuccessScreen());
    } else if (response.statusCode == 400) {
      Get.rawSnackbar(
          messageText: Text(
            response.data["error"],
            style: primaryFont.copyWith(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red);
    } else {
      Get.rawSnackbar(
          messageText: Text(
            response.data["message"],
            style: primaryFont.copyWith(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red);
    }
  }

  Future<void> showloginDialouge(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0)), //this right here
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                  borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                        image: AssetImage("assets/images/Group 1578.png")),
                    const SizedBox(
                      height: 15,
                    ),
                    Text("Success",
                        style: primaryFont.copyWith(
                            fontSize: 27,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w600)),
                    const SizedBox(
                      height: 15,
                    ),
                    Text("Congratulations!",
                        style: primaryFont.copyWith(
                            fontSize: 15,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                    Text("Your account has been Login.",
                        style: primaryFont.copyWith(
                            fontSize: 15,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 30, bottom: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoaderScreen()));
                        },
                        child: Container(
                          height: 41,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(0, 1),
                                  blurRadius: 3.20,
                                  spreadRadius: 0.50,
                                  color: Color.fromARGB(255, 101, 9, 171),
                                )
                              ]),
                          child: Center(
                              child: Text("Continue",
                                  style: primaryFont.copyWith(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(authToken, "null");

    Get.offAll(() => LoginScreen());
  }
}
