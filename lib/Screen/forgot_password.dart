import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:plotagonist/Screen/contact_support.dart';
import 'package:plotagonist/Screen/register.dart';
import 'package:plotagonist/Screen/reset_code.dart';
import 'package:plotagonist/Utils/styling.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: NewForm()),
    );
  }
}

class NewForm extends StatefulWidget {
  @override
  _NewFormState createState() => _NewFormState();
}

class _NewFormState extends State<NewForm> {
  bool isError = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(18)),
        shrinkWrap: true,
        children: [
          Flex(
            direction: Axis.horizontal,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                height: 50,
                child: Stack(
                  children: [
                    Align(
                      child: Text(
                        "RESET PASSWORD",
                        style: TextStyle(
                          color: Color(
                            0xff4c4c4c,
                          ),
                          fontSize: 13.ssp,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/img_back.png',
                              width: ScreenUtil().setWidth(24),
                              height: ScreenUtil().setHeight(24),
                            ),
                            SizedBox(
                              width: 4.5.w,
                            ),
                            Text(
                              "BACK",
                              style: TextStyle(
                                color: Color(
                                  0xff4c4c4c,
                                ),
                                fontSize: 11.ssp,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      alignment: Alignment.centerRight,
                    ),
                  ],
                ),
              )),
            ],
          ),
          SizedBox(
            height: ScreenUtil().setHeight(65),
          ),
          InkWell(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/login_logo.png',
                    width: ScreenUtil().setWidth(192),
                    height: ScreenUtil().setHeight(180),
                  ),
                ),
              ],
            ),
            onTap: () {
              setState(() {
                isError = !isError;
              });
            },
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Please enter your email address you have registered with. We'll send you an email with a 6-digit reset code.\nAfter entering the reset code, then you'll be able to set up  a new password.",
                    style: TextStyle(
                      color: Color(
                        0xff4C4C4C,
                      ),
                      fontSize: ScreenUtil().setSp(15),
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                      fontFamily: "Lato",
                      height: 1.4,
                      letterSpacing: 0.5,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(13),
                      vertical: ScreenUtil().setWidth(13)),
                  decoration: BoxDecoration(
                      color: Color(
                        0xffF2F2F2,
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                          Radius.circular(ScreenUtil().radius(5)))),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(22),
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
                        letterSpacing: 0.5,
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
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => ResetCode()));
                      },
                      minWidth: ScreenUtil().setWidth(134),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "SEND RESET CODE",
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
                ),
                SizedBox(
                  height: 80.h,
                ),
                Visibility(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'We couldn’t find an account with this email address. Please try with a different email or the social logins. If all fails, please ',
                            style: TextStyle(
                              color: Color(
                                0xff4C4C4C,
                              ),
                              fontSize: ScreenUtil().setSp(15),
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic,
                              fontFamily: "Lato",
                              height: 1.4,
                              letterSpacing: 0.5,
                            ),
                          ),
                          TextSpan(
                            text: 'contact support.',
                            style: new TextStyle(
                              color: Color(
                                0xffed8a19,
                              ),
                              fontSize: ScreenUtil().setSp(15),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                              fontFamily: "Lato",
                              height: 1.4,
                              letterSpacing: 0.5,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => ContactSupport()));


                            },
                          ),
                        ],
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(13),
                        vertical: ScreenUtil().setWidth(13)),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(
                        0xffC74C4D,
                      )),
                      color: Color(
                        0xffF9D6D6,
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(ScreenUtil().radius(5)),
                      ),
                    ),
                  ),
                  visible: isError,
                ),
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
