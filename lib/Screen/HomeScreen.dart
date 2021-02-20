import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Models/dashboard_list.dart';
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
            height: 43.h,
            width: 43.w,
            fit: BoxFit.cover,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: ScreenUtil().setWidth(4)),
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
                                padding: EdgeInsets.only(
                                  left: ScreenUtil().setWidth(15),
                                ),
                                child: Row(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('assets/images/menu.png'),
                                    ),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(18),
                                    ),
                                    Image(
                                      image: AssetImage(
                                          'assets/images/search.png'),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            child: Image(
                              image: AssetImage('assets/images/logo.png'),
                              height: 32,
                              width: 32,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  right: ScreenUtil().setWidth(15),
                                ),
                                child: Row(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('assets/images/money.png'),
                                      height: 11,
                                      width: 11,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(2),
                                    ),
                                    Text(
                                      '100',
                                      style: GoogleFonts.lato(fontSize: 13.sp),
                                    ),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(4),
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
                /*Container(
                    height: 0.042.sh,
                    margin: EdgeInsets.only(top: 16.h),
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                              physics: ScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: dashboardList.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(15.h, 5.h,
                                            index == 0 ? 11.h : 17.h, 6.h),
                                        margin: EdgeInsets.only(
                                            left: index == 0 ? 17.h : 0,
                                            right: index ==
                                                    dashboardList.length - 1
                                                ? 25.h
                                                : 15.h),
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                offset:
                                                    Offset(0.0, 1.0), //(x,y)
                                                blurRadius: 2.0,
                                              ),
                                            ],
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12.0)),
                                            color: Colors.white),
                                        child: index != 0
                                            ? Badge(
                                                padding: EdgeInsets.all(4.w),
                                                badgeContent: Text(''),
                                                badgeColor:
                                                    AppTheme.notifyColor,
                                                child: Text(
                                                  dashboardList[index]
                                                      .title
                                                      .toUpperCase(),
                                                  style: GoogleFonts.lato(
                                                      fontSize: SizeConfig
                                                              .textMultiplier *
                                                          1.45,
                                                      color: index == 0
                                                          ? AppTheme
                                                              .floatingColor
                                                          : AppTheme.txtColor),
                                                ),
                                              )
                                            : Text(
                                                dashboardList[index]
                                                    .title
                                                    .toUpperCase(),
                                                style: GoogleFonts.lato(
                                                    fontSize: SizeConfig
                                                            .textMultiplier *
                                                        1.45,
                                                    color: index == 0
                                                        ? AppTheme.floatingColor
                                                        : AppTheme.txtColor),
                                              ),
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        ),
                      ],
                    )),*/
                Container(
                  margin: EdgeInsets.only(top: 16.h, left: 17.h, bottom: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 6.h, horizontal: 10.h),
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
                            style: GoogleFonts.lato(
                              color: AppTheme.floatingColor,
                              fontSize: SizeConfig.textMultiplier * 1.5,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10.w, 6.h, 16.w, 6.h),
                          margin: EdgeInsets.only(left: 11.w),
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
                              style: GoogleFonts.lato(
                                  fontSize: SizeConfig.textMultiplier * 1.4,
                                  color: AppTheme.txtColor),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(11.w, 6.h, 17.w, 6.h),
                          margin: EdgeInsets.only(left: 11.w, right: 17.w),
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
                              style: GoogleFonts.lato(
                                  fontSize: SizeConfig.textMultiplier * 1.4,
                                  color: AppTheme.txtColor),
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
                    child: ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.only(
                              left: index == 0 ? 34.w : 12.w,
                              right: index == 4 ? 34.w : 0.w,
                              top: SizeConfig.heightMultiplier * 0.1),
                          margin: EdgeInsets.all(5),
                          child: Container(
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
                                  style: GoogleFonts.lato(
                                      fontSize: 22.nsp,
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
                                        Container(
                                          color: Colors.red,
                                          child: Image(
                                            height: 400.h,
                                            width: 300.h,
                                            image: AssetImage(
                                                'assets/images/2.jpeg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Positioned(
                                          top: 10.h,
                                          left: 10.h,
                                          bottom: 10.h,
                                          right: 10.h,
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                top: 9.h, left: 12.w),
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
                                                  style: GoogleFonts.lato(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.sp,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: SizeConfig
                                                          .heightMultiplier *
                                                      1,
                                                ),
                                                Text(
                                                  'Book Title',
                                                  style: GoogleFonts.lato(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 32.sp,
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
                                SizedBox(
                                  height: SizeConfig.heightMultiplier * 1,
                                ),
                                Container(
                                  width: 300.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Entries: 0',
                                        style: GoogleFonts.lato(
                                          fontSize:
                                              SizeConfig.textMultiplier * 1.6,
                                          color: AppTheme.txtColor,
                                        ),
                                      ),
                                      Text(
                                        'Edited: Never',
                                        style: GoogleFonts.lato(
                                            fontSize:
                                                SizeConfig.textMultiplier * 1.6,
                                            color: AppTheme.txtColor),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 300.h,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: SizeConfig.heightMultiplier * 2),
                                    child: Text(
                                      'Click the orange button, or tap on the author name and the title to edit, then tap on the cover '
                                      'to find a random cover photo based on your title. Tap again to get another photo.',
                                      style: GoogleFonts.lora(
                                        fontSize:
                                            SizeConfig.heightMultiplier * 1.7,
                                        color: AppTheme.txtColor,
                                        height: 1.5,
                                      ),
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

/*
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Container(
padding: EdgeInsets.symmetric(
vertical: 6.h, horizontal: 10.h),
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
style: GoogleFonts.lato(
color: AppTheme.floatingColor,
fontSize: 12.nsp,
),
),
),
Container(
padding: EdgeInsets.fromLTRB(10.w, 6.h, 16.w, 6.h),
margin: EdgeInsets.only(left: 11.w),
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
style: GoogleFonts.lato(
fontSize: 12.nsp, color: AppTheme.txtColor),
),
),
),
Container(
padding: EdgeInsets.fromLTRB(11.w, 6.h, 17.w, 6.h),
margin: EdgeInsets.only(left: 11.w, right: 17.w),
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
style: GoogleFonts.lato(
fontSize: 12.nsp, color: AppTheme.txtColor),
),
),
),
],
),*/
