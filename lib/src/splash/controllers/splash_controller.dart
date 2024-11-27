import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashController {
  static navigator(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 3000), () {
      // TODO: if on boarding is implemented use this.
      // if (Storage().getBool('isFirstTime') == null) {
      //   // ignore: use_build_context_synchronously
      //   GoRouter.of(context).go('/onboarding');
      // } else {
      //   // ignore: use_build_context_synchronously
      //   GoRouter.of(context).go('/home');
      // }
      // ignore: use_build_context_synchronously
      GoRouter.of(context).go('/entrypoint');
    });
  }
}
