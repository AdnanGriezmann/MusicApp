import 'package:music_app/Data/Data.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class CircleTrackWidget extends StatefulWidget {
  final String title;
  final List<Song> song;
  final String subtitle;
  final Function() notifyParent;

  CircleTrackWidget(
      {required this.title,
      required this.song,
      required this.subtitle,
      required this.notifyParent});

  @override
  _CircleTrackWidgetState createState() => _CircleTrackWidgetState();
}

class _CircleTrackWidgetState extends State<CircleTrackWidget> {
  


  @override
  Widget build(BuildContext context ) {
    return Container(
      //height: 23.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.w, top: 2.h),
            child: Text(
              widget.title,
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.w, top: 1.h),
            child: Text(
              widget.subtitle,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          Container(
            height: 14.h,
            child: ListView.builder(
              itemCount: widget.song.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage(widget.song[index].image),
                        radius: 30,
                      ),
                      Text(
                        widget.song[index].name,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        widget.song[index].singer,
                        style: TextStyle(color: Colors.greenAccent),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
