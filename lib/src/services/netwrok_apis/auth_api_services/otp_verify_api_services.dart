import 'dart:io';
import 'package:dio/dio.dart';
import 'package:social_media_marketing/src/models/register_model.dart';
import 'package:social_media_marketing/src/services/base_url/base_urls.dart';

class OtpVerifyApiServices extends BaseApiService {
  Future otpVerify(String otp) async {
    dynamic responseJson;
    try {
      var dio = Dio();

      var response = await dio.post(baseURL + otpVerifyURL,
          options: Options(
              headers: {
                'Accept': 'application/json',
              },
              followRedirects: false,
              validateStatus: (status) {
                return status! <= 500;
              }),
          data: {
            "otp": otp,
          });
      print("::::::::<Otp Verify URL>::::::::status code::::::::::");
      print(response.statusCode);
      print(response.data);
      responseJson = response;
    } on SocketException {
      print("no internet");
    }
    return responseJson;
  }

  dynamic returnResponse(Response<dynamic> response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = response.data;
        print("here.>>>>>>>>>>>>");
        return responseJson;
      case 400:
      // throw BadRequestException(response.body.toString());
      case 401:
      case 403:
      // throw UnauthorisedException(response.body.toString());
      case 404:
      // throw UnauthorisedException(response.body.toString());
      case 500:
      default:
      // throw FetchDataException(
      //     'Error occured while communication with server' +
      //         ' with status code : ${response.statusCode}');
    }
  }
}
