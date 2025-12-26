class AppUrls {
  static const String baseUrl =
      "https://sungod.demospro2023.in.net/api/";

  static String login({
    required String userId,
    required String password,
  }) {
    return "login?email_phone=$userId&password=$password";
  }
}


