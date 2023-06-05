import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/models/user_profile_model.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/auth_api_services/get_user_profile_api_services.dart';
import 'package:dio/dio.dart' as dio;
import 'package:social_media_marketing/src/services/netwrok_apis/settings_services/create_support_api_service.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/settings_services/user_profile_image_update.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/settings_services/user_profile_name_update_api.dart';

import '../constant/app_fonts.dart';

class ProfileController extends GetxController {

  RxBool loder = false.obs;
  
  //get profile
  GetUserApiServices getUserApiServices = GetUserApiServices();
  List<UserData> userdata = [];


  getUserProfile() async {
    userdata.clear();
    dio.Response<dynamic> response = await getUserApiServices.getUser();

    if(response.statusCode == 200){
      UserProfileModel userProfileModel = UserProfileModel.fromJson(response.data);
      userdata.add(userProfileModel.user);
      update();
    }else if (response.statusCode == 500) {
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
            response.data["message"],
            style: primaryFont.copyWith(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red);
    }
    update();
  }

  //create support
  CreateSupportApiServices createSupportApiServices = CreateSupportApiServices();

  createSupport({
    required String title,
    required String content,
    required dynamic image,
  }) async {
    loder(true);
    dio.Response<dynamic> response = await createSupportApiServices.createSupportApiServices(
      title: title, content: content, image: image);
      loder(false);
      if(response.statusCode == 201){
        Get.back();
      Get.rawSnackbar(
          messageText: Text(
            response.data["message"],
            style: primaryFont.copyWith(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.green);
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
            response.data["message"],
            style: primaryFont.copyWith(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red);
    }
  }

  //user name update api
  UserNameUpdateApiServices userNameUpdateApiServices = UserNameUpdateApiServices();

  updateName({ required String name}) async {
    dio.Response<dynamic> response = await userNameUpdateApiServices.userNameUpdateApiServices(name: name);

    if(response.statusCode == 200){
     getUserProfile();
     Get.rawSnackbar(
          messageText: Text(
            response.data["message"],
            style: primaryFont.copyWith(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.green);
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
            response.data["message"],
            style: primaryFont.copyWith(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red);
    }
  }

  //user profile image update api
  UserProfileImageUpdateApiServices userProfileImageUpdateApiServices = UserProfileImageUpdateApiServices();

  updateImage({required dynamic image,}) async {

    dio.Response<dynamic> response = await userProfileImageUpdateApiServices.userProfileImageUpdateApiServices(image: image);

    if(response.statusCode == 200){
     getUserProfile();
     Get.rawSnackbar(
          messageText: Text(
            response.data["message"],
            style: primaryFont.copyWith(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.green);
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
            response.data["message"],
            style: primaryFont.copyWith(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red);
    }

  }

}
