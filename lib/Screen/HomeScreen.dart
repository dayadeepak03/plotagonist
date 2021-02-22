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
  ScrollController _scrollController = new ScrollController();
  double scrollCount = 320.h;

  void _scrollToPlots() {
    setState(() {
      scrollCount = 320.h;
      for (var item in dashboardList) {
        if (item.title == "Your Plots") {
          item.selected = true;
        } else {
          item.selected = false;
        }
      }
    });
  }

  void _scrollToWriting() {
    setState(() {
      scrollCount = 320.h * dashboardListData.length;
      for (var item in dashboardList) {
        if (item.title == "Writing Prompts") {
          item.selected = true;
        } else {
          item.selected = false;
        }
      }
    });
  }

  void _scrollToInvite() {
    setState(() {
      scrollCount = 320.h * dashboardListData2.length;
      for (var item in dashboardList) {
        if (item.title == "Invites") {
          item.selected = true;
        } else {
          item.selected = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < dashboardList.length; i++) {
      if (dashboardList.elementAt(i).selected) {
        _scrollController.animateTo(i * scrollCount,
            duration: new Duration(seconds: 2), curve: Curves.ease);
        break;
      }
    }
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
                  padding: EdgeInsets.only(top: ScreenUtil().setWidth(5)),
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
                /*  Container(
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
                                      child: GestureDetector(
                                        onTap: () {
                                          print(index);
                                          if (index == 0) {
                                            _scrollToPlots();
                                          } else if (index == 1) {
                                            _scrollToWriting();
                                          } else if (index == 2) {
                                            _scrollToInvite();
                                          }
                                        },
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              15.h,
                                              5.h,
                                              index == 0 ? 11.h : 17.h,
                                              6.h),
                                          margin: EdgeInsets.only(
                                              left: index == 0 ? 17.h : 0,
                                              right: index ==
                                                      dashboardList.length - 1
                                                  ? 17.h
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
                                                            : AppTheme
                                                                .txtColor),
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
                                                          ? AppTheme
                                                              .floatingColor
                                                          : AppTheme.txtColor),
                                                ),
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
                        child: GestureDetector(
                          onTap: () {
                            _scrollToPlots();
                          },
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
                      ),
                      Flexible(
                        flex: 3,
                        child: GestureDetector(
                          onTap: () {
                            _scrollToWriting();
                          },
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
                      ),
                      Flexible(
                        flex: 2,
                        child: GestureDetector(
                          onTap: () {
                            _scrollToInvite();
                          },
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
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      controller: _scrollController,
                      children: [
                        ListView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: dashboardListData.length,
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
                                      index == 0 ? 'Your Plots' : '',
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
                                                builder: (_) =>
                                                    BookAuthorTitle()));
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: SizeConfig.heightMultiplier *
                                                1),
                                        child: Stack(
                                          children: [
                                            Container(
                                              color: Colors.red,
                                              child: Image(
                                                height: 400.h,
                                                width: 300.h,
                                                image: AssetImage(
                                                    dashboardListData[index]
                                                        .book_img),
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
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                                  SizeConfig.textMultiplier *
                                                      1.6,
                                              color: AppTheme.txtColor,
                                            ),
                                          ),
                                          Text(
                                            'Edited: Never',
                                            style: GoogleFonts.lato(
                                                fontSize:
                                                    SizeConfig.textMultiplier *
                                                        1.6,
                                                color: AppTheme.txtColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 300.h,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: SizeConfig.heightMultiplier *
                                                1.5),
                                        child: Text(
                                          'Click the orange button, or tap on the author name and the title to edit, then tap on the cover '
                                          'to find a random cover photo based on your title. Tap again to get another photo.',
                                          style: GoogleFonts.lora(
                                            fontSize:
                                                SizeConfig.heightMultiplier *
                                                    1.7,
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
                        ListView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: dashboardListData2.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.only(
                                  left: 12.w,
                                  right: index == 4 ? 34.w : 0.w,
                                  top: SizeConfig.heightMultiplier * 0.1),
                              margin: EdgeInsets.all(5),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      index == 0 ? 'Writing Prompts' : '',
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
                                                builder: (_) =>
                                                    BookAuthorTitle()));
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: SizeConfig.heightMultiplier *
                                                1),
                                        child: Stack(
                                          children: [
                                            Container(
                                              color: Colors.red,
                                              child: Image(
                                                height: 400.h,
                                                width: 300.h,
                                                image: AssetImage(
                                                    dashboardListData2[index]
                                                        .book_img),
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
                                                      dashboardListData2[index]
                                                              .author_name ??
                                                          '',
                                                      style: GoogleFonts.lato(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16.sp,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: SizeConfig
                                                              .heightMultiplier *
                                                          1,
                                                    ),
                                                    Text(
                                                      dashboardListData2[index]
                                                              .book_name ??
                                                          '',
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
                                            'Entries: ' +
                                                dashboardListData2[index]
                                                    .entries,
                                            style: GoogleFonts.lato(
                                              fontSize:
                                                  SizeConfig.textMultiplier *
                                                      1.6,
                                              color: AppTheme.txtColor,
                                            ),
                                          ),
                                          Text(
                                            'Edited: ' +
                                                dashboardListData2[index]
                                                    .edited,
                                            style: GoogleFonts.lato(
                                                fontSize:
                                                    SizeConfig.textMultiplier *
                                                        1.6,
                                                color: AppTheme.txtColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 300.h,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: SizeConfig.heightMultiplier *
                                                1.5),
                                        child: Column(
                                          children: [
                                            Text(
                                              dashboardListData2[index].desc,
                                              style: GoogleFonts.lora(
                                                fontSize: SizeConfig
                                                        .heightMultiplier *
                                                    1.7,
                                                color: AppTheme.txtColor,
                                                height: 1.5,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: SizeConfig
                                                          .heightMultiplier *
                                                      3,
                                                  vertical: SizeConfig
                                                          .heightMultiplier *
                                                      0.8),
                                              margin: EdgeInsets.only(
                                                top: SizeConfig
                                                        .heightMultiplier *
                                                    1.5,
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(2.0)),
                                                  color: AppTheme.floatingColor,
                                                  border: Border.all(
                                                      color: AppTheme
                                                          .floatingColor)),
                                              child: Text(
                                                dashboardListData2[index]
                                                    .button_title,
                                                style: GoogleFonts.lato(
                                                    color: Colors.white,
                                                    fontSize: 16.0),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                top: SizeConfig
                                                        .heightMultiplier *
                                                    1,
                                              ),
                                              child: Text(
                                                dashboardListData2[index]
                                                    .text_title,
                                                style: GoogleFonts.lato(
                                                    fontStyle: FontStyle.italic,
                                                    color: AppTheme.txtColor,
                                                    fontSize: 15.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        ListView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: dashboardListData3.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.only(
                                  left: 12.w,
                                  right: index == dashboardListData3.length - 1
                                      ? 12.w
                                      : 0.w,
                                  top: SizeConfig.heightMultiplier * 0.1),
                              margin: EdgeInsets.all(5),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      index == 0 ? 'Invites' : '',
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
                                                builder: (_) =>
                                                    BookAuthorTitle()));
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: SizeConfig.heightMultiplier *
                                                1),
                                        child: Stack(
                                          children: [
                                            Container(
                                              color: Colors.red,
                                              child: Image(
                                                height: 400.h,
                                                width: 300.h,
                                                image: AssetImage(
                                                    dashboardListData3[index]
                                                        .book_img),
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
                                                      dashboardListData3[index]
                                                          .author_name,
                                                      style: GoogleFonts.lato(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16.sp,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: SizeConfig
                                                              .heightMultiplier *
                                                          1,
                                                    ),
                                                    Text(
                                                      dashboardListData3[index]
                                                          .book_name,
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
                                            'Entries: ' +
                                                dashboardListData3[index]
                                                    .entries,
                                            style: GoogleFonts.lato(
                                              fontSize:
                                                  SizeConfig.textMultiplier *
                                                      1.6,
                                              color: AppTheme.txtColor,
                                            ),
                                          ),
                                          Text(
                                            'Edited: ' +
                                                dashboardListData3[index]
                                                    .edited,
                                            style: GoogleFonts.lato(
                                                fontSize:
                                                    SizeConfig.textMultiplier *
                                                        1.6,
                                                color: AppTheme.txtColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 300.h,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: SizeConfig.heightMultiplier *
                                                2),
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CircleAvatar(
                                                    child: Image(
                                                      image: AssetImage(
                                                          dashboardListData3[
                                                                  index]
                                                              .invite_avatar),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    backgroundColor:
                                                        Colors.transparent,
                                                  ),
                                                  Text(
                                                    dashboardListData3[index]
                                                        .invite_name,
                                                    style: GoogleFonts.lato(
                                                      fontSize: SizeConfig
                                                              .heightMultiplier *
                                                          2,
                                                      color: AppTheme.txtColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                dashboardListData3[index].desc,
                                                style: GoogleFonts.lato(
                                                  fontSize: SizeConfig
                                                          .heightMultiplier *
                                                      1.7,
                                                  color: AppTheme.txtColor,
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: SizeConfig
                                                            .heightMultiplier *
                                                        3,
                                                    vertical: SizeConfig
                                                            .heightMultiplier *
                                                        0.8),
                                                margin: EdgeInsets.only(
                                                  top: SizeConfig
                                                          .heightMultiplier *
                                                      1.5,
                                                ),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                2.0)),
                                                    color:
                                                        AppTheme.floatingColor,
                                                    border: Border.all(
                                                        color: AppTheme
                                                            .floatingColor)),
                                                child: Text(
                                                  dashboardListData3[index]
                                                      .button_title,
                                                  style: GoogleFonts.lato(
                                                      color: Colors.white,
                                                      fontSize: 16.0),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                  top: SizeConfig
                                                          .heightMultiplier *
                                                      1,
                                                ),
                                                child: Text(
                                                  dashboardListData3[index]
                                                      .text_title,
                                                  style: GoogleFonts.lato(
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      color: AppTheme.txtColor,
                                                      fontSize: 15.0),
                                                ),
                                              ),
                                            ],
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
                      ],
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
