import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:music_app/pages/IntroScreen.dart';
import 'package:music_app/pages/SplashScreen.dart';
import 'package:sizer/sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isviewed;
void main() async {
  SystemChrome.setSystemUIOverlayStyle(
  SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isviewed = prefs.getInt('IntroScreen');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Music Max',
        // theme: ThemeData(
        //   accentColor: Colors.blue,
        // ),
        home: isviewed != 0 ? IntroScreen() : Splash(),
      );
    });
  }
}
