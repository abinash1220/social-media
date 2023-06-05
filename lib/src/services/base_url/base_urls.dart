abstract class BaseApiService {
  String baseURL = "https://posteit.org";

  String registerURL = "/api/register_user";

  String loginURL = "/api/login";

  String otpVerifyURL = "/api/auth/otp_verrify";

  String getOtpURL = "/api/get_otp";

  String changePasswordURL = "/api/auth/change_password_new";

  String getUserDataURL = "/api/auth/profile";

  String createPostURL = "/api/auth/create_post";

  String getPostURL = "/api/auth/getposts";

  String getPostDetailsURL = "/api/auth/posts_details";
  String deletePostURL = "/api/auth/delete_post";

  String connectWithfaceBook = "https://posteit.org/auth/facebook";
  String connectWithInstagram = "https://posteit.org/auth/instagram";

  String postSuggessions = "/api/auth/suggestion_list";
  //changes

  String createSupport = "/api/auth/create_support";

  String updateProfileNameURL = "/api/auth/profile_update";
}
