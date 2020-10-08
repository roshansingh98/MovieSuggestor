import 'package:flutter/material.dart';

import 'LoadingScreen.dart';
import 'ScreenSizeConstraints.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoadingScreen(),
    );
  }
}
