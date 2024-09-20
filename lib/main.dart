import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:style_hive/common/utils/app_routes.dart';
import 'package:style_hive/src/splash_screen/views/splash_screen.dart';

import 'common/utils/environment.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // To load the env file
  await dotenv.load(fileName: Environment.fileName);

  runApp(const StyleHive());
}

class StyleHive extends StatelessWidget {
  const StyleHive({super.key});
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return ScreenUtilInit(
      designSize: screenSize,
      minTextAdapt: true,
      splitScreenMode: false,
      useInheritedMediaQuery: true,
      builder: (_, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
        );
      },
      child: const SplashScreen(),
    );
  }
}
