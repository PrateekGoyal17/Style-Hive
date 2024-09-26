import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:style_hive/common/widgets/custom_button.dart';

import '../../../common/widgets/app_style.dart';
import '../../../constants/kcolors.dart';
import '../../../constants/kstrings.dart';
import '../../../constants/resource.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorValues.kWhite,
      height: ScreenUtil().screenHeight,
      width: ScreenUtil().screenWidth,
      child: Column(
        children: [
          SizedBox(
            height: 100.h,
          ),
          Image.asset(R.ASSETS_IMAGES_GETSTARTED_PNG),
          SizedBox(
            height: 30.h,
          ),
          Text(
            AppText.kWelcomeHeader,
            textAlign: TextAlign.center,
            style: appStyle(22, ColorValues.kPrimary, FontWeight.bold),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: ScreenUtil().screenWidth - 30,
            child: Text(
              AppText.kWelcomeMessage,
              textAlign: TextAlign.center,
              style: appStyle(11, ColorValues.kGray, FontWeight.normal),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          GradientBtn(
            text: AppText.kGetStarted,
            btnWidth: ScreenUtil().screenWidth - 60,
            btnHeight: 38.h,
            radius: 18,
            onTap: () {
              // TODO write the bool value here

              context.go('/home');
            },
          ),

          // Text(
          //   AppText.kOnboardWishListMessage,
          //   textAlign: TextAlign.center,
          //   style: appStyle(11, ColorValues.kGray, FontWeight.normal),
          // ),
        ],
      ),
    );
  }
}
