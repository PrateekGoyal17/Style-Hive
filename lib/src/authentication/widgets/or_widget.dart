import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/color_values.dart';
import '../../../constants/text_styles.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: Divider(
              color: ColorValues.kLightGrey,
            )),
        SizedBox(
          width: 28.w,
        ),
        const Text(
          "OR",
          style: AppTextStyles.authOR,
        ),
        SizedBox(
          width: 28.w,
        ),
        const Expanded(
          child: Divider(
            color: ColorValues.kLightGrey,
          ),
        ),
      ],
    );
  }
}