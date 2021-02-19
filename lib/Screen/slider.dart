import 'dart:ui';
import 'package:flick_video_player/flick_video_player.dart';
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
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
          left: SizeConfig.heightMultiplier * 3.5,
          right: SizeConfig.heightMultiplier * 3.5),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: SizeConfig.heightMultiplier * 8.5,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.9,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: FlickVideoPlayer(
                        flickManager: flickManager,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 3,
              ),
              Text(
                widget.title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
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

/*class SliderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(
          left: SizeConfig.heightMultiplier * 3.5,
          right: SizeConfig.heightMultiplier * 3.5),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: SizeConfig.heightMultiplier * 8.5,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.9,
                width: MediaQuery.of(context).size.width - 40,
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
                height: SizeConfig.heightMultiplier * 2,
              ),
              Text(
                description,
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
}*/
