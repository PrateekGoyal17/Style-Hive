import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:style_hive/common/services/storage.dart';

class SplashController {
  static navigator(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 3000), () {
      // TODO: Will be implementing sign-in and sign-up later
      if (Storage().getBool('isFirstTime') == null) {
        // ignore: use_build_context_synchronously
        GoRouter.of(context).go('/onboarding');
      } else {
        // ignore: use_build_context_synchronously
        GoRouter.of(context).go('/home');
      }
    });
  }
}
