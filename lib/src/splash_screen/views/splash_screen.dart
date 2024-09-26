import 'package:flutter/material.dart';
import 'package:style_hive/src/splash_screen/controller/splash_controller.dart';

import '../../../constants/resource.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    SplashController.navigator(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(R.ASSETS_IMAGES_SPLASHSCREEN_PNG),
      ),
    );
  }
}
