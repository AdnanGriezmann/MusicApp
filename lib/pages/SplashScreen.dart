import 'package:flutter/material.dart';
import 'package:music_app/pages/HomeScreen.dart';
import 'package:sizer/sizer.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
   Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (_) => Home()));

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                'images/mx.png',
                height: 35.h,
                width: 80.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
