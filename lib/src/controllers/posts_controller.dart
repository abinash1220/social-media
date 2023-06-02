import 'dart:io';

import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/models/posts_models/get_post_model.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/create_post_api_services/create_post_api_services.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/get_post_api_services/get_post_api_services.dart';
import 'package:social_media_marketing/src/views/widgets/bottumnav-bar.dart';

class PostsController extends GetxController {
  UploadPostApiServices uploadPostApiServices = UploadPostApiServices();

  RxBool isLoading = false.obs;

  uploadPost({
    required String title,
    required String description,
    required String tags,
    required String status,
    required String date,
    required File media,
  }) async {
    isLoading(true);
    dio.Response<dynamic> response = await uploadPostApiServices.uploadPost(
        title: title,
        description: description,
        tags: tags,
        status: status,
        media: media);
    isLoading(false);
    if (response.statusCode == 201) {
      Get.offAll(() => HomeBottomNavgationBar());
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

  // get post
  GetPostApiServices getPostApiServices = GetPostApiServices();
  List<GetPostsData> getPostsData = [];

  //get draft post

  getDraftPost({required String status}) async {

    dio.Response<dynamic> response = await getPostApiServices.getPost(status);

    if(response.statusCode == 200){
      GetPosts getPosts = GetPosts.fromJson(response.data);
      getPostsData = getPosts.data;
      update();

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
    update();
  }

  //get scheduled post

  getScheduledPost({required String status}) async {

    dio.Response<dynamic> response = await getPostApiServices.getPost(status);

    if(response.statusCode == 200){
      GetPosts getPosts = GetPosts.fromJson(response.data);
      getPostsData = getPosts.data;
      update();

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
    update();
  }


}
