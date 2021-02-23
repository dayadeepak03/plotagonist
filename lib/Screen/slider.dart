import 'dart:ui';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliderPage extends StatefulWidget {
  final String title;
  final String description;

  SliderPage({this.title, this.description});
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4"),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 70.h),
        padding: EdgeInsets.only(
          left: 30.h,
          right: 30.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 470.h,
              width: 1.sw,
              color: Colors.black,
              child: ClipRRect(
                child: Center(
                  child: Flexible(
                    child: FlickVideoPlayer(
                      flickManager: flickManager,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 38.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                widget.title,
                style: GoogleFonts.lato(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            Text(
              widget.description,
              style: GoogleFonts.lora(
                  fontSize: 14.sp, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
