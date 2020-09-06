import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_ui_home/tiktok_icons.dart';

class ActionsToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        _getFollowAction(),
        _getSocialIcon(text: "3.2m", iconData: TikTokIcons.heart),
        _getSocialIcon(iconData: TikTokIcons.chat_bubble, text: "16.2k"),
        _getSocialIcon(
            iconData: TikTokIcons.reply, text: "Share", isShare: true),
        _getMusicPlayerAction(),
      ]),
    );
  }

  Widget _getSocialIcon({
    String text,
    IconData iconData,
    bool isShare = false,
  }) {
    return Container(
      height: 60.0,
      width: 60.0,
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          Icon(
            iconData,
            size: isShare ? 25.0 : 35.0,
            color: Colors.grey[300],
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: isShare ? 10.0 : 12.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getFollowAction() {
    return Container(
      width: 60.0,
      height: 60.0,
      child: Stack(
        children: [
          _getProfilePicture(),
          _getPlusIcon(),
        ],
      ),
    );
  }

  Widget _getPlusIcon() {
    return Positioned(
      bottom: 0,
      left: 20,
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 43, 84),
            borderRadius: BorderRadius.circular(15.0)),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }

  Widget _getProfilePicture() {
    return Positioned(
      left: 5,
      child: Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50 / 2),
          ),
          child: CachedNetworkImage(
            imageUrl:
                "https://s.gravatar.com/avatar/70dd502fd66894ab8db2ad249d75ed76?s=80",
            placeholder: (context, uri) => CircularProgressIndicator(),
            errorWidget: (context, uri, error) => new Icon(
              Icons.error,
              color: Colors.black,
            ),
            fadeOutCurve: Curves.easeOut,
          )),
    );
  }

  LinearGradient get musicGradient => LinearGradient(
        colors: [
          Colors.grey[800],
          Colors.grey[900],
          Colors.grey[900],
          Colors.grey[800],
        ],
        stops: [0.0, 0.4, 0.6, 1.0],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      );

  Widget _getMusicPlayerAction() {
    return Container(
      
      width: 60.0,
      height: 60.0,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(11.0),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              gradient: musicGradient,
              borderRadius: BorderRadius.circular(25),
            ),
            child: CachedNetworkImage(
              imageUrl:
                  "https://s.gravatar.com/avatar/70dd502fd66894ab8db2ad249d75ed76?s=80",
              placeholder: (context, uri) => CircularProgressIndicator(),
              errorWidget: (context, uri, error) => new Icon(
                Icons.error,
                color: Colors.black,
              ),
              fadeOutCurve: Curves.easeOut,
            ),
          )
        ],
      ),
    );
  }
}
