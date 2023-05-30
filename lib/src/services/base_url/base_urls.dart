abstract class BaseApiService {
  String baseURL = "https://posteit.org";

  String registerURL = "/api/register_user";

  String loginURL = "/api/login";

  String otpVerifyURL = "/api/auth/otp_verrify";

  String getOtpURL = "/api/get_otp";

  String changePasswordURL = "/api/auth/change_password_new";

  String getUserDataURL = "";
}
