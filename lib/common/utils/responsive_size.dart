import 'dart:ui';

extension ResponsiveSize on double {
  // Responsive width based on screen size
  double get rw {
    final screenSize = window.physicalSize / window.devicePixelRatio;
    double designWidth = 375.0; // Set according to your Figma design
    return this * (screenSize.width / designWidth);
  }

  // Responsive height based on screen size
  double get rh {
    final screenSize = window.physicalSize / window.devicePixelRatio;
    double designHeight = 812.0; // Set according to your Figma design
    return this * (screenSize.height / designHeight);
  }
}
