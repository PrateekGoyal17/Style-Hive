import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:style_hive/common/widgets/custom_button.dart';
import 'package:style_hive/constants/kstrings.dart';
import 'package:style_hive/constants/svg_image_strings.dart';
import 'package:style_hive/src/authentication/controllers/authentication_controller.dart';
import 'package:style_hive/src/authentication/widgets/custom_input_field.dart';
import 'package:style_hive/src/authentication/widgets/or_widget.dart';

import '../../../constants/color_values.dart';
import '../../../constants/text_styles.dart';
import '../widgets/google_facebook_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = context.watch<AuthenticationController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80.h,
            ),
            SvgPicture.asset(SvgImageStrings.appLogo),
            SizedBox(
              height: 26.h,
            ),
            const Text(
              Kstrings.welcomeBack,
              style: AppTextStyles.authTitle,
            ),
            const Text(
              Kstrings.signIn,
              style: AppTextStyles.authSubTitle,
            ),
            SizedBox(
              height: 16.h,
            ),
            //TODO: Implement errors here
            const Text(
              "Incorrect Password!",
              style: AppTextStyles.incorrectPassword,
            ),
            SizedBox(
              height: 18.h,
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
              height: 8.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: const CustomInputField(
                hintText: Kstrings.password,
                iconPath: SvgImageStrings.lockIcon,
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () => authController.navigateToForgotPassword(context),
                  child: Text(
                    Kstrings.forgotPasswordQuestionMark,
                    style: AppTextStyles.authTitle.copyWith(fontSize: 12),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Checkbox(
                      side: const BorderSide(color: ColorValues.kGrey),
                      activeColor: ColorValues.kBlue,
                      value: authController.rememberMe,
                      onChanged: (value) {
                        authController.rememberMe = value!;
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        authController.rememberMe = !authController.rememberMe;
                      },
                      child: Text(
                        Kstrings.rememberMe,
                        style:
                            AppTextStyles.authSubTitle.copyWith(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            SizedBox(
              height: 14.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: CustomButton(btnText: "Login", onTap: () {}),
            ),
            SizedBox(
              height: 36.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: const OrWidget(),
            ),
            SizedBox(
              height: 42.h,
            ),
            GoogleFacebookLogin(
              googleLoginCallback: () {},
              facebookLoginCallback: () {},
            ),
            SizedBox(
              height: 62.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(Kstrings.dontHaveAcc,
                    style: AppTextStyles.anotherAccount),
                TextButton(
                  onPressed: () => authController.navigateToSignup(context),
                  style: TextButton.styleFrom(
                    minimumSize: const Size(0, 0),
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    Kstrings.register,
                    style: AppTextStyles.anotherAccount.copyWith(
                        color: ColorValues.kBlue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
