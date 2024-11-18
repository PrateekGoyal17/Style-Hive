import 'package:flutter/material.dart';

import 'color_values.dart';

class AppTextStyles {
  AppTextStyles._();

  // Common Text Styles

  static const TextStyle btnTextStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.normal,
    color: ColorValues.kWhite,
    fontFamily: 'Sfpro',
    height: 1.5,
  );

  // Authentication Text Styles
  static const TextStyle hintText = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: ColorValues.kGrey,
    fontFamily: 'Sfpro',
  );

  static const TextStyle authTitle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: ColorValues.kBlue,
    fontFamily: 'Sfpro',
    height: 1.5,
  );

  static const TextStyle authSubTitle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.normal,
    color: ColorValues.kGrey,
    fontFamily: 'Sfpro',
    height: 1.8,
  );

  static const TextStyle authForgotPasswordSubText = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: ColorValues.kDarkGrey,
    fontFamily: 'Sfpro',
  );

  static const TextStyle authOR = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    color: ColorValues.kGrey,
    fontFamily: 'Sfpro',
    height: 1.5,
  );

  static const TextStyle loginUsing = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.normal,
    color: ColorValues.kLightBlack,
    fontFamily: 'Sfpro',
    height: 1.5,
  );

  static const TextStyle anotherAccount = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: ColorValues.kGrey,
    fontFamily: 'Sfpro',
    height: 1.5,
  );

  static const TextStyle incorrectPassword = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.bold,
    color: ColorValues.kPink,
    fontFamily: 'Sfpro',
    height: 1.5,
  );
}
