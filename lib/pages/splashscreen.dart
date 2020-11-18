import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() {
    Timer(
        Duration(seconds: 1),
        () => Navigator.of(context)
            .pushNamedAndRemoveUntil('first', (r) => false));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [
                Color(0xFF673AB7),
                Color(0xFF512DA8),
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(0.0, 1.0),
              stops: [1, 0.0],
              tileMode: TileMode.clamp),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 98.0),
              child: Text(
                'OG',
                style: GoogleFonts.nunitoSans().copyWith(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
