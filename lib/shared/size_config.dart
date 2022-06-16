import 'package:flutter/widgets.dart';

class SizeConfig {
  static double screenWidth = 0;
  static double screenHeight = 0;

  void init(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width / 100;
    screenHeight = mediaQueryData.size.height / 100;
  }

  static double blockHorizontal(double percentage) {
    return screenWidth * percentage;
  }

  static double blockVertical(double percentage) {
    return screenHeight * percentage;
  }
}
