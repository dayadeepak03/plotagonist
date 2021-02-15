import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Utils/size_config.dart';
import 'package:plotagonist/Utils/styling.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppTheme.appBarColor,
        brightness: Brightness.light,
        leading: Icon(
          CupertinoIcons.bars,
          color: CupertinoColors.black,
          size: SizeConfig.heightMultiplier * 4,
        ),
        title: Container(
          padding: EdgeInsets.all(SizeConfig.heightMultiplier * 1),
          decoration: BoxDecoration(
              color: AppTheme.floatingColor, shape: BoxShape.circle),
          child: SvgPicture.string(
              '''<svg width="512" height="512" viewBox="0 0 512 512" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M256 512C397.385 512 512 397.385 512 256C512 172.117 471.655 97.6567 409.312 50.9652C373.497 99.4612 292.039 210.707 248.701 277.442C208.394 339.508 156.733 431.333 130.319 479.077C167.444 500.038 210.325 512 256 512ZM124.074 475.434L153.496 416.278L129.522 277.317L150.937 253.428L171.554 388.457L167.346 235.123L322.777 72.3973L395.04 41.0128C355.003 15.0665 307.261 0 256 0C114.615 0 0 114.615 0 256C0 349.126 49.7259 430.639 124.074 475.434Z" fill="#ED8A19"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M322.777 72.3973L426.968 27.1462C426.968 27.1462 305.311 190.269 248.701 277.442C192.09 364.614 113.08 510.49 113.08 510.49L108.212 507.328L153.496 416.278L129.522 277.317L150.937 253.428L171.554 388.457L167.346 235.123L322.777 72.3973Z" fill="white"/>
</svg>
'''),
          height: SizeConfig.imageSizeMultiplier * 10,
          width: SizeConfig.imageSizeMultiplier * 10,
        ),
        actions: [
          Stack(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Center(
                        child: Icon(
                          Icons.album_rounded,
                          color: AppTheme.appBarCoin,
                          size: SizeConfig.imageSizeMultiplier * 3,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: SizeConfig.heightMultiplier * 0.5),
                        child: Text(
                          '100',
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(
                        right: SizeConfig.heightMultiplier * 2,
                      ),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('assets/images/1.jpeg'),
                          height: SizeConfig.imageSizeMultiplier * 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: SizeConfig.heightMultiplier * 18,
            floating: false,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage('assets/images/4.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 10.0, top: 15.0, bottom: 15.0),
                  color: Color(0xffF1F1F1),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Icon(Icons.account_tree_sharp),
                            SizedBox(
                              width: SizeConfig.heightMultiplier * 1,
                            ),
                            Text('Empty Streets'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Icon(Icons.arrow_drop_down_circle_sharp),
                            SizedBox(
                              width: SizeConfig.heightMultiplier * 1,
                            ),
                            Text('Summary'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: SizeConfig.heightMultiplier * 2,
                    top: SizeConfig.heightMultiplier * 1.5,
                    right: SizeConfig.heightMultiplier * 2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'A novel by',
                        style: TextStyle(color: AppTheme.txtColor),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              right: SizeConfig.heightMultiplier * 1,
                            ),
                            child: ClipOval(
                              child: Image(
                                image: AssetImage('assets/images/1.jpeg'),
                                height: SizeConfig.imageSizeMultiplier * 8,
                              ),
                            ),
                          ),
                          Text(
                            'Jackie Willis',
                            style: TextStyle(
                                color: AppTheme.txtColor,
                                fontSize: 21.0,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1.5),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              right: SizeConfig.heightMultiplier * 1,
                            ),
                            child: ClipOval(
                              child: Image(
                                image: AssetImage('assets/images/jennie.png'),
                                height: SizeConfig.imageSizeMultiplier * 8,
                              ),
                            ),
                          ),
                          Text(
                            'Jennie Cooper',
                            style: TextStyle(
                                color: AppTheme.txtColor,
                                fontSize: 21.0,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1.5),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      Row(
                        children: [
                          Text(
                            'With special thanks to',
                            style: TextStyle(
                                color: AppTheme.txtColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                    right: SizeConfig.heightMultiplier * 1,
                                  ),
                                  child: ClipOval(
                                    child: Image(
                                      image:
                                          AssetImage('assets/images/brian.png'),
                                      height:
                                          SizeConfig.imageSizeMultiplier * 8,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Brian Schuster',
                                      style: TextStyle(fontSize: 12.0),
                                    ),
                                    Text(
                                      '@brianschuster',
                                      style: TextStyle(
                                          color: AppTheme.appBarCoin,
                                          fontSize: 12.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                    right: SizeConfig.heightMultiplier * 1,
                                  ),
                                  child: ClipOval(
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/yuliya.png'),
                                      height:
                                          SizeConfig.imageSizeMultiplier * 8,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Yuliya Fjodor',
                                      style: TextStyle(fontSize: 12.0),
                                    ),
                                    Text(
                                      '@yuliyafjodor',
                                      style: TextStyle(
                                          color: AppTheme.appBarCoin,
                                          fontSize: 12.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      Text(
                        'Summary',
                        style: TextStyle(
                            color: AppTheme.txtColor,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w200),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      Text(
                        'A young girl wakes up one morning to find herself alone in her city. '
                        'Is her Grandmother okay? Where did everyone disappear? And why does she '
                        'feel that something is watching her? Something dark and out of '
                        'this world...A modern take on Red Riding Hood.',
                        style: GoogleFonts.lora(
                            color: AppTheme.txtColor,
                            fontSize: 17.0,
                            letterSpacing: 1.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}