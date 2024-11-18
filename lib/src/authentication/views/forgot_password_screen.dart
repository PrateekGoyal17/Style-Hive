import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/custom_button.dart';
import '../../../constants/kstrings.dart';
import '../../../constants/svg_image_strings.dart';
import '../../../constants/text_styles.dart';
import '../controllers/authentication_controller.dart';
import '../widgets/custom_input_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = context.watch<AuthenticationController>();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(SvgImageStrings.appLogo),
          SizedBox(
            height: 26.h,
          ),
          const Text(
            Kstrings.forgotPassword,
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
              hintText: Kstrings.yourEmail,
              iconPath: SvgImageStrings.userIcon,
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          SizedBox(
            height: 42.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.w),
            child: CustomButton(
                btnText: Kstrings.sendVerification,
                onTap: () =>
                    authController.navigateToForgotPasswordOtp(context)),
          ),
        ],
      ),
    );
  }
}
