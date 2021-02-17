import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Screen/book_author_title.dart';
import 'package:plotagonist/Utils/size_config.dart';
import 'package:plotagonist/Utils/styling.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppTheme.floatingColor,
          child: Icon(
            Icons.add,
            size: SizeConfig.heightMultiplier * 4,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => BookAuthorTitle()));
          },
        ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(SizeConfig.heightMultiplier * 13),
          child: Container(
            padding: EdgeInsets.only(top: SizeConfig.heightMultiplier * 1),
            child: AppBar(
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
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16.0),
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
              bottom: PreferredSize(
                child: Container(
                  padding: EdgeInsets.only(
                      top: SizeConfig.heightMultiplier * 1,
                      bottom: SizeConfig.heightMultiplier * 1.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.heightMultiplier * 1.5,
                            SizeConfig.heightMultiplier * 0.5,
                            SizeConfig.heightMultiplier * 1.5,
                            SizeConfig.heightMultiplier * 0.5),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 2.0,
                              ),
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            color: Colors.white),
                        child: Text(
                          'YOUR PLOTS',
                          style: TextStyle(
                              color: AppTheme.floatingColor, fontSize: 15.0),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.heightMultiplier * 1.5,
                            SizeConfig.heightMultiplier * 0.5,
                            SizeConfig.heightMultiplier * 2,
                            SizeConfig.heightMultiplier * 0.5),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 2.0,
                              ),
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            color: Colors.white),
                        child: Badge(
                          padding: EdgeInsets.all(4.0),
                          badgeContent: Text(''),
                          badgeColor: AppTheme.notifyColor,
                          child: Text(
                            'WRITING PROMPTS',
                            style: TextStyle(
                                fontSize: 15.0, color: AppTheme.txtColor),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.heightMultiplier * 1.5,
                            SizeConfig.heightMultiplier * 0.5,
                            SizeConfig.heightMultiplier * 1.5,
                            SizeConfig.heightMultiplier * 0.5),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 2.0,
                              ),
                            ],
                            color: Colors.white),
                        child: Badge(
                          padding: EdgeInsets.all(4.0),
                          badgeContent: Text(''),
                          badgeColor: AppTheme.notifyColor,
                          child: Text(
                            'INVITES',
                            style: TextStyle(
                                fontSize: 15.0, color: AppTheme.txtColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              elevation: 0,
            ),
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.all(SizeConfig.heightMultiplier * 0.5),
                  child: ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(
                            left: index == 0
                                ? SizeConfig.heightMultiplier * 3
                                : SizeConfig.heightMultiplier * 2,
                            right: index == 4
                                ? SizeConfig.heightMultiplier * 3
                                : SizeConfig.heightMultiplier * 0.5,
                            top: SizeConfig.heightMultiplier * 1),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                index == 0
                                    ? 'Your Plots'
                                    : index == 1
                                        ? 'Writing Prompts'
                                        : index == 2
                                            ? 'Invites'
                                            : '',
                                style: GoogleFonts.lora(
                                    fontSize: 26.0,
                                    fontWeight: FontWeight.bold,
                                    color: AppTheme.txtColor),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => BookAuthorTitle()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: SizeConfig.heightMultiplier * 1),
                                  child: Stack(
                                    children: [
                                      Image(
                                        image:
                                            AssetImage('assets/images/2.jpeg'),
                                        height:
                                            MediaQuery.of(context).size.height /
                                                1.8,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.3,
                                        fit: BoxFit.cover,
                                      ),
                                      Positioned(
                                        top: SizeConfig.heightMultiplier * 1,
                                        left: SizeConfig.heightMultiplier * 1,
                                        bottom: SizeConfig.heightMultiplier * 1,
                                        right: SizeConfig.heightMultiplier * 1,
                                        child: Container(
                                          padding: EdgeInsets.all(
                                              SizeConfig.heightMultiplier * 1),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.2),
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'AUTHOR NAME',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17.0,
                                                    height: 1),
                                              ),
                                              SizedBox(
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    1,
                                              ),
                                              Text(
                                                'Book Title',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 32.0,
                                                    height: 1),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: SizeConfig.heightMultiplier * 1),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.3,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Entries:0',
                                        style:
                                            TextStyle(color: AppTheme.txtColor),
                                      ),
                                      Text(
                                        'Edited:Never',
                                        style:
                                            TextStyle(color: AppTheme.txtColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.3,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: SizeConfig.heightMultiplier * 2),
                                  child: Text(
                                    'Click the orange button, or tap on the author name and the title to edit, then tap on the cover '
                                    'to find a random cover photo based on your title. Tap again to get another photo.',
                                    style: GoogleFonts.lora(
                                        fontSize: 14.55,
                                        color: AppTheme.txtColor),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
