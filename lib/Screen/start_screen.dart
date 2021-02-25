import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Screen/Add_new.dart';
import 'package:plotagonist/Utils/styling.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartScreen extends StatefulWidget {
  final val;

  StartScreen([this.val]);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        color: Colors.black,
        style: TabStyle.reactCircle,
        top: -15,
        items: [
          TabItem(
              icon: Container(
                child: Image(
                  image: AssetImage('assets/images/shap.png'),
                  fit: BoxFit.contain,
                ),
              ),
              title: 'Alerts'),
          TabItem(
              icon: Container(
                child: Image(
                  image: AssetImage('assets/images/logo2.png'),
                  fit: BoxFit.contain,
                ),
              ),
              title: 'Add New'),
          TabItem(
              icon: Image(
                image: AssetImage('assets/images/ellips.png'),
                fit: BoxFit.contain,
              ),
              title: 'Your Muse'),
        ],
        initialActiveIndex: 1, //optional, default as 0
        onTap: (int i) {
          if (i == 1) {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => AddNew()));
          }
          if (i == 2) {
            /*Navigator.push(
                context, MaterialPageRoute(builder: (_) => Timeline()));*/
          }
        },
      ),
      resizeToAvoidBottomInset: false,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.white,
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: 15.h, top: 8.h, bottom: 8.h, right: 15.h),
                width: 1.sw,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image(
                              image: AssetImage('assets/images/menu.png'),
                              width: 30.h,
                              height: 23.h,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Image(
                              image: AssetImage('assets/images/search.png'),
                              width: 23.h,
                              height: 23.h,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Image(
                              image: AssetImage('assets/images/cloud.png'),
                              width: 29.h,
                              height: 20.h,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage('assets/images/logo.png'),
                                    width: 32.h,
                                    height: 32.h,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    width: 25.h,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image(
                              image: AssetImage('assets/images/money.png'),
                              width: 11.h,
                              height: 10.h,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              '99',
                              style: GoogleFonts.lato(
                                  fontSize: 13.sp, letterSpacing: 0.5),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Image(
                              image: AssetImage('assets/images/combine.png'),
                              width: 32.h,
                              height: 32.h,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: AppTheme.appBarColor,
                  child: CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        backgroundColor: Colors.white,
                        automaticallyImplyLeading: false,
                        expandedHeight: 160.h,
                        floating: false,
                        pinned: false,
                        flexibleSpace: FlexibleSpaceBar(
                          background: Image(
                            image: AssetImage('assets/images/4.jpeg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SliverStickyHeader(
                        header: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(
                              left: 10.0, top: 15.0, bottom: 15.0),
                          color: Color(0xffF1F1F1),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/images/timeline.png'),
                                      width: 20.h,
                                      height: 24.h,
                                      fit: BoxFit.fill,
                                    ),
                                    SizedBox(
                                      width: 7.2.h,
                                    ),
                                    Text(
                                      'Empty Streets',
                                      style: GoogleFonts.lato(fontSize: 14.sp),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/images/shape2.png'),
                                    ),
                                    SizedBox(
                                      width: 7.2.h,
                                    ),
                                    Text(
                                      'Summary',
                                      style: GoogleFonts.lato(fontSize: 14.sp),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        sliver: SliverList(
                          delegate: SliverChildListDelegate([
                            Column(
                              children: [
                                Container(
                                  color: widget.val == '1'
                                      ? AppTheme.appBarColor
                                      : Colors.white,
                                  padding: EdgeInsets.only(
                                    left: 20.h,
                                    top: 11.h,
                                    right: 20.h,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'A novel by',
                                        style: GoogleFonts.lato(
                                            color: AppTheme.txtColor,
                                            fontSize: 12.sp,
                                            letterSpacing: 0.55),
                                      ),
                                      SizedBox(
                                        height: 14.h,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                              right: 7.h,
                                            ),
                                            child: ClipOval(
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/images/1.jpeg'),
                                                height: 26.h,
                                                width: 26.h,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Jackie Willis',
                                            style: GoogleFonts.lato(
                                                color: AppTheme.txtColor,
                                                fontSize: 21.sp,
                                                fontWeight: FontWeight.w300,
                                                letterSpacing: 0.55),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                              right: 7.h,
                                            ),
                                            child: ClipOval(
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/images/jennie.png'),
                                                height: 26.h,
                                                width: 26.h,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Jennie Cooper',
                                            style: GoogleFonts.lato(
                                                color: AppTheme.txtColor,
                                                fontSize: 21.sp,
                                                fontWeight: FontWeight.w300,
                                                letterSpacing: 0.55),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 16.h,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'With special thanks to',
                                            style: GoogleFonts.lato(
                                                color: AppTheme.txtColor,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w300,
                                                letterSpacing: 0.55),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(
                                                    right: 10.h,
                                                  ),
                                                  child: ClipOval(
                                                    child: Image(
                                                      image: AssetImage(
                                                          'assets/images/brian.png'),
                                                      height: 28.h,
                                                      width: 28.h,
                                                    ),
                                                  ),
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Brian Schuster',
                                                      style: TextStyle(
                                                          fontSize: 12.sp),
                                                    ),
                                                    Text(
                                                      '@brianschuster',
                                                      style: TextStyle(
                                                          color: AppTheme
                                                              .appBarCoin,
                                                          fontSize: 11.sp),
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
                                                    right: 10.h,
                                                  ),
                                                  child: ClipOval(
                                                    child: Image(
                                                      image: AssetImage(
                                                          'assets/images/yuliya.png'),
                                                      height: 28.h,
                                                      width: 28.h,
                                                    ),
                                                  ),
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Yuliya Fjodor',
                                                      style: TextStyle(
                                                          fontSize: 12.sp),
                                                    ),
                                                    Text(
                                                      '@yuliyafjodor',
                                                      style: TextStyle(
                                                          color: AppTheme
                                                              .appBarCoin,
                                                          fontSize: 11.sp),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 18.h,
                                      ),
                                      Text(
                                        'Summary',
                                        style: GoogleFonts.lato(
                                            color: AppTheme.txtColor,
                                            fontSize: 24.sp,
                                            fontWeight: FontWeight.w200),
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      Container(
                                        child: Text(
                                          'A young girl wakes up one morning to find herself alone in her city. '
                                          'Is her Grandmother okay? Where did everyone disappear? And why does she '
                                          'feel that something is watching her? Something dark and out of '
                                          'this world...A modern take on Red Riding Hood.',
                                          style: GoogleFonts.lora(
                                              color: AppTheme.txtColor,
                                              fontSize: 17.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            widget.val == '1'
                                ? Container(
                                    color: AppTheme.appBarColor,
                                    margin: EdgeInsets.only(
                                        left: 5.h, bottom: 20.h, right: 10.0),
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      physics: ScrollPhysics(),
                                      scrollDirection: Axis.vertical,
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          margin: EdgeInsets.only(
                                              bottom: index == 2 ? 30.h : 0.h,
                                              top: index == 0 ? 15.h : 0.h),
                                          width: 1.sw,
                                          child: Table(
                                            children: [
                                              TableRow(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            left: 10.w,
                                                            right: 10.w),
                                                        padding:
                                                            EdgeInsets.all(5),
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50)),
                                                        child: Icon(
                                                            Icons.more_horiz),
                                                      ),
                                                      SizedBox(
                                                        width: 10.h,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'Chapter 1',
                                                            style: GoogleFonts.lato(
                                                                color: AppTheme
                                                                    .txtColor,
                                                                fontSize: 24.sp,
                                                                letterSpacing:
                                                                    0.55,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w200),
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .arrow_drop_down,
                                                            color: AppTheme
                                                                .txtColor
                                                                .withOpacity(
                                                                    0.50),
                                                            size: 18.h,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              TableRow(
                                                children: [
                                                  IntrinsicHeight(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .stretch,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: 0.5,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 25.w,
                                                                  right: 25.w),
                                                          color: Colors.grey,
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 10.h),
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right:
                                                                        10.h),
                                                            width: 1.sw,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .all(
                                                                Radius.circular(
                                                                    5.h),
                                                              ),
                                                            ),
                                                            child: Column(
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Container(
                                                                          margin: EdgeInsets.only(
                                                                              top: 8,
                                                                              left: 8),
                                                                          child:
                                                                              ClipOval(
                                                                            child:
                                                                                Image(
                                                                              image: AssetImage('assets/images/1.jpeg'),
                                                                              height: 28.h,
                                                                              width: 28.h,
                                                                              fit: BoxFit.fill,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              10.w,
                                                                        ),
                                                                        Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Row(
                                                                              children: [
                                                                                Text(
                                                                                  'Jackie Willis',
                                                                                  style: TextStyle(fontSize: 10.sp),
                                                                                ),
                                                                                Text(
                                                                                  ' @author',
                                                                                  style: TextStyle(fontSize: 10.sp, color: AppTheme.appBarCoin),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Text(
                                                                              '16:45 11/02/2019',
                                                                              style: TextStyle(fontSize: 10.sp),
                                                                            ),
                                                                          ],
                                                                        )
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Image(
                                                                          image:
                                                                              AssetImage('assets/images/eye.png'),
                                                                          width:
                                                                              30.h,
                                                                          height:
                                                                              16.h,
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              14.w,
                                                                        ),
                                                                        Image(
                                                                          image:
                                                                              AssetImage('assets/images/ode.png'),
                                                                          width:
                                                                              21.h,
                                                                          height:
                                                                              21.h,
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Container(
                                                                      margin: EdgeInsets.only(
                                                                          left: 12
                                                                              .h,
                                                                          top: 14
                                                                              .h),
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(4.h),
                                                                            child:
                                                                                Image(
                                                                              image: AssetImage('assets/images/a1.jpeg'),
                                                                              width: 92.h,
                                                                              height: 92.h,
                                                                              fit: BoxFit.fill,
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                7.w,
                                                                          ),
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(4.h),
                                                                            child:
                                                                                Image(
                                                                              image: AssetImage('assets/images/a2.jpeg'),
                                                                              width: 92.h,
                                                                              height: 92.h,
                                                                              fit: BoxFit.fill,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          left: 12
                                                                              .h,
                                                                          top: 8
                                                                              .h),
                                                                  child:
                                                                      RichText(
                                                                          text: TextSpan(
                                                                              children: [
                                                                        TextSpan(
                                                                          text:
                                                                              '@RedRidingHood',
                                                                          style:
                                                                              GoogleFonts.lato(
                                                                            fontSize:
                                                                                16.sp,
                                                                            color:
                                                                                AppTheme.floatingColor,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              ' wakes from a nightmare in their ',
                                                                          style:
                                                                              GoogleFonts.lato(
                                                                            fontSize:
                                                                                15.sp,
                                                                            color:
                                                                                AppTheme.txtColor,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              '#home',
                                                                          style:
                                                                              GoogleFonts.lato(
                                                                            fontSize:
                                                                                16.sp,
                                                                            color:
                                                                                AppTheme.floatingColor,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              ', there’s a message on her voicemail from her ',
                                                                          style:
                                                                              GoogleFonts.lato(
                                                                            fontSize:
                                                                                15.sp,
                                                                            color:
                                                                                AppTheme.txtColor,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              '@Mother,',
                                                                          style:
                                                                              GoogleFonts.lato(
                                                                            fontSize:
                                                                                16.sp,
                                                                            color:
                                                                                AppTheme.floatingColor,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              ' giving her the news of ',
                                                                          style:
                                                                              GoogleFonts.lato(
                                                                            fontSize:
                                                                                15.sp,
                                                                            color:
                                                                                AppTheme.txtColor,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              '@Grandma',
                                                                          style:
                                                                              GoogleFonts.lato(
                                                                            fontSize:
                                                                                16.sp,
                                                                            color:
                                                                                AppTheme.floatingColor,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              ' being ill',
                                                                          style:
                                                                              GoogleFonts.lato(
                                                                            fontSize:
                                                                                15.sp,
                                                                            color:
                                                                                AppTheme.txtColor,
                                                                          ),
                                                                        ),
                                                                      ])),
                                                                ),
                                                                Container(
                                                                  margin: EdgeInsets.only(
                                                                      top: 5.h,
                                                                      bottom:
                                                                          10.h,
                                                                      left:
                                                                          12.h),
                                                                  child: Column(
                                                                    children: [
                                                                      Divider(
                                                                        thickness:
                                                                            0.5.h,
                                                                        color: Colors
                                                                            .grey,
                                                                      ),
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Image(
                                                                            image:
                                                                                AssetImage('assets/images/comment.png'),
                                                                            width:
                                                                                14.h,
                                                                            height:
                                                                                14.h,
                                                                            fit:
                                                                                BoxFit.fill,
                                                                          ),
                                                                          Icon(
                                                                            Icons.add_circle,
                                                                            color:
                                                                                AppTheme.appBarCoin,
                                                                            size:
                                                                                18.0,
                                                                          ),
                                                                        ],
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              TableRow(
                                                children: [
                                                  IntrinsicHeight(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .stretch,
                                                      children: [
                                                        Container(
                                                          width: 0.5,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 25.w,
                                                                  right: 25.w),
                                                          color: Colors.grey,
                                                          child: Text(''),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                : Container(
                                    child: Text(''),
                                  ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
