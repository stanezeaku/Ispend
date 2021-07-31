import 'package:flutter/material.dart';

// To use this class you have to initialize it before the scaffold of any screen in the build method
class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static Size _mediaQueryDataSize;
  static double _screenWidth;
  static double _screenHeight;

  /*This property should be used when you want to know the available height in
  the screen, then multiplying it with a value 0 to 1 to assign a percentage
  height to an object. */
  static double availableHeight;

/*This property should be used when you want to know the available width in
  the screen, then multiplying it with a value 0 to 1 to assign a percentage
  width to an object. */
  static double availableWidth;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    _mediaQueryDataSize = _mediaQueryData.size;
    _screenWidth = _mediaQueryDataSize.width;
    _screenHeight = _mediaQueryDataSize.height;

    availableHeight = _screenHeight -
        (_mediaQueryData.padding.top + _mediaQueryData.padding.bottom);
    availableWidth = _screenWidth -
        (_mediaQueryData.padding.left + _mediaQueryData.padding.right);
  }
}
