import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_suggestor/ScreenSizeConstraints.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  ScreenSizeConstraints screenSizeConstraints = ScreenSizeConstraints();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  getScreenSize() {
    screenSizeConstraints.setHeightScreen(MediaQuery.of(context).size.height);
    screenSizeConstraints.setWidthScreen(MediaQuery.of(context).size.width);
  }

  @override
  Widget build(BuildContext context) {
    getScreenSize();
    print(screenSizeConstraints.getRatioHeight());
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('images/movie.png'),
                  width: (screenSizeConstraints.getRatioWidth()) * 200.0,
                  height: (screenSizeConstraints.getRatioHeight()) * 200.0,
                ),
                Text(
                  "Movie Suggester",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Text(
              "Get movie suggestions at your fingertips",
              style: GoogleFonts.sansita(
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
