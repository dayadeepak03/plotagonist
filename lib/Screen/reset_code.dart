import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:plotagonist/Screen/contact_support.dart';
import 'package:plotagonist/Screen/register.dart';
import 'package:plotagonist/Screen/reset_password.dart';
import 'package:plotagonist/Utils/styling.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetCode extends StatefulWidget {
  @override
  _ResetCodeState createState() => _ResetCodeState();
}

class _ResetCodeState extends State<ResetCode> {
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

  var maskFormatter = new MaskTextInputFormatter(
      mask: '##-##-##', filter: {"#": RegExp(r'[0-9]')});

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
          Stack(
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
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "After entering your reset code, you’ll be prompted to set up a new password.",
                    style: TextStyle(
                      color: Color(
                        0xff4C4C4C,
                      ),
                      fontSize: ScreenUtil().setSp(15),
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                      fontFamily: "Lato",
                      height: 1.4,
                      letterSpacing: 0.5538461208343506,
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
                    "RESET CODE",
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
                    keyboardType: TextInputType.number,
                    inputFormatters: [maskFormatter],
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(16),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Lato",
                      letterSpacing: 0.5538461208343506,
                    ),
                    decoration: InputDecoration(
                      hintText: '00-00-00',
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
                            MaterialPageRoute(builder: (_) => ResetPassword()));
                      },
                      minWidth: ScreenUtil().setWidth(134),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "RESET PASSWORD",
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
                  height: 39.h,
                ),
                Center(
                  child: Text(
                    "No email received?",
                    style: TextStyle(
                      color: Color(
                        0xff4C4C4C,
                      ),
                      fontSize: ScreenUtil().setSp(15),
                      fontWeight: FontWeight.w900,
                      fontFamily: "Lato",
                      height: 1.4,
                      letterSpacing: 0.5538461208343506,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 44.w),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'Please make sure you have checked your spam and junk folders. If the email haven\'t arrived in 5 minutes, ',
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
                          text: 'click here to resend',
                          style: new TextStyle(
                            color: Color(
                              0xffed8a19,
                            ),
                            fontSize: ScreenUtil().setSp(15),
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            fontFamily: "Lato",
                            height: 1.4,
                            letterSpacing: 0.5538461208343506,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                            print("object");
                              setState(() {
                                isError = !isError;
                              });
                            },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 48.h,
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
                                'Reset code incorrect, or expired. Please try again with the latest reset code. If all fails, please ',
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
