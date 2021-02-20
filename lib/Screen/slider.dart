import 'dart:ui';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Utils/size_config.dart';

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
    return Container(
      padding: EdgeInsets.only(
        left: ScreenUtil().setWidth(30),
        right: ScreenUtil().setWidth(30),
      ),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: SizeConfig.heightMultiplier * 5,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.7,
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
                height: SizeConfig.heightMultiplier * 3,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  widget.title,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              Text(
                widget.description,
                style: GoogleFonts.lora(
                  height: 1.4,
                  fontSize: SizeConfig.textMultiplier * 1.7,
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 6,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
