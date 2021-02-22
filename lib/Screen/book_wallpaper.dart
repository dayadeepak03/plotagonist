import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:plotagonist/Screen/share_screen.dart';
import 'package:plotagonist/Utils/styling.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookWallpaper extends StatefulWidget {
  final author;
  final title;

  BookWallpaper(this.author, this.title);

  @override
  _BookWallpaperState createState() => _BookWallpaperState();
}

class _BookWallpaperState extends State<BookWallpaper> {
  String path = 'assets/images/3.jpeg';
  String img1 = 'assets/images/3.jpeg';
  String img2 = 'assets/images/4.jpeg';
  bool _isInAsyncCall = false;

  void showOverlay() {
    setState(() {
      _isInAsyncCall = true;
    });

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isInAsyncCall = false;
      });
    });
  }

  _changeImg(String req) {
    setState(() {
      path = req;
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
                style: TextStyle(color: AppTheme.txtappBar, fontSize: 18.nsp),
              ),
            ),
          ],
        ),
        middle: Text(
          'Create New Plot',
          style: TextStyle(color: Colors.black, fontSize: 18.nsp),
        ),
        trailing: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => ShareScreen()));
          },
          child: Text(
            'Save',
            style: TextStyle(color: AppTheme.txtappBar, fontSize: 18.nsp),
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15.h, top: 10.h, right: 15.h),
            child: ModalProgressHUD(
              opacity: 0.9,
              inAsyncCall: _isInAsyncCall,
              progressIndicator: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: CircularProgressIndicator(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Text(
                      'Loading new cover image',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Container(
                    child: Image(
                      image: AssetImage(path),
                      height: 465.h,
                      width: 345.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 10.h,
                    left: 10.h,
                    bottom: 0.h,
                    right: 10.h,
                    child: Container(
                      padding: EdgeInsets.only(top: 10.h, left: 13.h),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(255, 255, 255, 0.2),
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  widget.author,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.nsp,
                                      height: 1),
                                ),
                              ),
                              Container(
                                child: IntrinsicWidth(
                                  child: Text(
                                    widget.title,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32.nsp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 19.h,
                    right: 16.h,
                    child: Container(
                      padding: EdgeInsets.all(8.h),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppTheme.appBarCoin),
                      child: Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                        size: 16.nsp,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.h,
                    left: 0.5.h,
                    right: 0.5.h,
                    child: Container(
                      padding: EdgeInsets.all(10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 1,
                            child: ButtonTheme(
                              minWidth: 30.h,
                              child: RaisedButton(
                                color: Colors.white,
                                textColor: AppTheme.notifyColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Text(
                                  '<<',
                                  style: TextStyle(fontSize: 13.nsp),
                                ),
                                onPressed: () {
                                  _changeImg(img1);
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Flexible(
                            flex: 4,
                            child: Container(
                              height: 40.h,
                              child: TextFormField(
                                autofocus: true,
                                decoration: new InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 12.h),
                                  border: new OutlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: AppTheme.appBarColor),
                                    borderRadius: BorderRadius.circular(20.h),
                                  ),
                                  hintText: 'Empty Streets',
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      showOverlay();
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(5.h),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppTheme.appBarCoin),
                                      child: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                onEditingComplete:
                                    FocusScope.of(context).requestFocus,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Flexible(
                            flex: 1,
                            child: ButtonTheme(
                              minWidth: 30.h,
                              child: RaisedButton(
                                color: Colors.white,
                                textColor: AppTheme.notifyColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Text(
                                  '>>',
                                  style: TextStyle(fontSize: 13.nsp),
                                ),
                                onPressed: () {
                                  _changeImg(img2);
                                },
                              ),
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
        ],
      ),
    );
  }
}
