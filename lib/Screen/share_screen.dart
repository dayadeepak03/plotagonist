import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Screen/genre_screen.dart';
import 'package:plotagonist/Utils/styling.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShareScreen extends StatefulWidget {
  @override
  _ShareScreenState createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light.copyWith(
            statusBarColor: AppTheme.appBackgroundColor,
          ),
          child: SafeArea(
            bottom: false,
            child: ListView(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => GenreScreen()));
                          },
                          child: Container(
                              margin: EdgeInsets.only(top: 8.h, right: 8.h),
                              child: Image(
                                image: AssetImage('assets/images/close.png'),
                              )),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.h),
                      child: Image(
                        image: AssetImage('assets/images/image1.png'),
                        width: 376.w,
                        height: 376.h,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'What An Amazing Cover!',
                            style: GoogleFonts.lato(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Text(
                            'Share it with your friends, so they’ll know',
                            style: GoogleFonts.lora(
                                fontSize: 14.sp, color: AppTheme.txtColor),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'what you are working on.',
                            style: GoogleFonts.lora(
                                fontSize: 14.sp, color: AppTheme.txtColor),
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RaisedButton(
                                onPressed: () {},
                                elevation: 0,
                                color: AppTheme.fback,
                                child: Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.facebookF,
                                      color: AppTheme.fcolor,
                                    ),
                                    SizedBox(
                                      width: 16.w,
                                    ),
                                    Text(
                                      'SHARE',
                                      style: GoogleFonts.lato(
                                          fontSize: 15.sp, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 21.w,
                              ),
                              RaisedButton(
                                onPressed: () {},
                                elevation: 0,
                                color: AppTheme.fback,
                                child: Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.twitter,
                                      color: AppTheme.tcolor,
                                    ),
                                    SizedBox(
                                      width: 12.w,
                                    ),
                                    Text(
                                      'TWEET',
                                      style: GoogleFonts.lato(
                                          fontSize: 15.sp, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RaisedButton(
                                onPressed: () {},
                                elevation: 0,
                                color: AppTheme.floatingColor,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.w, vertical: 7.h),
                                  child: Center(
                                    child: Text(
                                      'Save image to Camera Roll',
                                      style: GoogleFonts.lato(
                                          fontSize: 16.sp, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => GenreScreen()));
                              },
                              child: Container(
                                child: Text(
                                  'Not now',
                                  style: GoogleFonts.lato(
                                      fontSize: 15.sp,
                                      fontStyle: FontStyle.italic),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
