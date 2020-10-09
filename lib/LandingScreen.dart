import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_suggestor/Networking.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    Networking networking = Networking();
    //networking.getData();

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu_rounded,
          size: 30.0,
        ),
        title: Center(
          child: Text(
            "Movies",
            style: GoogleFonts.nunito(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.search,
              size: 30.0,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10.0, top: 20.0, bottom: 5.0),
            child: Text(
              "Welcome",
              style: GoogleFonts.secularOne(
                fontSize: 30.0,
              ),
            ),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: AssetImage('images/movie.png'),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0, top: 20.0, bottom: 5.0),
            child: Text(
              "Movies",
              style: GoogleFonts.secularOne(
                fontSize: 30.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
