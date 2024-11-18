import 'package:go_router/go_router.dart';
import 'package:style_hive/src/authentication/views/forgot_password_otp_screen.dart';
import 'package:style_hive/src/authentication/views/forgot_password_screen.dart';
import 'package:style_hive/src/authentication/views/login_screen.dart';
import 'package:style_hive/src/authentication/views/signup_screen.dart';
import 'package:style_hive/src/home/views/home_screen.dart';
import 'package:style_hive/src/splash/views/splash_screen.dart';

final GoRouter _router = GoRouter(initialLocation: '/', routes: [
  GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
  GoRoute(path: '/signup', builder: (context, state) => const SignupScreen()),
  GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
  GoRoute(
      path: '/forgotPassword',
      builder: (context, state) => const ForgotPasswordScreen()),
  GoRoute(
      path: '/forgotPasswordOtp',
      builder: (context, state) => const ForgotPasswordOtpScreen()),
  GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
]);

GoRouter get router => _router;
