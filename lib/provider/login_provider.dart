import 'dart:convert';

import 'package:e_mart/core/utils/app_urls.dart';
import 'package:e_mart/model/login_modal.dart';
import 'package:e_mart/service/repository/login_repository.dart';
import 'package:e_mart/widgets/common_snckbar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class AuthProvider extends ChangeNotifier {
  // final AuthRepository _repository = AuthRepository();
     TextEditingController emailCtrl = TextEditingController();
   TextEditingController passwordCtrl = TextEditingController();
   final formKey=GlobalKey<FormState>();
   bool submitted = false;

  bool isLoading = false;
  LoginResponse? loginResponse;
  String? errorMessage;

Future<void> login({
  required BuildContext context,
  required String email,
  required String password,
}) async {
  final url=AppUrls.baseUrl+AppUrls.login(userId: email, password: password);


  isLoading = true;
  notifyListeners();

  try {
    final response=await http.post(Uri.parse(url));
    print(response.body);
    var decodedReponse=jsonDecode(response.body);
    loginResponse = LoginResponse.fromJson(decodedReponse);

    if (loginResponse?.success == 1) {
      CommonSnackbar.show(
        context,
        message: loginResponse!.message,
        isSuccess: true,
      );
    } else {
      CommonSnackbar.show(
        context,
        message: loginResponse?.message ?? "Login failed",
      );
    }
  } catch (e) {
    print(e.toString());
    CommonSnackbar.show(
      context,
      message: e.toString(),
      
    );
  } finally {
    isLoading = false;
    submitted = false;
    notifyListeners();
  }
}

}
