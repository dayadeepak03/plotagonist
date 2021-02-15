import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Screen/send_invites.dart';
import 'package:plotagonist/Utils/size_config.dart';
import 'package:plotagonist/Utils/styling.dart';

class PlotSummary extends StatefulWidget {
  @override
  _PlotSummaryState createState() => _PlotSummaryState();
}

class _PlotSummaryState extends State<PlotSummary> {
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
          'Plot Summary',
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
                                    top: SizeConfig.heightMultiplier * 1),
                                child: Text(
                                  'What’s your story about?',
                                  style: GoogleFonts.lora(
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
                                  'Please try to summarise what your story is about. It’s important to have the core of your story early on, '
                                  'so you never lose track of your North Star. Think about it like the short summary at the back of the books you have read.',
                                  style: GoogleFonts.lora(
                                      fontSize: 14.0, color: AppTheme.txtColor),
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
                  Container(
                    margin: EdgeInsets.only(
                        top: SizeConfig.heightMultiplier * 16,
                        left: 20.0,
                        right: 20.0,
                        bottom: 20.0),
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.multiline,
                          maxLines: 8,
                          autofocus: true,
                          style: TextStyle(fontSize: 20.0),
                          decoration: new InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 0.0),
                            hintText: 'Please enter story summary',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 16.0),
                            labelText: 'Story Summary',
                            labelStyle: TextStyle(
                                color: AppTheme.appBarCoin, fontSize: 20.0),
                            fillColor: AppTheme.appBarCoin,
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppTheme.appBarCoin),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SendInvites()));
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 7.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: AppTheme.appBarCoin,
                      border: Border.all(color: AppTheme.appBarCoin)),
                  child: Text(
                    'NEXT STEP',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
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
