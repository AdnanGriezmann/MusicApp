import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/Data/Data.dart';
import 'package:music_app/pages/widgets/Appbar.dart';
import 'package:music_app/pages/widgets/Bodyupper.dart';
import 'package:music_app/pages/widgets/Middlelistview.dart';
import 'package:music_app/pages/widgets/Playerhome.dart';
import 'package:music_app/pages/widgets/bottomCircletrack.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  refresh() {
    setState(() {});
  }
   Song currentSong = Song(
      name: 'title',
      singer: 'singer',
      image: 'images/sty.jpg',
      duration: 100,
      color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      //APPBAR........
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(5.h), child: Topbar()),
      // body upper portion.....
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Upperview(),
                //middle Listview....
                Container(
                  height: 33.h,
                  child: TrackWidget(refresh),
                ),
                //bottom Circle track.....
                CircleTrackWidget(
                  song: newRelease,
                  title: 'New Releases',
                  subtitle: 'All songs',
                  notifyParent: refresh,
                ),
                CircleTrackWidget(
                  song: mostPopular,
                  title: 'your playlist',
                  subtitle: '220 songs',
                  notifyParent: refresh,
                ),
              ],
            ),
          ),
          //media player bottom view
          Align(
            alignment: Alignment.bottomCenter,
            child: PlayerHome(currentSong),
          ),
        ],
      ),
    );
  }
}
