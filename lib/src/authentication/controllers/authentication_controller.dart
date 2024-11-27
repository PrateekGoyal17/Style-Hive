import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthenticationController with ChangeNotifier {
  bool _rememberMe = false;

  bool get rememberMe => _rememberMe;

  set rememberMe(bool value) {
    _rememberMe = value;
    notifyListeners();
  }

  navigateToSignup(BuildContext context) {
    GoRouter.of(context).go('/signup');
  }

  navigateToLogin(BuildContext context) {
    GoRouter.of(context).go('/login');
  }

  navigateToForgotPassword(BuildContext context) {
    GoRouter.of(context).push('/forgotPassword');
  }

  navigateToForgotPasswordOtp(BuildContext context) {
    GoRouter.of(context).push('/forgotPasswordOtp');
  }
}
