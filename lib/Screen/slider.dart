import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Utils/size_config.dart';

class SliderPage extends StatelessWidget {
  final String title;
  final String description;

  SliderPage({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: SizeConfig.heightMultiplier * 8.5,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.7,
            width: MediaQuery.of(context).size.width - 30,
            color: Colors.black,
            child: Center(
              child: Text(
                'Video',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 3,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            description,
            style: GoogleFonts.lora(
              height: 1.4,
              fontSize: 15,
              letterSpacing: 0.7,
            ),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
