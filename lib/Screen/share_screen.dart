import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Screen/genre_screen.dart';
import 'package:plotagonist/Utils/size_config.dart';
import 'package:plotagonist/Utils/styling.dart';

class ShareScreen extends StatefulWidget {
  @override
  _ShareScreenState createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appBackgroundColor,
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(SizeConfig.heightMultiplier * 0.4),
                  margin: EdgeInsets.only(
                      top: SizeConfig.heightMultiplier * 0.6,
                      right: SizeConfig.heightMultiplier * 1.5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black38),
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.heightMultiplier * 1),
              child: Image(
                image: AssetImage('assets/images/5.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: SizeConfig.heightMultiplier * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'What An Amazing Cover!',
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  Text(
                    'Share it with your friends, so they’ll know',
                    style: GoogleFonts.lora(
                        fontSize: 14.0, color: AppTheme.txtColor),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 0.5,
                  ),
                  Text(
                    'what you are working on.',
                    style: GoogleFonts.lora(
                        fontSize: 14.0, color: AppTheme.txtColor),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        onPressed: () {},
                        elevation: 0,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.facebookF,
                              color: AppTheme.fcolor,
                            ),
                            SizedBox(
                              width: SizeConfig.heightMultiplier * 1,
                            ),
                            Text(
                              'SHARE',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.heightMultiplier * 3,
                      ),
                      RaisedButton(
                        onPressed: () {},
                        elevation: 0,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.twitter,
                              color: AppTheme.tcolor,
                            ),
                            SizedBox(
                              width: SizeConfig.heightMultiplier * 1,
                            ),
                            Text(
                              'TWEET',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
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
                              horizontal: SizeConfig.heightMultiplier * 2),
                          child: Text(
                            'Save image to Camera Roll',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 1.5,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => GenreScreen()));
                      },
                      child: Text('Not now'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
