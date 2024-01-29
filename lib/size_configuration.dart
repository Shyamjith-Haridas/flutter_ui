import 'package:flutter/material.dart';

class SizeConfiguration {
  static late MediaQueryData _mediaQueryData;
  static late double screenHeight;
  static late double screenWidth;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;
  }
}

// screen height proportions
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfiguration.screenHeight;
  return (inputHeight / 812.0) * screenHeight; // 812 is the designer use height
}

// screen width proportions
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfiguration.screenWidth;
  return (inputWidth / 375.0) * screenWidth; // 375 is the designer width
}
