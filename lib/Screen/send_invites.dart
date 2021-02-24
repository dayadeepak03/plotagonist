import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Screen/tip_pageview.dart';
import 'package:plotagonist/Utils/styling.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendInvites extends StatefulWidget {
  @override
  _SendInvitesState createState() => _SendInvitesState();
}

class _SendInvitesState extends State<SendInvites> {
  int listLength = 1;
  bool _lights = true;
  bool visibilityPopUp = true;

  void _changed(bool visibility) {
    setState(() {
      visibilityPopUp = visibility;
    });
  }

  _UpdateList() {
    setState(() {
      listLength++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CupertinoNavigationBar(
        leading: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancel',
                style: TextStyle(color: AppTheme.txtappBar, fontSize: 17.sp),
              ),
            ),
          ],
        ),
        middle: Text(
          'Send Invites',
          style: TextStyle(color: Colors.black, fontSize: 17.sp),
        ),
        trailing: GestureDetector(
          onTap: () {
            /*Navigator.push(
                context, MaterialPageRoute(builder: (_) => ShareScreen()));*/
          },
          child: Text(
            'Skip',
            style: TextStyle(color: AppTheme.txtappBar, fontSize: 17.sp),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              visibilityPopUp
                  ? Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 25.w, right: 13.w, top: 15.h),
                          padding: EdgeInsets.only(left: 14.w, bottom: 10.h),
                          child: ClipPath(
                            clipper: CustomClipPath(),
                            child: Container(
                              padding: EdgeInsets.only(
                                  bottom: 10.h, left: 15.h, right: 15.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.h),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10.0,
                                    spreadRadius: 5.0,
                                    offset: Offset(8.0,
                                        8.0), // shadow direction: bottom right
                                  )
                                ],
                                color: AppTheme.appBarColor,
                              ),
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 14.w, top: 8.h, bottom: 10.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Do you want to collaborate with someone on this story?',
                                      style: GoogleFonts.lora(
                                          wordSpacing: 3,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.sp,
                                          color: AppTheme.txtColor),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      'You can invite Co-authors, Editors, Proofreaders who can '
                                      'actively edit your story, or your fans, friends or family to help you with ideas via comments.',
                                      style: GoogleFonts.lora(
                                          wordSpacing: 2,
                                          fontSize: 12.sp,
                                          color: AppTheme.txtColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 14.w, top: 15.h),
                            child: ClipOval(
                              child: Image(
                                image: AssetImage('assets/images/6.jpeg'),
                                height: 34.h,
                                width: 34.h,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 7.w,
                          top: 10.h,
                          child: GestureDetector(
                            onTap: () {
                              _changed(false);
                            },
                            child: Image(
                              image: AssetImage('assets/images/close.png'),
                              height: 20.h,
                              width: 20.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    )
                  : Container(),
              ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: listLength,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                        top: index == 0 ? 10.h : 0.h,
                        left: 18.h,
                        right: 18.h,
                        bottom: index == listLength - 1 ? 20.h : 5.h),
                    child: Column(
                      children: [
                        TextFormField(
                          autofocus: true,
                          style: TextStyle(fontSize: 14.sp),
                          decoration: new InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.h, horizontal: 0.0),
                            hintText: 'e.g. Stephen King',
                            hintStyle: GoogleFonts.lato(
                                color: Colors.grey, fontSize: 16.sp),
                            labelText: 'THEIR NAME',
                            labelStyle: GoogleFonts.lato(
                                color: AppTheme.appBarCoin, fontSize: 14.sp),
                            fillColor: AppTheme.appBarCoin,
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppTheme.appBarCoin),
                            ),
                          ),
                          onEditingComplete: () {
                            FocusScope.of(context).nextFocus();
                          },
                        ),
                        TextFormField(
                          style: TextStyle(fontSize: 14.sp),
                          decoration: new InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.h, horizontal: 0.0),
                            hintText: 'e.g. they@theiremail.com',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 16.sp),
                            labelText: 'THEIR EMAIL',
                            labelStyle: TextStyle(
                                color: AppTheme.appBarCoin, fontSize: 14.sp),
                            fillColor: AppTheme.appBarCoin,
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppTheme.appBarCoin),
                            ),
                          ),
                          onEditingComplete: () {
                            FocusScope.of(context).nextFocus();
                          },
                        ),
                        TextFormField(
                          style: TextStyle(fontSize: 14.sp),
                          decoration: new InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.h, horizontal: 0.0),
                            hintText: 'Co-Author',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 16.sp),
                            labelText: 'THEIR ROLE',
                            labelStyle: TextStyle(
                                color: AppTheme.appBarCoin, fontSize: 12.sp),
                            fillColor: AppTheme.appBarCoin,
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppTheme.appBarCoin),
                            ),
                          ),
                          onEditingComplete: () {
                            FocusScope.of(context).nextFocus();
                          },
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                            onTap: () {
                              showAlertDialog(context);
                            },
                            child: Text(
                              'Edit permissions',
                              style: GoogleFonts.lato(
                                  color: AppTheme.txtColor,
                                  fontSize: 15.sp,
                                  fontStyle: FontStyle.italic),
                            )),
                      ],
                    ),
                  );
                },
              ),
              Container(
                margin: EdgeInsets.only(bottom: 40.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _UpdateList();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 35.h, vertical: 6.h),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.h)),
                            color: AppTheme.appBarCoin,
                            border: Border.all(color: AppTheme.appBarCoin)),
                        child: Text(
                          'ADD MORE',
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 16.sp),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => TipPageView()));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 25.h, vertical: 6.h),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            color: AppTheme.appBarCoin,
                            border: Border.all(color: AppTheme.appBarCoin)),
                        child: Text(
                          'SEND INVITES',
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 16.sp),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double width = size.width;
    final double height = size.height;
    final double startMargin = width / 15;

    final double s1 = height * 0.2;
    final double s2 = height * 0.1;
    final Path path = Path()
      ..addRRect(RRect.fromRectAndRadius(
          Rect.fromLTWH(startMargin, 0.2, width - startMargin, height),
          const Radius.circular(6)))
      ..lineTo(startMargin, s1)
      ..lineTo(6.0, size.height / 8)
      ..lineTo(startMargin, s2)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

