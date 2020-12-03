import 'package:flutter/material.dart';
import 'dart:async';
import 'package:uts_flutter/home.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/boba.png",
                width: size.width * 0.9,
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Text(
              "Copyright melani, 2020",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
