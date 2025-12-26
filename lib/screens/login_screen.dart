import 'package:e_mart/core/utils/validator.dart';
import 'package:e_mart/provider/login_provider.dart';
import 'package:e_mart/widgets/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/common_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTopImage(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Consumer<AuthProvider>(
                builder: (context, value, child) {
                  return Form(
                    key: value.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildTitle(),
                        const SizedBox(height: 20),
                    
                        const Text(
                          "Email Address",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        CommonTextField(
                          validator: (p0) =>
                              feildValidation(p0, submitted: value.submitted),
                          hintText: "Johndoe@gmail.com",
                          controller: value.emailCtrl,
                        ),
                    
                        const SizedBox(height: 16),
                        const Text(
                          "Password",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        CommonTextField(
                          validator: (p0) =>
                              feildValidation(p0, submitted: value.submitted),
                    
                          hintText: "********",
                          controller: value.passwordCtrl,
                          isPassword: true,
                        ),
                    
                        _buildForgotPassword(),
                        const SizedBox(height: 20),
                    
                        CommonButton(
                          isLoading: value.isLoading,
                          title: "Login",
                          onTap: () {
                            value.submitted = true;
                            if (value.formKey.currentState!.validate()) {
                              value.login(
                                context: context,
                                email: value.emailCtrl.text.trim(),
                                password: value.passwordCtrl.text.trim()
                              
                              );
                            }
                          },
                        ),
                    
                        const SizedBox(height: 16),
                        _buildSignupText(),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopImage() {
    return Image.asset(
      "assets/images/loginimg.png",
      width: double.infinity,
      height: 360,
      fit: BoxFit.cover,
    );
  }

  Widget _buildTitle() {
    return const Text(
      "Login",
      style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildForgotPassword() {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          "Forgot password?",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  Widget _buildSignupText() {
    return Center(
      child: RichText(
        text: const TextSpan(
          text: "Don’t Have an account? ",
          style: TextStyle(color: Colors.black),
          children: [
            TextSpan(
              text: "Sign Up",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
