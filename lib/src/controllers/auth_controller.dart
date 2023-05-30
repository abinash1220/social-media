import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/auth_api_services/get_otp_api-services.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/auth_api_services/login_api_services.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/auth_api_services/otp_verify_api_services.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/auth_api_services/register_api_services.dart';

import '../models/register_model.dart';

class AuthController extends GetxController {
  RegisterServicesApi registerServicesApi = RegisterServicesApi();

  LoginApiServices loginApiServices = LoginApiServices();

  OtpVerifyApiServices otpVerifyApiServices = OtpVerifyApiServices();

  GetOTPApiServices getOTPApiServices = GetOTPApiServices();

  registerUser(RegisterModel registerModel) async {
    dio.Response<dynamic> response =
        await registerServicesApi.registerApi(registerModel);

    if (response.statusCode == 201) {
      Get.rawSnackbar(
          messageText: Text(
            "Registered Successfully",
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

  loginUser({required String userName, required String password}) async {
    dio.Response<dynamic> response =
        await loginApiServices.loginApi(password: password, userName: userName);

    if (response.statusCode == 201) {
      Get.rawSnackbar(
          messageText: Text(
            "Login Successfully",
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

  getOTP({required String userName, required String password}) async {
    dio.Response<dynamic> response =
        await loginApiServices.loginApi(password: password, userName: userName);

    if (response.statusCode == 201) {
      Get.rawSnackbar(
          messageText: Text(
            "Login Successfully",
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

  verifyOtp({required String userName, required String password}) async {
    dio.Response<dynamic> response =
        await loginApiServices.loginApi(password: password, userName: userName);

    if (response.statusCode == 200) {
      Get.rawSnackbar(
          messageText: Text(
            "Verify Successfully",
            style: primaryFont.copyWith(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.green);
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
}
