import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plotagonist/Screen/book_wallpaper.dart';
import 'package:plotagonist/Utils/styling.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookAuthorTitle extends StatefulWidget {
  @override
  _BookAuthorTitleState createState() => _BookAuthorTitleState();
}

class _BookAuthorTitleState extends State<BookAuthorTitle> {
  final _authorController = TextEditingController();
  final _titleController = TextEditingController();
  FocusNode _focusNode;

  Color color = Color.fromRGBO(37, 162, 240, 0.42);
  Color color2 = Colors.transparent;

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }

  @override
  void initState() {
    super.initState();
    _focusNode = new FocusNode();
    _focusNode.addListener(_onOnFocusNodeEvent);
  }

  _onOnFocusNodeEvent() {
    setState(() {
      // Re-renders
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
        trailing: Text(
          'Save',
          style: TextStyle(color: AppTheme.txtappBar, fontSize: 18.nsp),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
        child: Stack(
          children: [
            Image(
              image: AssetImage('assets/images/2.jpeg'),
              height: 465.h,
              width: 345.w,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 10.h,
              left: 10.h,
              bottom: 10.h,
              right: 10.h,
              child: Container(
                padding: EdgeInsets.only(top: 10.h, left: 13.h),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(255, 255, 255, 0.2),
                    width: 1.0,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: color,
                      child: IntrinsicWidth(
                        child: TextFormField(
                            controller: _authorController,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                                height: 1),
                            autofocus: true,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'AUTHOR NAME',
                              hintStyle: TextStyle(
                                color: AppTheme.txthint,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.h,
                              ),
                              border: InputBorder.none,
                            ),
                            onEditingComplete: () {
                              setState(() {
                                color2 = color;
                                color = Colors.transparent;
                              });
                              FocusScope.of(context).nextFocus();
                            }),
                      ),
                    ),
                    Container(
                      color: color2,
                      child: IntrinsicWidth(
                        child: TextFormField(
                            controller: _titleController,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28.h,
                            ),
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Book Title',
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 32.h,
                              ),
                              border: InputBorder.none,
                            ),
                            onEditingComplete: () {
                              setState(() {
                                color2 = Colors.transparent;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => BookWallpaper(
                                          _authorController.text,
                                          _titleController.text)));
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
