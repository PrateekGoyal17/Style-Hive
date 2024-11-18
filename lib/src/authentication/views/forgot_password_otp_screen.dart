import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/widgets/custom_button.dart';
import '../../../constants/kstrings.dart';
import '../../../constants/svg_image_strings.dart';
import '../../../constants/text_styles.dart';
import '../widgets/custom_input_field.dart';

class ForgotPasswordOtpScreen extends StatelessWidget {
  const ForgotPasswordOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 26.h,
          ),
          const Text(
            Kstrings.enterVerificationCode,
            style: AppTextStyles.authTitle,
          ),
          SizedBox(
            height: 9.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.w),
            child: const Text(
              Kstrings.weWillSendYouAMsg,
              textAlign: TextAlign.center,
              style: AppTextStyles.authForgotPasswordSubText,
            ),
          ),
          SizedBox(
            height: 41.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.w),
            child: const CustomInputField(
              hintText: Kstrings.enterOtpHere,
              // iconPath: SvgImageStrings.userIcon,
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            height: 42.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.w),
            child: CustomButton(btnText: Kstrings.confirm, onTap: () {}),
          ),
          const GridTile(child: Text("Test")),
        ],
      ),
    );
  }
}
