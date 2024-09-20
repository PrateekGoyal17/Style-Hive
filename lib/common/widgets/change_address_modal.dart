import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:style_hive/common/widgets/reusable_text.dart';

import '../../constants/constants.dart';
import '../../constants/kcolors.dart';
import '../../constants/kstrings.dart';
import 'app_style.dart';

Future<dynamic> changeAddressBottomSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: ScreenUtil().screenHeight,
        decoration: BoxDecoration(borderRadius: kRadiusTop),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 10.h,
            ),
            Center(
                child: ReusableText(
                    text: AppText.kCheckoutAddress,
                    style:
                        appStyle(16, ColorValues.kPrimary, FontWeight.w500))),
            SizedBox(
              height: 10.h,
            ),
            Divider(
              color: ColorValues.kGrayLight,
              thickness: 0.5.h,
            ),
            SizedBox(
              height: 10.h,
            ),
            ReusableText(
                text: AppText.kCheckoutAddressText,
                style: appStyle(13, ColorValues.kGray, FontWeight.w500)),
            SizedBox(
              height: 10.h,
            ),
            //TODO:Add address selection
            // SizedBox(
            //     height: ScreenUtil().screenHeight * 0.6,
            //     child: const CheckoutAddressSelection())
          ],
        ),
      );
    },
  );
}
