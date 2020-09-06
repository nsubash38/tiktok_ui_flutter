import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 70.0,
        padding: EdgeInsets.only(left:20.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "@dummyuser71",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "this is for video description",
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: Row(
                children: [
                  Icon(Icons.music_note, size:15.0, color: Colors.white,),
                  Text("this is for music")
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}