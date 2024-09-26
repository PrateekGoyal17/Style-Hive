import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:style_hive/constants/kcolors.dart';
import 'package:style_hive/src/on_boarding/controller/on_boarding_notifier.dart';
import 'package:provider/provider.dart';
import 'package:style_hive/src/on_boarding/widgets/onboarding_page_one.dart';
import 'package:style_hive/src/on_boarding/widgets/onboarding_page_two.dart';
import 'package:style_hive/src/on_boarding/widgets/welcome_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _pageController = PageController();

  @override
  void initState() {
    _pageController = PageController(
        initialPage: context.read<OnBoardingNotifier>().selectedPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _pageController,
          onPageChanged: (page) {
            context.read<OnBoardingNotifier>().selectedPage = page;
          },
          children: const [
            OnBoardingPageOne(),
            OnBoardingPageTwo(),
            WelcomeScreen(),
          ],
        ),
        Positioned(
          bottom: 50.h,
          child: Container(
            width: ScreenUtil().screenWidth,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  AntDesign.leftcircleo,
                  color: ColorValues.kPrimary,
                  size: 30.h,
                ),
                SizedBox(
                  width: ScreenUtil().screenWidth * 0.7,
                  child: PageViewDotIndicator(
                    currentItem:
                        context.watch<OnBoardingNotifier>().selectedPage,
                    count: 3,
                    unselectedColor: ColorValues.kLightBlack,
                    selectedColor: ColorValues.kPrimary,
                    duration: const Duration(milliseconds: 200),
                    onItemClicked: (page) {
                      _pageController.animateToPage(page,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeIn);
                      // context.read<OnBoardingNotifier>().selectedPage = page;
                    },
                  ),
                ),
                Icon(
                  AntDesign.rightcircleo,
                  color: ColorValues.kPrimary,
                  size: 30.h,
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
