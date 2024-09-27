import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:style_hive/common/widgets/app_style.dart';
import 'package:style_hive/constants/kcolors.dart';
import 'package:style_hive/constants/kstrings.dart';

import '../../../constants/resource.dart';

class OnBoardingPageOne extends StatelessWidget {
  const OnBoardingPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtil().screenHeight,
      width: ScreenUtil().screenWidth,
      child: Stack(
        children: [
          SizedBox(
            height: ScreenUtil().screenHeight,
            width: ScreenUtil().screenWidth,
            child: Image.asset(
              R.ASSETS_IMAGES_EXPERIENCE_PNG,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 30.w,
            right: 30.w,
            bottom: 170.h,
            child: Text(
              AppText.kOnboardHome,
              textAlign: TextAlign.center,
              style: appStyle(11, ColorValues.kGray, FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
