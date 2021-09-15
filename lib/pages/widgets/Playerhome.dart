import 'package:flutter/material.dart';
import 'package:music_app/Data/Data.dart';
import 'package:sizer/sizer.dart';

class PlayerHome extends StatefulWidget {
  final Song song;
  PlayerHome(this.song);

  @override
  _PlayerHomeState createState() => _PlayerHomeState();
}

class _PlayerHomeState extends State<PlayerHome> {
  double currentslider = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 13.h,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7),
        borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(widget.song.image),
                radius: 30,
              ),
              SizedBox(width: 1.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.song.name,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.song.singer,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.pause, color: Colors.white, size: 20.sp),
                  Icon(Icons.skip_next_outlined,
                      color: Colors.green, size: 22.sp),
                ],
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    Duration(seconds: currentslider.toInt())
                        .toString()
                        .split('.')[0]
                        .substring(2),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 120,
                    child: SliderTheme(
                
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 4),
                        trackShape: RectangularSliderTrackShape(),
                        trackHeight: 4,
                      ),
                      child: Slider(
                        value: currentslider,
                        max: widget.song.duration.toDouble(),
                        min: 0,
                        inactiveColor: Colors.white,
                        activeColor: Colors.green,
                        onChanged: (val) {
                          setState(() {
                            currentslider = val;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Text(
                    Duration(seconds: widget.song.duration)
                        .toString()
                        .split('.')[0]
                        .substring(2),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
