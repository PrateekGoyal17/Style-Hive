import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:style_hive/constants/color_values.dart';
import 'package:style_hive/constants/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.btnHeight,
      this.btnColor,
      required this.btnText,
      this.btnTextStyle,
      required this.onTap});

  final double? btnHeight;
  final Color? btnColor;
  final String btnText;
  final TextStyle? btnTextStyle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: btnHeight ?? 52.h,
        decoration: BoxDecoration(
          color: btnColor ?? ColorValues.kBlue,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            btnText,
            style: btnTextStyle ?? AppTextStyles.btnTextStyle,
          ),
        ),
      ),
    );
  }
}
