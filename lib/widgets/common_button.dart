import 'package:e_mart/core/app_theme/app_colors.dart';
import 'package:flutter/material.dart';


class CommonButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool? isLoading;
  final double? width;

  const CommonButton({
    super.key,
    required this.title,
    required this.onTap,
    this.isLoading=false,
    this.width
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width?? double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryBrown,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1),
          ),
        ),
        child:isLoading==true?CircularProgressIndicator(color: Colors.white,): Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
