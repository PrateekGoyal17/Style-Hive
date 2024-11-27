import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:style_hive/src/cart/views/cart_screen.dart';
import 'package:style_hive/src/entrypoint/controllers/entrypoint_controller.dart';
import 'package:style_hive/src/home/views/home_screen.dart';
import 'package:style_hive/src/profile/views/profile_screen.dart';
import 'package:style_hive/src/search/views/search_screen.dart';
import 'package:style_hive/src/wishlist/views/wishlist_screen.dart';

import '../../../constants/color_values.dart';
import '../../../constants/svg_image_strings.dart';

class EntryPoint extends StatelessWidget {
  EntryPoint({super.key});

  final List<Widget> screensList = [
    HomeScreen(),
    SearchScreen(),
    WishlistScreen(),
    CartScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final entrypointController = context.watch<EntrypointController>();
    return Scaffold(
      body: screensList[entrypointController.tabIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          showUnselectedLabels: true,
          // selectedItemColor: ColorValues.pinkColor,
          unselectedItemColor: ColorValues.kGrey,
          backgroundColor: ColorValues.kWhite,
          // showSelectedLabels: false,
          selectedLabelStyle: TextStyle(fontSize: 0),
          unselectedLabelStyle: TextStyle(fontSize: 0),
          onTap: (index) {
            entrypointController.tabIndex = index;
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  entrypointController.tabIndex == 0
                      ? SvgImageStrings.homeFilled
                      : SvgImageStrings.home,
                  height: 32.h,
                  width: 32.w,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  entrypointController.tabIndex == 1
                      ? SvgImageStrings.searchFilled
                      : SvgImageStrings.search,
                  height: 32.h,
                  width: 32.w,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  entrypointController.tabIndex == 2
                      ? SvgImageStrings.heartFilled
                      : SvgImageStrings.heart,
                  height: 32.h,
                  width: 32.w,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  entrypointController.tabIndex == 3
                      ? SvgImageStrings.bagFilled
                      : SvgImageStrings.bag,
                  height: 32.h,
                  width: 32.w,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  entrypointController.tabIndex == 4
                      ? SvgImageStrings.userFilled
                      : SvgImageStrings.user,
                  height: 32.h,
                  width: 32.w,
                ),
                label: ""),
          ]),
    );
  }
}
