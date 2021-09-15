

import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class Upperview extends StatefulWidget {
  const Upperview({
    Key? key,
  }) : super(key: key);

  @override
  _UpperviewState createState() => _UpperviewState();
}

class _UpperviewState extends State<Upperview> {
  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5.w),
          child: Text(
            'most',
            style: TextStyle(
                fontSize: 37.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.w),
          child: Text(
            'Popular',
            style: TextStyle(
                fontSize: 37.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.w, top: 2.w),
          child: Text(
            '360 Playlist',
            style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
                color: Colors.green),
          ),
        ),
       
      
      ],
    );
     
  }

 
}
