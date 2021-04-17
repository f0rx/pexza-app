mixin EndPoints {
  static const String APP_DOMAIN = "pexzaapp.com";
  static const String API_ENDPOINT = "/api";
  static const String BASE_URL = "https://$APP_DOMAIN$API_ENDPOINT";

  static const String GET_USER = "/user";
  static const String LOGIN = "/auth/login";
  static const String REGISTER = "/auth/register";
  static const String VERIFY = "/auth/email/verify";
  static const String LOGOUT = "/auth/logout";

  ///........////////// TENANT ENDPOINTS ///////................////

  ///........////////// LANDLORD ENDPOINTS ///////................////
}
