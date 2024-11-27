import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:style_hive/common/widgets/image_slideshow.dart';
import 'package:style_hive/src/home/widgets/categoriesCircle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 48.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w, right: 13.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(),
                  SizedBox(
                    width: 13.w,
                  ),
                  Text("Testing Name"),
                ],
              ),
              Icon(Icons.search),
            ],
          ),
        ),
        SizedBox(
          height: 90.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(8, (index) {
              return const CategoriesCircle();
            }),
          ),
        ),
        ImageSlideshow(),
      ],
    );
  }
}
