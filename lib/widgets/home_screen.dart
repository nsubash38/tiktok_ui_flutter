import 'package:flutter/material.dart';

import 'package:tiktok_ui_home/widgets/actions_toolbar.dart';
import 'package:tiktok_ui_home/widgets/video_description.dart';
import 'package:tiktok_ui_home/widgets/bottom_toolbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final state = Provider.of<Foods>(context);
    return Scaffold(
      backgroundColor: Colors.black,
        body: Column(
      children: [
        TopSection(),
        MiddleSection(),
        BottomToolbar(),
      ],
    ));
  }

  TopSection() {
    return Container(
      height: 100,
      alignment: Alignment(0.0,1.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("Following"),
          Container(width: 15.0,),
          Text("For you", style: TextStyle(fontWeight: FontWeight.w900),)
        ],
      ),
    );
  }

  MiddleSection() {
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          VideoDescription(),
          ActionsToolbar(),
        ],
      ),
    );
  }

 

  
}
