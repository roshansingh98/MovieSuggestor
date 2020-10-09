import 'package:flutter/material.dart';

class ScreenSizeConstraints {
  static double _heightScreen;
  static double _widthScreen;

  double ratio;

  setHeightScreen(var value) {
    _heightScreen = value;
  }

  setWidthScreen(var value) {
    _widthScreen = value;
  }

  double getRatioHeight() {
    return (_heightScreen / 914.285);
  }

  double getRatioWidth() {
    return (_widthScreen / 411.42);
  }
}
