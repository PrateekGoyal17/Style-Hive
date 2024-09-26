import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';
import 'package:style_hive/common/utils/app_routes.dart';
import 'package:style_hive/src/on_boarding/controller/on_boarding_notifier.dart';
import 'package:style_hive/src/splash_screen/views/splash_screen.dart';

import 'common/utils/environment.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initializing get storage.
  GetStorage.init();

  // To load the env file
  await dotenv.load(fileName: Environment.fileName);

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => OnBoardingNotifier()),
    ],
    child: const StyleHive(),
  ));
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

// TODO: Write all changes for the day here
// Added provider package navigation to project.
