import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Topbar extends StatelessWidget {
  const Topbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: Brightness.dark,
      backgroundColor: Colors.grey[900],
      elevation: 0,
      leading: Icon(Icons.search),
      actions: [
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Music Max',style: TextStyle(fontWeight: FontWeight.bold),
            
            ),
            Text('Relax mind',style: TextStyle(fontSize: 8.sp,color: Colors.amber),
            
            ),
            
          ],
          

        ),
        Padding(
          padding:  EdgeInsets.only(right: 3.w,left: 6.w),
          child: Icon(Icons.notifications_active_outlined,size: 8.w),
        ),
      ],
    );
  }
}
