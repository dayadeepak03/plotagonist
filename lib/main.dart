import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plotagonist/Screen/HomeScreen.dart';
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