showAlertDialog(BuildContext context) {
  showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      transitionDuration: Duration(microseconds: 200),
      pageBuilder: (BuildContext context, Animation first, Animation second) {
        bool isRead = false;
        bool isComment = false;
        bool isCreate = false;
        bool isEdit = false;
        bool isDelete = false;
        return StatefulBuilder(
          builder: (context, setState) {
            return Material(
              type: MaterialType.transparency,
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 0.9.sh,
                  padding: EdgeInsets.all(30.h),
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Read only',
                                  style: GoogleFonts.lato(
                                      fontSize: 16.sp,
                                      color: AppTheme.txtColor),
                                ),
                                CupertinoSwitch(
                                    value: isRead,
                                    onChanged: (bool val) {
                                      setState(() {
                                        isRead = val;
                                      });
                                    })
                              ],
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Can Comment',
                                  style: GoogleFonts.lato(
                                      fontSize: 16.sp,
                                      color: AppTheme.txtColor),
                                ),
                                CupertinoSwitch(
                                    value: isComment,
                                    onChanged: (bool val) {
                                      setState(() {
                                        isComment = val;
                                      });
                                    })
                              ],
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Can create entries',
                                  style: GoogleFonts.lato(
                                      fontSize: 16.sp,
                                      color: AppTheme.txtColor),
                                ),
                                CupertinoSwitch(
                                    value: isCreate,
                                    onChanged: (bool val) {
                                      setState(() {
                                        isCreate = val;
                                      });
                                    })
                              ],
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Can edit entries',
                                  style: GoogleFonts.lato(
                                      fontSize: 16.sp,
                                      color: AppTheme.txtColor),
                                ),
                                CupertinoSwitch(
                                    value: isEdit,
                                    onChanged: (bool val) {
                                      setState(() {
                                        isEdit = val;
                                      });
                                    })
                              ],
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Can delete entries',
                                  style: GoogleFonts.lato(
                                      fontSize: 16.sp,
                                      color: AppTheme.txtColor),
                                ),
                                CupertinoSwitch(
                                    value: isDelete,
                                    onChanged: (bool val) {
                                      setState(() {
                                        isDelete = val;
                                      });
                                    })
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Collaborator Permissions',
                            style: TextStyle(
                                fontSize: 17.sp, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: EdgeInsets.all(6.h),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black38),
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 15.0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10.h,
                        left: 10.h,
                        right: 10.h,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40.h, vertical: 7.h),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.h)),
                                    color: AppTheme.appBarCoin,
                                    border:
                                        Border.all(color: AppTheme.appBarCoin)),
                                child: Text(
                                  'SAVE SELECTION',
                                  style: GoogleFonts.lato(
                                      fontSize: 16.sp, color: Colors.white),
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
          },
        );
      });
}
