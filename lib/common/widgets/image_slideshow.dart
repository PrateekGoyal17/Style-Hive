import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:style_hive/constants/color_values.dart';

class ImageSlideshow extends StatefulWidget {
  const ImageSlideshow({super.key});

  @override
  ImageSlideshowState createState() => ImageSlideshowState();
}

class ImageSlideshowState extends State<ImageSlideshow> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> _images = [
    'https://via.placeholder.com/400x200?text=Image+1',
    'https://via.placeholder.com/400x200?text=Image+2',
    'https://via.placeholder.com/400x200?text=Image+3',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: 344.h,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: _images.length,
            itemBuilder: (context, index) {
              return Image.network(
                _images[index],
                fit: BoxFit.cover,
                width: double.infinity,
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(_images.length, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: EdgeInsets.symmetric(horizontal: 4.w),
                height: 3.h,
                width: 17.w,
                decoration: BoxDecoration(
                  color: _currentPage == index
                      ? ColorValues.kBlack
                      : ColorValues.kImageSlideShowGrey,
                  borderRadius: BorderRadius.circular(3.0),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
