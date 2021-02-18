import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        backgroundColor: AppTheme.appBackgroundColor,
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppTheme.floatingColor,
          child: Image(
            image: AssetImage('assets/images/plus.png'),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => BookAuthorTitle()));
          },
        ),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark.copyWith(
            statusBarColor: AppTheme.appBackgroundColor,
          ),
          child: SafeArea(
            bottom: false,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(SizeConfig.heightMultiplier * 1),
                  width: MediaQuery.of(context).size.width,
                  color: AppTheme.appBackgroundColor,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(
                                  SizeConfig.heightMultiplier * 1,
                                ),
                                child: Row(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('assets/images/menu.png'),
                                    ),
                                    SizedBox(
                                      width: SizeConfig.heightMultiplier * 2,
                                    ),
                                    Image(
                                      image: AssetImage(
                                          'assets/images/search.png'),
                                    ),
                                    SizedBox(
                                      width: SizeConfig.heightMultiplier * 2,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(
                                  SizeConfig.heightMultiplier * 1,
                                ),
                                child: Row(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('assets/images/logo.png'),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(
                                  SizeConfig.heightMultiplier * 1,
                                ),
                                child: Row(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('assets/images/money.png'),
                                    ),
                                    SizedBox(
                                      width: SizeConfig.heightMultiplier * 0.5,
                                    ),
                                    Text('100'),
                                    SizedBox(
                                      width: SizeConfig.heightMultiplier * 1,
                                    ),
                                    Image(
                                      image: AssetImage(
                                          'assets/images/combine.png'),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  color: AppTheme.appBackgroundColor,
                  padding: EdgeInsets.only(
                    bottom: SizeConfig.heightMultiplier * 1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.heightMultiplier * 1.3,
                              SizeConfig.heightMultiplier * 0.5,
                              SizeConfig.heightMultiplier * 1.3,
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
                                color: AppTheme.floatingColor, fontSize: 12.0),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 4,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.heightMultiplier * 1.5,
                              SizeConfig.heightMultiplier * 0.5,
                              SizeConfig.heightMultiplier * 2.5,
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
                                  BorderRadius.all(Radius.circular(12.0)),
                              color: Colors.white),
                          child: Badge(
                            padding: EdgeInsets.all(4.0),
                            badgeContent: Text(''),
                            badgeColor: AppTheme.notifyColor,
                            child: Text(
                              'WRITING PROMPTS',
                              style: TextStyle(
                                  fontSize: 12.0, color: AppTheme.txtColor),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.heightMultiplier * 1.5,
                              SizeConfig.heightMultiplier * 0.5,
                              SizeConfig.heightMultiplier * 2.5,
                              SizeConfig.heightMultiplier * 0.5),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
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
                                  fontSize: 12.0, color: AppTheme.txtColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
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
                                          image: AssetImage(
                                              'assets/images/2.jpeg'),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              2.1,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.3,
                                          fit: BoxFit.cover,
                                        ),
                                        Positioned(
                                          top: SizeConfig.heightMultiplier * 1,
                                          left: SizeConfig.heightMultiplier * 1,
                                          bottom:
                                              SizeConfig.heightMultiplier * 1,
                                          right:
                                              SizeConfig.heightMultiplier * 1,
                                          child: Container(
                                            padding: EdgeInsets.all(
                                                SizeConfig.heightMultiplier *
                                                    1),
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
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                          style: TextStyle(
                                              color: AppTheme.txtColor),
                                        ),
                                        Text(
                                          'Edited:Never',
                                          style: TextStyle(
                                              color: AppTheme.txtColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.3,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: SizeConfig.heightMultiplier * 2),
                                    child: Text(
                                      'Click the orange button, or tap on the author name and the title to edit, then tap on the cover '
                                      'to find a random cover photo based on your title. Tap again to get another photo.',
                                      style: GoogleFonts.lora(
                                          fontSize:
                                              SizeConfig.heightMultiplier *
                                                  1.69,
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
                ),
              ],
            ),
          ),
        ));
  }
}
