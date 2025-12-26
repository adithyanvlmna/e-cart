import 'package:e_mart/core/app_theme/app_colors.dart';
import 'package:flutter/material.dart';


class CommonTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;
  final String? Function(String?)? validator;

  const CommonTextField({
    super.key,
    required this.hintText,
    required this.validator,
    required this.controller,
    this.isPassword = false,
  });

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword; // true only for password
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,

      /// obscure ONLY when password
      obscureText: widget.isPassword ? _obscureText : false,

      decoration: InputDecoration(
        hintText: widget.hintText,
        filled: true,
        fillColor: AppColors.textFieldBg,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),

        /// 👁️ suffix icon shown ONLY if isPassword == true
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
      ),
    );
  }
}
