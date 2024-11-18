import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:style_hive/common/widgets/custom_button.dart';
import 'package:style_hive/constants/svg_image_strings.dart';
import 'package:style_hive/src/authentication/controllers/authentication_controller.dart';
import 'package:style_hive/src/authentication/widgets/custom_input_field.dart';
import 'package:style_hive/src/authentication/widgets/or_widget.dart';

import '../../../constants/color_values.dart';
import '../../../constants/kstrings.dart';
import '../../../constants/text_styles.dart';
import '../widgets/google_facebook_login.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = context.watch<AuthenticationController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 97.h,
            ),
            SvgPicture.asset(SvgImageStrings.appLogo),
            SizedBox(
              height: 26.h,
            ),
            const Text(
              Kstrings.welcome,
              style: AppTextStyles.authTitle,
            ),
            const Text(
              Kstrings.letsMakeAcc,
              style: AppTextStyles.authSubTitle,
            ),
            SizedBox(
              height: 28.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: const CustomInputField(
                hintText: Kstrings.name,
                iconPath: SvgImageStrings.userIcon,
                keyboardType: TextInputType.name,
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: const CustomInputField(
                hintText: Kstrings.yourEmail,
                iconPath: SvgImageStrings.emailIcon,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(
              height: 10.h,
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
              height: 8.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: const CustomInputField(
                hintText: Kstrings.confirmPassword,
                iconPath: SvgImageStrings.lockIcon,
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            SizedBox(
              height: 20.h,
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
              height: 25.h,
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
                const Text(Kstrings.alreadyHaveAcc,
                    style: AppTextStyles.anotherAccount),
                TextButton(
                  onPressed: () => authController.navigateToLogin(context),
                  style: TextButton.styleFrom(
                    minimumSize: const Size(0, 0),
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    Kstrings.logIn,
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
