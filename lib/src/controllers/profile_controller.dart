import 'package:get/get.dart';
import 'package:social_media_marketing/src/services/netwrok_apis/auth_api_services/get_user_profile_api_services.dart';
import 'package:dio/dio.dart' as dio;

class ProfileController extends GetxController {
  GetUserApiServices getUserApiServices = GetUserApiServices();

  getUserProfile() async {
    dio.Response<dynamic> response = await getUserApiServices.getUser();



    if(response.statusCode == 200){

    }
  }
}
