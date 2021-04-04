mixin EndPoints {
  static const String APP_DOMAIN = "pexzaapp.com";
  static const String API_ENDPOINT = "/api/v1";
  static const String BASE_URL = "https://$APP_DOMAIN$API_ENDPOINT";

  static const String GET_USER = "/user";
  static const String LOGOUT = "/auth/logout";

  ///........////////// TENANT ENDPOINTS ///////................////
  static const String TENANT_REGISTER = "/auth/tenant/register";
  static const String TENANT_LOGIN = "/auth/tenant/login";

  ///........////////// LANDLORD ENDPOINTS ///////................////
  static const String LANDLORD_REGISTER = "/auth/landlord/register";
  static const String LANDLORD_LOGIN = "/auth/landlord/login";
}
