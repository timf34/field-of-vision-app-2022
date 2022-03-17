import 'dart:async';
import 'package:flutter/material.dart';

import 'first_page.dart';
import "dylans_frontend_code_temp.dart";

/*
  Note that I have temporarily just set this page to link to Dylan's frontend
  code. This will need to be properly integrated in due time.
 */

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

// private state to ensure we don't have the splash screen only when the app starts
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(
          // This is all that's is changed, FirstPage to FirstRoute
            context, MaterialPageRoute(builder: (context) => const FirstRoute())));
  }

  @override
  Widget build(BuildContext context) {
    const blueGradEnd = Color(0xff3A527A); // gradient color 1
    const blueGradStart = Color(0xff3E75AC); // gradient color 2

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topRight,
              stops: [0.3, 1, 0.3],
              colors: [blueGradStart, blueGradEnd, blueGradStart])),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              "images/fov_logo_transparent.png",
              // fit: BoxFit.fitWidth,
              width: 400.0,
              height: 150.0,
            ),
            Image.asset(
              "images/fov_text_transparent.png",
              // fit: BoxFit.fitWidth,
              width: 400.0,
              height: 130.0,
            ),
          ],
        ),
      ),
    );
  }
}
