import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:plotagonist/Utils/size_config.dart';
import 'package:plotagonist/Utils/styling.dart';

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
  bool isLoading = true;

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
          'Create new Plot',
          style: TextStyle(color: Colors.black, fontSize: 18.0),
        ),
        trailing: Padding(
          padding: EdgeInsets.only(
            right: SizeConfig.heightMultiplier * 0.5,
            bottom: SizeConfig.heightMultiplier * 0.5,
          ),
          child: Text(
            'Save',
            style: TextStyle(color: AppTheme.txtappBar, fontSize: 18.0),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.all(SizeConfig.heightMultiplier * 1.5),
        child: Stack(
          children: [
            Image(
              image: AssetImage(path),
            ),
            Positioned(
              top: SizeConfig.heightMultiplier * 1,
              left: SizeConfig.heightMultiplier * 1,
              bottom: SizeConfig.heightMultiplier * 1,
              right: SizeConfig.heightMultiplier * 1,
              child: Container(
                padding: EdgeInsets.all(SizeConfig.heightMultiplier * 1),
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
                          padding:
                              EdgeInsets.all(SizeConfig.heightMultiplier * 0.1),
                          child: Text(
                            widget.author,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                                height: 1),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.all(SizeConfig.heightMultiplier * 0.1),
                          child: IntrinsicWidth(
                            child: Text(
                              widget.title,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 28.0,
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
              top: SizeConfig.heightMultiplier * 3,
              right: SizeConfig.heightMultiplier * 3,
              child: Container(
                padding: EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppTheme.appBarCoin),
                child: Icon(
                  Icons.arrow_downward,
                  color: Colors.white,
                  size: 18.0,
                ),
              ),
            ),
            Positioned(
              bottom: 120.0,
              left: 2.0,
              right: 2.0,
              child: Container(
                padding: EdgeInsets.all(SizeConfig.heightMultiplier * 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: ButtonTheme(
                        minWidth: 30.0,
                        child: RaisedButton(
                          color: Colors.white,
                          textColor: AppTheme.notifyColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: Text(
                            '<<',
                            style: TextStyle(fontSize: 12.0),
                          ),
                          onPressed: () {
                            _changeImg(img1);
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Flexible(
                      flex: 5,
                      child: Container(
                        height: 40.0,
                        child: TextFormField(
                          autofocus: true,
                          decoration: new InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.heightMultiplier * 1.3),
                            border: new OutlineInputBorder(
                              borderSide:
                                  new BorderSide(color: AppTheme.appBarColor),
                              borderRadius: BorderRadius.circular(
                                  SizeConfig.heightMultiplier * 2.5),
                            ),
                            hintText: 'Empty Streets',
                            suffixIcon: GestureDetector(
                              onTap: () {
                                print('hello');
                              },
                              child: Container(
                                margin: EdgeInsets.all(
                                    SizeConfig.heightMultiplier * 0.6),
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
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Flexible(
                      flex: 1,
                      child: ButtonTheme(
                        minWidth: 30.0,
                        child: RaisedButton(
                          color: Colors.white,
                          textColor: AppTheme.notifyColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: Text(
                            '>>',
                            style: TextStyle(fontSize: 12.0),
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
            /*Positioned(
              top: MediaQuery.of(context).size.height / 4,
              left: 10,
              right: 10,
              child: Align(
                alignment: Alignment.center,
                child: SpinKitCircle(
                  color: AppTheme.appBarCoin,
                  size: 30.0,
                  duration: Duration(seconds: 5),
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
