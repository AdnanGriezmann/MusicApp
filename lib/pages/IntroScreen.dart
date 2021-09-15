import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:music_app/pages/SplashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

   _storeOnboardInfo() async {
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('IntroScreen', isViewed);
    
  }




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        globalBackgroundColor: Color.fromRGBO(47, 98, 126, 1),

        // different Screen views...
        pages: [
          PageViewModel(
            title: 'Listening to your favourites Song',
            body:
                'Music is the universal language of mankind “Where words fail, music speaks.”',
            image: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.h),
                child: Padding(
                  padding: EdgeInsets.all(2.w),
                  child:
                      Image.asset('images/a.jpg', height: 100.h, width: 130.w),
                ),
              ),
            ),
            decoration: PageDecoration(
              titleTextStyle:
                  TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
              bodyTextStyle: TextStyle(fontSize: 12.sp),
              descriptionPadding: EdgeInsets.all(7.w),
              imagePadding: EdgeInsets.all(7.w),
              pageColor: Color.fromRGBO(47, 98, 126, 1),
            ),
          ),
          PageViewModel(
            title: 'Awesome and relaxing music',
            body: 'Music washes away from the soul the dust of everyday life',
            image: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.h),
                child: Padding(
                  padding: EdgeInsets.all(2.w),
                  child:
                      Image.asset('images/b.jpg', height: 100.h, width: 130.w),
                ),
              ),
            ),
            decoration: PageDecoration(
              titleTextStyle:
                  TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
              bodyTextStyle: TextStyle(fontSize: 12.sp),
              descriptionPadding: EdgeInsets.all(7.w),
              imagePadding: EdgeInsets.all(7.w),
              pageColor: Color.fromRGBO(47, 98, 126, 1),
            ),
          ),
          PageViewModel(
            title: 'Accepted and moved on',
            body:
                'One good thing about music, when it hits you, you feel no pain',
            image: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.h),
                child: Padding(
                  padding: EdgeInsets.all(2.w),
                  child:
                      Image.asset('images/c.jpg', height: 100.h, width: 130.w),
                ),
              ),
            ),
            decoration: PageDecoration(
              titleTextStyle:
                  TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
              bodyTextStyle: TextStyle(fontSize: 12.sp),
              descriptionPadding: EdgeInsets.all(7.w),
              imagePadding: EdgeInsets.all(7.w),
              pageColor: Color.fromRGBO(47, 98, 126, 1),
            ),
            // Button:
            footer: MaterialButton(
              child: Text(
                'Start Reading',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              height: 6.h,
              minWidth: 30.w,
              color: Colors.amber,
              onPressed: () async{
               
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (_) => Splash()));
                  await  _storeOnboardInfo();
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.w)),
            ),
          ),
        ],
        done: Text(
          'Read',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber),
        ),
        onDone: () async{
        
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (_) => Splash()));
               await _storeOnboardInfo();
        },
        showNextButton: true,
        showSkipButton: true,
        skip: Text(
          'Skip',
          style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
        ),
        next: Icon(Icons.arrow_forward_ios),
        dotsDecorator: DotsDecorator(
            color: Colors.white,
            size: Size(13, 13),
            activeSize: Size(20, 10),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.w),
            ),
            activeColor: Colors.black),
      ),
    );
  }
}
