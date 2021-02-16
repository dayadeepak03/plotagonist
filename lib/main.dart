import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plotagonist/Screen/Add_new.dart';
import 'package:plotagonist/Screen/HomeScreen.dart';
import 'package:plotagonist/Screen/allocate_media.dart';
import 'package:plotagonist/Screen/send_invites.dart';
import 'package:plotagonist/Utils/styling.dart';

import 'Utils/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              theme: ThemeData(
                accentColor: AppTheme.appBarCoin,
              ),
              debugShowCheckedModeBanner: false,
              home: HomeScreen(),
            );
          },
        );
      },
    );
  }
}
