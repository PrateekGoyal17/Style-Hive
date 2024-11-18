import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/png_image_strings.dart';
import '../../../constants/text_styles.dart';

class GoogleFacebookLogin extends StatelessWidget {
  const GoogleFacebookLogin({
    super.key,
    required this.googleLoginCallback,
    required this.facebookLoginCallback,
  });

  final VoidCallback googleLoginCallback;
  final VoidCallback facebookLoginCallback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Login using",
          style: AppTextStyles.loginUsing,
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: facebookLoginCallback,
              child: Image.asset(
                PngImageStrings.facebookLogo,
                height: 35.h,
              ),
            ),
            SizedBox(
              width: 43.h,
            ),
            GestureDetector(
              onTap: googleLoginCallback,
              child: Image.asset(
                PngImageStrings.googleLogo,
                height: 35.h,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
