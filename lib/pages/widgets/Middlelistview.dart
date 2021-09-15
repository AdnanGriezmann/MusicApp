import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:music_app/Data/Data.dart';


class TrackWidget extends StatefulWidget {
  final Function() notifyParent;
  TrackWidget(this.notifyParent);

  @override
  _TrackWidgetState createState() => _TrackWidgetState();
}

class _TrackWidgetState extends State<TrackWidget> {
  double currentslider = 0;

  Song currentSong = Song(
      name: 'title',
      singer: 'singer',
      image: 'images/sty.jpg',
      duration: 100,
      color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: mostPopular.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              currentSong = mostPopular[index];
              currentslider = 0;
              widget.notifyParent();
            },
            child: Container(
              margin: EdgeInsets.all(1.w),
              width: 40.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.w),
                boxShadow: [
                  BoxShadow(
                      color: mostPopular[index].color,
                      blurRadius: 1,
                      spreadRadius: 1.7),
                ],
                image: DecorationImage(
                    image: AssetImage(mostPopular[index].image),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    mostPopular[index].name,
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(mostPopular[index].singer,
                      style: TextStyle(color: Colors.white, fontSize: 10.sp)),
                ],
              ),
            ),
          );
        });
  }
}
