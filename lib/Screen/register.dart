import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:plotagonist/Screen/login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: NewForm()),
    );
  }
}

class NewForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(18)),
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Color(
                      0xff4c4c4c,
                    ),
                    fontSize: ScreenUtil().setSp(12),
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(28),
              ),
              Text(
                "REGISTER",
                style: TextStyle(
                  color: Color(
                    0xffed8a19,
                  ),
                  fontSize: ScreenUtil().setSp(12),
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
          SizedBox(
            height: ScreenUtil().setHeight(65),
          ),
          Container(
            width: ScreenUtil().setWidth(134),
            height: ScreenUtil().setHeight(134),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/avatar.png',
                  width: ScreenUtil().setWidth(49),
                  height: ScreenUtil().setHeight(61),
                ),
                Container(
                  height: ScreenUtil().setHeight(28),
                  child: Center(
                    child: Text(
                      "ADD PHOTO",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(12),
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ], shape: BoxShape.circle, color: Color(0xffed8a19)),
          ),
          Container(
            margin: EdgeInsets.only(top: 48),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: ScreenUtil().setHeight(24),
                  child: Text(
                    "YOUR NAME",
                    style: TextStyle(
                      color: Color(
                        0xffed8a19,
                      ),
                      fontSize: ScreenUtil().setSp(12),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Lato",
                    ),
                  ),
                ),
                Container(
                  height: ScreenUtil().setHeight(30),
                  child: TextFormField(
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(16),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Lato",
                      letterSpacing: 0.5538461208343506,
                    ),
                    decoration: InputDecoration(
                      hintText: 'e.g. Stephen King',
                      hintStyle: TextStyle(
                        color: Color(
                          0xffababab,
                        ),
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0.5538461208343506,
                      ),
                      enabledBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color(
                        0xffed8a19,
                      ))),
                      focusedBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color(
                        0xffed8a19,
                      ))),
                      border: new UnderlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color(
                        0xffed8a19,
                      ))),
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(15),
                ),
                Container(
                  height: ScreenUtil().setHeight(24),
                  child: Text(
                    "EMAIL ADDRESS",
                    style: TextStyle(
                      color: Color(
                        0xffed8a19,
                      ),
                      fontSize: ScreenUtil().setSp(12),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Lato",
                    ),
                  ),
                ),
                Container(
                  height: ScreenUtil().setHeight(30),
                  child: TextFormField(
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(16),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Lato",
                      letterSpacing: 0.5538461208343506,
                    ),
                    decoration: InputDecoration(
                      hintText: 'you@youremail.com',
                      hintStyle: TextStyle(
                        color: Color(
                          0xffababab,
                        ),
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0.5538461208343506,
                      ),
                      enabledBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color(
                        0xffed8a19,
                      ))),
                      focusedBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color(
                        0xffed8a19,
                      ))),
                      border: new UnderlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color(
                        0xffed8a19,
                      ))),
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(15),
                ),
                Container(
                  height: ScreenUtil().setHeight(24),
                  child: Text(
                    "PASSWORD (6 characters minimum)",
                    style: TextStyle(
                      color: Color(
                        0xffed8a19,
                      ),
                      fontSize: ScreenUtil().setSp(12),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Lato",
                    ),
                  ),
                ),
                Container(
                  height: ScreenUtil().setHeight(30),
                  child: TextFormField(
                    obscureText: true,
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(16),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Lato",
                      letterSpacing: 0.5538461208343506,
                    ),
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '•••••••••',
                      hintStyle: TextStyle(
                        color: Color(
                          0xffababab,
                        ),
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0.5538461208343506,
                      ),
                      enabledBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color(
                        0xffed8a19,
                      ))),
                      focusedBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color(
                        0xffed8a19,
                      ))),
                      border: new UnderlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color(
                        0xffed8a19,
                      ))),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: ScreenUtil().setHeight(12)),
                    alignment: Alignment.center,
                    child: FlatButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.all(0),
                      height: ScreenUtil().setHeight(32),
                      color: Color(
                        0xffed8a19,
                      ),
                      onPressed: () {},
                      minWidth: ScreenUtil().setWidth(134),
                      child: Text(
                        "REGISTER",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil()
                              .setSp(15, allowFontScalingSelf: false),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Lato",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(63),
                ),
                Center(
                  child: FlatButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.all(0),
                    onPressed: () {},
                    height: ScreenUtil().setHeight(30),
                    child: Text(
                      "Need help?",
                      style: TextStyle(
                        color: Color(
                          0xff4c4c4c,
                        ),
                        fontSize: ScreenUtil().setSp(15),
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                        fontFamily: "Lato",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(52),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        customBorder: new CircleBorder(),
                        child: Image.asset(
                          'assets/images/facebook_logo.png',
                          width: ScreenUtil().setWidth(42),
                          height: ScreenUtil().setHeight(42),
                        ),
                        onTap: () {},
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(10),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/google_logo.png',
                          width: ScreenUtil().setWidth(42),
                          height: ScreenUtil().setHeight(42),
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(10),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/twitter_logo.png',
                          width: ScreenUtil().setWidth(42),
                          height: ScreenUtil().setHeight(42),
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(10),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/apple_logo.png',
                          width: ScreenUtil().setWidth(42),
                          height: ScreenUtil().setHeight(42),
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(10),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class LoginForm extends StatelessWidget {
  String email, password;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375,
      height: 768,
      child: Material(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Color(0xffe7e7e7),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
        ),
      ),
    );
  }
}
