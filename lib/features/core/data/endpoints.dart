mixin EndPoints {
  static const String APP_DOMAIN = "pexzaapp.com";
  static const String API_ENDPOINT = "/api";
  static const String BASE_URL = "https://$APP_DOMAIN$API_ENDPOINT";

  static const String GET_USER = "/user";
  static const String LOGIN = "/auth/login";
  static const String REGISTER = "/auth/register";
  static const String VERIFY = "/auth/email/verify";
  static const String RESEND_VERIFICATION = "/auth/email/verify/resend";
  static const String SEND_PASSWORD_RESET_EMAIL = "/auth/forgot-password";
  static const String CONFIRM_PASSWORD_RESET = "/auth/reset-password";
  static const String UPDATE_USER_PROFILE = "/user/profile/update";
  static const String UPDATE_USER_PHOTO = "/user/profile/image/update";
  static const String LOGOUT = "/auth/logout";

  ///........////////// TENANT ENDPOINTS ///////................////

  ///........////////// LANDLORD ENDPOINTS ///////................////
}
