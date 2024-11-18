import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:style_hive/constants/text_styles.dart';

import '../../../constants/color_values.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField(
      {super.key,
      this.controller,
      this.focusNode,
      this.keyboardType,
      required this.hintText,
      this.iconPath});

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final String hintText;
  final String? iconPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: TextField(
        cursorColor: ColorValues.kLightBlack,
        controller: controller,
        focusNode: focusNode,
        keyboardType: keyboardType,
        style: AppTextStyles.hintText,
        decoration: InputDecoration(
          prefixIcon: (iconPath != null)
              ? Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    iconPath!,
                    fit: BoxFit.contain,
                  ),
                )
              : null,
          hintText: hintText,
          hintStyle: AppTextStyles.hintText,
          contentPadding: EdgeInsets.symmetric(
            horizontal: (iconPath != null)
                ? 8.0
                : 18, // Adjust horizontal padding as needed
            vertical: 10.0, // Reduced vertical padding
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0), // Rounded corners
            borderSide: const BorderSide(
              color: ColorValues.kLightGrey, // Border color
              width: 1, // Border width
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0), // Rounded corners
            borderSide: const BorderSide(
              color: ColorValues.kLightGrey, // Border color
              width: 1, // Border width
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0), // Rounded corners
            borderSide: const BorderSide(
              color: ColorValues.kGrey, // Border color
              width: 1.5, // Border width
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0), // Rounded corners
            borderSide: const BorderSide(
              color: ColorValues.kPink, // Border color
              width: 1.5, // Border width
            ),
          ),
        ),
      ),
    );
  }
}
