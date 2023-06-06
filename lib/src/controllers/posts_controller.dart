import 'dart:io';

import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/auth_controller.dart';
import 'package:social_media_marketing/src/models/posts_models/get_post_model.dart';
import 'package:social_media_marketing/src/models/posts_models/post_suggesions_model.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/create_post_api_services/create_post_api_services.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/create_post_api_services/delete_api_services.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/create_post_api_services/edit_post_api_services.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/create_post_api_services/get_suggessions_post.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/create_post_api_services/publish_now_api_services.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/get_post_api_services/get_post_api_services.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/get_post_api_services/get_post_by_date.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/get_post_api_services/get_post_by_title.dart';
import 'package:social_media_marketing/src/views/widgets/bottumnav-bar.dart';

class PostsController extends GetxController {
  UploadPostApiServices uploadPostApiServices = UploadPostApiServices();
  GetPostByDateApiServices getPostByDateApiServices =
      GetPostByDateApiServices();

  EditPostApiServices editPostApiServices = EditPostApiServices();

  GetSuggesionsApiServices getSuggesionsApiServices =
      GetSuggesionsApiServices();

  GetPostByTitleApiServices getPostByTitleApiServices =
      GetPostByTitleApiServices();

  DeletePostApiServices deletePostApiServices = DeletePostApiServices();

  EditPostStatusApiServices editPostStatusApiServices =
      EditPostStatusApiServices();

  DateTime selectedDate = DateTime.now();
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

  editPost({
    required int postId,
    required String title,
    required String description,
    required String tags,
    required String status,
    required String date,
    required dynamic media,
  }) async {
    isLoading(true);
    dio.Response<dynamic> response = await editPostApiServices.editPost(
        postId: postId,
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
  List<GetPostsData> getPostsByDateList = [];

  //get draft post

  getDraftPost({required String status}) async {
    dio.Response<dynamic> response = await getPostApiServices.getPost(status);

    if (response.statusCode == 200) {
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

    if (response.statusCode == 200) {
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

  getPostsByDate({required String date}) async {
    getPostsByDateList.clear();
    dio.Response<dynamic> response =
        await getPostByDateApiServices.getPostByDate(date);

    if (response.statusCode == 200) {
      GetPosts getPosts = GetPosts.fromJson(response.data);
      getPostsByDateList = getPosts.data;
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
    } else if (response.statusCode == 401) {
      Get.find<AuthController>().logout();
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

  List<Postsuggestion> postSuggestionsList = [];

  getSuggessionPosts() async {
    dio.Response<dynamic> response =
        await getSuggesionsApiServices.getSuggesions();

    if (response.statusCode == 200) {
      PostSuggesionsModel postSuggesionsModel =
          PostSuggesionsModel.fromJson(response.data);

      postSuggestionsList = postSuggesionsModel.postsuggestion;
      update();
    }
  }

  List<GetPostsData> searchPostList = [];
  getPostByKeyWord(String title) async {
    dio.Response<dynamic> response =
        await getPostByTitleApiServices.getPostByTitle(title);

    if (response.statusCode == 200) {
      GetPosts getPosts = GetPosts.fromJson(response.data);

      searchPostList = getPosts.data;
      update();
    }
  }

  deletePost(int postId) async {
    dio.Response<dynamic> response =
        await deletePostApiServices.deletePost(postId: postId);

    if (response.statusCode == 200) {
      getScheduledPost(status: "draft");
      getDraftPost(status: "scheduled");
      Get.back();
      Get.rawSnackbar(
          messageText: Text(
            "Post Deleted Successfully",
            style: primaryFont.copyWith(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.green);
    } else {
      Get.back();
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

  postPublish(int postId) async {
    dio.Response<dynamic> response = await editPostStatusApiServices
        .editPostStatus(status: 'publish', postId: postId);

    if (response.statusCode == 200) {
      Get.back();
      Get.rawSnackbar(
          messageText: Text(
            "Post Published Successfully",
            style: primaryFont.copyWith(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.green);
    } else {
      Get.back();
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
