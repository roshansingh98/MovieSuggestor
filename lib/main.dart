import 'package:flutter/material.dart';
import 'package:movie_suggestor/LandingScreen.dart';

import 'LoadingScreen.dart';
import 'ScreenSizeConstraints.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingScreen(),
    );
  }
}
