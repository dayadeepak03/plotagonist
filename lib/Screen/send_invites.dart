import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Screen/tip_pageview.dart';
import 'package:plotagonist/Utils/size_config.dart';
import 'package:plotagonist/Utils/styling.dart';

class SendInvites extends StatefulWidget {
  @override
  _SendInvitesState createState() => _SendInvitesState();
}

class _SendInvitesState extends State<SendInvites> {
  int listLength = 1;
  bool _lights = true;

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
        leading: Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.heightMultiplier * 0.5,
              top: SizeConfig.heightMultiplier * 1),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              'Cancel',
              style: TextStyle(color: AppTheme.txtappBar, fontSize: 18.0),
            ),
          ),
        ),
        middle: Text(
          'Send Invites',
          style: TextStyle(color: Colors.black, fontSize: 18.0),
        ),
        trailing: GestureDetector(
          onTap: () {
            /*Navigator.push(
                context, MaterialPageRoute(builder: (_) => ShareScreen()));*/
          },
          child: Padding(
            padding: EdgeInsets.only(
              right: SizeConfig.heightMultiplier * 0.5,
              bottom: SizeConfig.heightMultiplier * 0.5,
            ),
            child: Text(
              'Skip',
              style: TextStyle(color: AppTheme.txtappBar, fontSize: 18.0),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(
                          left: SizeConfig.heightMultiplier * 1,
                          top: SizeConfig.heightMultiplier * 1),
                      height: SizeConfig.heightMultiplier * 5.5,
                      width: SizeConfig.heightMultiplier * 5.5,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('assets/images/6.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50.0, right: 20.0, top: 10.0),
                    child: ClipPath(
                      clipper: CustomClipPath(),
                      child: Container(
                        height: SizeConfig.heightMultiplier * 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 10.0,
                              spreadRadius: 5.0,
                              offset: Offset(
                                  8.0, 8.0), // shadow direction: bottom right
                            )
                          ],
                          color: AppTheme.appBarColor,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: SizeConfig.heightMultiplier * 3,
                                    right: SizeConfig.heightMultiplier * 4,
                                    top: SizeConfig.heightMultiplier * 1),
                                child: Text(
                                  'Do you want to collaborate with someone on this story?',
                                  style: GoogleFonts.lora(
                                      wordSpacing: 3,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                      color: AppTheme.txtColor),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: SizeConfig.heightMultiplier * 3,
                                    top: SizeConfig.heightMultiplier * 0.5),
                                child: Text(
                                  'You can invite Co-authors, Editors, Proofreaders who can '
                                  'actively edit your story, or your fans, friends or family to help you with ideas via comments.',
                                  style: GoogleFonts.lora(
                                      wordSpacing: 2,
                                      fontSize: 14.0,
                                      color: AppTheme.txtColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -2.0,
                    top: -2.0,
                    child: Container(
                      padding:
                          EdgeInsets.all(SizeConfig.heightMultiplier * 0.4),
                      margin: EdgeInsets.only(
                          top: SizeConfig.heightMultiplier * 0.6,
                          right: SizeConfig.heightMultiplier * 1.5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black38),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 15.0,
                      ),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: listLength,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                            top: index == 0
                                ? SizeConfig.heightMultiplier * 16
                                : SizeConfig.heightMultiplier * 0,
                            left: 20.0,
                            right: 20.0,
                            bottom: index == listLength - 1
                                ? SizeConfig.heightMultiplier * 2
                                : SizeConfig.heightMultiplier * 0.5),
                        child: Column(
                          children: [
                            TextFormField(
                              autofocus: true,
                              style: TextStyle(fontSize: 14.0),
                              decoration: new InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 0.0),
                                hintText: 'e.g. Stephen King',
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 16.0),
                                labelText: 'THEIR NAME',
                                labelStyle: TextStyle(
                                    color: AppTheme.appBarCoin, fontSize: 12.0),
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
                              style: TextStyle(fontSize: 14.0),
                              decoration: new InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 0.0),
                                hintText: 'e.g. they@theiremail.com',
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 16.0),
                                labelText: 'THEIR EMAIL',
                                labelStyle: TextStyle(
                                    color: AppTheme.appBarCoin, fontSize: 12.0),
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
                              style: TextStyle(fontSize: 14.0),
                              decoration: new InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 0.0),
                                hintText: 'Co-Author',
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 16.0),
                                labelText: 'THEIR ROLE',
                                labelStyle: TextStyle(
                                    color: AppTheme.appBarCoin, fontSize: 12.0),
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
                              height: SizeConfig.heightMultiplier * 1.5,
                            ),
                            GestureDetector(
                                onTap: () {
                                  showAlertDialog(context);
                                },
                                child: Text('Edit Permissions')),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
              Container(
                margin:
                    EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _UpdateList();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 7.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            color: AppTheme.appBarCoin,
                            border: Border.all(color: AppTheme.appBarCoin)),
                        child: Text(
                          'ADD MORE',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
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
                            horizontal: 30.0, vertical: 7.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            color: AppTheme.appBarCoin,
                            border: Border.all(color: AppTheme.appBarCoin)),
                        child: Text(
                          'SEND INVITES',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
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
    final double height = size.height / 1.8;
    final double startMargin = width / 18;

    final double s1 = height * 0.3;
    final double s2 = height * 0.2;
    final Path path = Path()
      ..addRRect(RRect.fromRectAndRadius(
          Rect.fromLTWH(startMargin, 0, width - startMargin, height),
          const Radius.circular(0)))
      ..lineTo(startMargin, s1)
      ..lineTo(10.0, size.height / 7)
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
                  height: MediaQuery.of(context).size.height -
                      SizeConfig.heightMultiplier * 8,
                  padding: EdgeInsets.all(20.0),
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
                                  style: TextStyle(
                                      fontSize: 17.0, color: AppTheme.txtColor),
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
                              height: SizeConfig.heightMultiplier * 3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Can Comment',
                                  style: TextStyle(
                                      fontSize: 17.0, color: AppTheme.txtColor),
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
                              height: SizeConfig.heightMultiplier * 3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Can create entries',
                                  style: TextStyle(
                                      fontSize: 17.0, color: AppTheme.txtColor),
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
                              height: SizeConfig.heightMultiplier * 3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Can edit entries',
                                  style: TextStyle(
                                      fontSize: 17.0, color: AppTheme.txtColor),
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
                              height: SizeConfig.heightMultiplier * 3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Can delete entries',
                                  style: TextStyle(
                                      fontSize: 17.0, color: AppTheme.txtColor),
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
                                fontSize: 17, fontWeight: FontWeight.bold),
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
                            padding: EdgeInsets.all(
                                SizeConfig.heightMultiplier * 0.6),
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
                        bottom: SizeConfig.heightMultiplier * 1,
                        left: SizeConfig.heightMultiplier * 1,
                        right: SizeConfig.heightMultiplier * 1,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40.0, vertical: 7.0),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                    color: AppTheme.appBarCoin,
                                    border:
                                        Border.all(color: AppTheme.appBarCoin)),
                                child: Text(
                                  'SAVE SELECTION',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
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
