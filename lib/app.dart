import 'package:flutter/material.dart';

import 'package:tiktok_ui_home/widgets/home_screen.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeScreen(),
        theme: ThemeData(
          textTheme: Theme.of(context)
          .textTheme
          .apply(bodyColor:Colors.white, displayColor:Colors.white)
        ),
      );
   
}
}