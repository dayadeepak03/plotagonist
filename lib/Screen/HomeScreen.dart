import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Models/dashboard_list.dart';
import 'package:plotagonist/Screen/book_author_title.dart';
import 'package:plotagonist/Utils/styling.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollController = new ScrollController();
  double scrollCount = 320.w;

  void _scrollToPlots() {
    setState(() {
      scrollCount = 320.w;
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
      scrollCount = 320.w * dashboardListData.length;
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
      scrollCount = 320.w * dashboardListData2.length;
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
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppTheme.appBackgroundColor,
          floatingActionButton: Container(
            height: 55.h,
            width: 55.w,
            child: FloatingActionButton(
              backgroundColor: AppTheme.floatingColor,
              child: Image(
                image: AssetImage('assets/images/plus.png'),
                height: 22.h,
                width: 22.w,
                fit: BoxFit.cover,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => BookAuthorTitle()));
              },
            ),
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
                    padding: EdgeInsets.only(top: 7.h, bottom: 1.h),
                    width: 1.sw,
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
                                    left: 15.w,
                                  ),
                                  child: Row(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/images/menu.png'),
                                        height: 23.h,
                                        width: 30.w,
                                      ),
                                      SizedBox(
                                        width: 19.w,
                                      ),
                                      Image(
                                        image: AssetImage(
                                            'assets/images/search.png'),
                                        height: 23.h,
                                        width: 23.w,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              child: Image(
                                image: AssetImage('assets/images/logo2.png'),
                                height: 32.h,
                                width: 32.w,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                    right: 15.w,
                                  ),
                                  child: Row(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/images/money.png'),
                                        height: 11.h,
                                        width: 11.h,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Text(
                                        '100',
                                        style: GoogleFonts.lato(
                                            fontSize: 13.sp,
                                            letterSpacing: 0.5,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Image(
                                        image: AssetImage(
                                            'assets/images/combine.png'),
                                        height: 32.h,
                                        width: 32.w,
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
                    //color: Colors.blue,
                    margin: EdgeInsets.only(
                        top: 10.h, left: 17.w, bottom: 7.h, right: 17.w),
                    child: Table(
                      columnWidths: {
                        0: FixedColumnWidth(110.w), // fixed to 100 width
                        1: FlexColumnWidth(),
                        2: FixedColumnWidth(100.w), //fixed to 100 width
                      },
                      children: [
                        TableRow(
                          children: [
                            GestureDetector(
                              onTap: () {
                                _scrollToPlots();
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 6.h, horizontal: 10.w),
                                margin: EdgeInsets.only(right: 11.w),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppTheme.blurColor,
                                        offset: Offset(0.0, 1.h), //(x,y)
                                        blurRadius: 4.r,
                                      ),
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(14.r)),
                                    color: Colors.white),
                                child: Center(
                                  child: Text(
                                    'YOUR PLOTS',
                                    style: GoogleFonts.lato(
                                      color: AppTheme.floatingColor,
                                      fontSize: 12.sp,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _scrollToWriting();
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 6.h, horizontal: 10.h),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppTheme.blurColor,
                                        offset: Offset(0.0, 1.h), //(x,y)
                                        blurRadius: 4.r,
                                      ),
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(14.r)),
                                    color: Colors.white),
                                child: Center(
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Badge(
                                          padding: EdgeInsets.symmetric(vertical: 4.h,horizontal: 4.w),
                                          badgeColor: AppTheme.notifyColor,
                                          badgeContent: Text(''),
                                          child: Text(
                                            'WRITING PROMPTS ',
                                            style: GoogleFonts.lato(
                                                fontSize: 12.sp,
                                                color: AppTheme.txtColor,
                                                letterSpacing: 0.5),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _scrollToInvite();
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 6.h, horizontal: 10.h),
                                margin: EdgeInsets.only(left: 11.w),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppTheme.blurColor,
                                        offset: Offset(0.0, 1.h), //(x,y)
                                        blurRadius: 4.r,
                                      ),
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(14.r)),
                                    color: Colors.white),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Badge(
                                        padding: EdgeInsets.all(4.h),
                                        badgeColor: AppTheme.notifyColor,
                                        badgeContent: Text(''),
                                        child: Text(
                                          'INVITES ',
                                          style: GoogleFonts.lato(
                                              fontSize: 11.5.sp,
                                              color: AppTheme.txtColor,
                                              letterSpacing: 0.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: ListView(
                        padding: EdgeInsets.symmetric(horizontal: 18.w),
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
                                  left: index == 0 ? 6.w : 6.w,
                                  right: index == 4 ? 0.w : 0.w,
                                ),
                                margin: EdgeInsets.all(5),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        index == 0 ? 'Your Plots' : '',
                                        style: GoogleFonts.lato(
                                            fontSize: 22.sp,
                                            fontWeight: FontWeight.w900,
                                            letterSpacing: 0.5,
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
                                          padding: EdgeInsets.only(top: 9.h),
                                          child: Stack(
                                            children: [
                                              Container(
                                                color: Colors.white,
                                                child: Image(
                                                  height: 400.h,
                                                  width: 300.w,
                                                  image: AssetImage(
                                                      dashboardListData[index]
                                                          .book_img),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Positioned(
                                                top: 10.h,
                                                left: 10.w,
                                                bottom: 10.h,
                                                right: 10.w,
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
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        dashboardListData[index]
                                                            .author_name,
                                                        style: GoogleFonts.lato(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 16.sp,
                                                            letterSpacing: 0.5),
                                                      ),
                                                      SizedBox(
                                                        height: 8.h,
                                                      ),
                                                      Text(
                                                        dashboardListData[index]
                                                            .book_name,
                                                        style: GoogleFonts.lato(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontSize: 32.sp,
                                                            height: 1,
                                                            letterSpacing: 0.5),
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
                                        height: 8.h,
                                      ),
                                      Container(
                                        width: 300.w,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Entries: ' +
                                                  dashboardListData[index]
                                                      .entries,
                                              style: GoogleFonts.lato(
                                                  fontSize: 12.sp,
                                                  color: AppTheme.txtColor,
                                                  letterSpacing: 0.5),
                                            ),
                                            Text(
                                              'Edited: ' +
                                                  dashboardListData[index]
                                                      .edited,
                                              style: GoogleFonts.lato(
                                                  fontSize: 12.sp,
                                                  color: AppTheme.txtColor,
                                                  letterSpacing: 0.5),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 300.w,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 12.h),
                                          child: Text(
                                            dashboardListData[index].desc,
                                            style: GoogleFonts.lora(
                                                fontSize: 14.sp,
                                                color: AppTheme.txtColor,
                                                height: 1.5,
                                                letterSpacing: 0.5),
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
                                ),
                                margin: EdgeInsets.symmetric(vertical: 5.h,horizontal: 5.w),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        index == 0 ? 'Writing Prompts' : '',
                                        style: GoogleFonts.lato(
                                            fontSize: 22.sp,
                                            fontWeight: FontWeight.w900,
                                            color: AppTheme.txtColor,
                                            letterSpacing: 0.5),
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
                                          padding: EdgeInsets.only(top: 9.h),
                                          child: Stack(
                                            children: [
                                              Container(
                                                color: Colors.red,
                                                child: Image(
                                                  height: 400.h,
                                                  width: 300.w,
                                                  image: AssetImage(
                                                      dashboardListData2[index]
                                                          .book_img),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Positioned(
                                                top: 10.h,
                                                left: 10.w,
                                                bottom: 10.h,
                                                right: 10.w,
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
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        dashboardListData2[
                                                                    index]
                                                                .author_name ??
                                                            '',
                                                        style: GoogleFonts.lato(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16.sp,
                                                            letterSpacing: 0.5),
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Text(
                                                        dashboardListData2[
                                                                    index]
                                                                .book_name ??
                                                            '',
                                                        style: GoogleFonts.lato(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontSize: 32.sp,
                                                            height: 1,
                                                            letterSpacing: 0.5),
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
                                        height: 10.h,
                                      ),
                                      Container(
                                        width: 300.w,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Entries: ' +
                                                  dashboardListData2[index]
                                                      .entries,
                                              style: GoogleFonts.lato(
                                                  fontSize: 12.sp,
                                                  color: AppTheme.txtColor,
                                                  letterSpacing: 0.5),
                                            ),
                                            Text(
                                              'Edited: ' +
                                                  dashboardListData2[index]
                                                      .edited,
                                              style: GoogleFonts.lato(
                                                  fontSize: 12.sp,
                                                  color: AppTheme.txtColor,
                                                  letterSpacing: 0.5),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 300.w,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 12.h),
                                          child: Column(
                                            children: [
                                              Text(
                                                dashboardListData2[index].desc,
                                                style: GoogleFonts.lora(
                                                    fontSize: 14.sp,
                                                    color: AppTheme.txtColor,
                                                    height: 1.5,
                                                    letterSpacing: 0.5),
                                              ),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 25.w,
                                                    vertical: 7.h),
                                                margin: EdgeInsets.only(
                                                  top: 20.h,
                                                ),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                2.h)),
                                                    color:
                                                        AppTheme.floatingColor,
                                                    border: Border.all(
                                                        color: AppTheme
                                                            .floatingColor)),
                                                child: Text(
                                                  dashboardListData2[index]
                                                      .button_title,
                                                  style: GoogleFonts.lato(
                                                      color: Colors.white,
                                                      fontSize: 16.sp,
                                                      letterSpacing: 0.5),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                  top: 8.h,
                                                ),
                                                child: Text(
                                                  dashboardListData2[index]
                                                      .text_title,
                                                  style: GoogleFonts.lato(
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      color: AppTheme.txtColor,
                                                      fontSize: 15.h,
                                                      letterSpacing: 0.5),
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
                                ),
                                margin: EdgeInsets.symmetric(vertical: 5.h,horizontal: 5.w),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        index == 0 ? 'Invites' : '',
                                        style: GoogleFonts.lato(
                                            fontSize: 22.sp,
                                            fontWeight: FontWeight.bold,
                                            color: AppTheme.txtColor,
                                            letterSpacing: 0.5),
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
                                          padding: EdgeInsets.only(top: 10.h),
                                          child: Stack(
                                            children: [
                                              Container(
                                                color: Colors.red,
                                                child: Image(
                                                  height: 400.h,
                                                  width: 300.w,
                                                  image: AssetImage(
                                                      dashboardListData3[index]
                                                          .book_img),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Positioned(
                                                top: 10.h,
                                                left: 10.2.w,
                                                bottom: 10.h,
                                                right: 10.2.w,
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
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        dashboardListData3[
                                                                index]
                                                            .author_name,
                                                        style: GoogleFonts.lato(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16.sp,
                                                            letterSpacing: 0.5),
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Text(
                                                        dashboardListData3[
                                                                index]
                                                            .book_name,
                                                        style: GoogleFonts.lato(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 32.sp,
                                                            height: 1,
                                                            letterSpacing: 0.5),
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
                                        height: 10.h,
                                      ),
                                      Container(
                                        width: 300.w,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Entries: ' +
                                                  dashboardListData3[index]
                                                      .entries,
                                              style: GoogleFonts.lato(
                                                  fontSize: 12.sp,
                                                  color: AppTheme.txtColor,
                                                  letterSpacing: 0.5),
                                            ),
                                            Text(
                                              'Edited: ' +
                                                  dashboardListData3[index]
                                                      .edited,
                                              style: GoogleFonts.lato(
                                                  fontSize: 12.sp,
                                                  color: AppTheme.txtColor,
                                                  letterSpacing: 0.5),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 300.w,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 16.h),
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
                                                          fontSize: 17.sp,
                                                          color:
                                                              AppTheme.txtColor,
                                                          letterSpacing: 0.5),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  dashboardListData3[index]
                                                      .desc,
                                                  style: GoogleFonts.lato(
                                                      fontSize: 13.sp,
                                                      color: AppTheme.txtColor,
                                                      letterSpacing: 0.5),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 25.w,
                                                      vertical: 7.h),
                                                  margin: EdgeInsets.only(
                                                    top: 20.h,
                                                  ),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  2.h)),
                                                      color: AppTheme
                                                          .floatingColor,
                                                      border: Border.all(
                                                          color: AppTheme
                                                              .floatingColor)),
                                                  child: Text(
                                                    dashboardListData3[index]
                                                        .button_title,
                                                    style: GoogleFonts.lato(
                                                        color: Colors.white,
                                                        fontSize: 16.sp,
                                                        letterSpacing: 0.5),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                    top: 8.h,
                                                  ),
                                                  child: Text(
                                                    dashboardListData3[index]
                                                        .text_title,
                                                    style: GoogleFonts.lato(
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        color:
                                                            AppTheme.txtColor,
                                                        fontSize: 15.sp,
                                                        letterSpacing: 0.5),
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
          )),
    );
  }
}
