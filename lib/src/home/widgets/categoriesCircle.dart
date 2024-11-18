import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:style_hive/constants/png_image_strings.dart';

class CategoriesCircle extends StatelessWidget {
  const CategoriesCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        height: 62.h,
        width: 62.h,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Image.asset(PngImageStrings.googleLogo),
      ),
    );
  }
}
