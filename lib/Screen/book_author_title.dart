import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plotagonist/Screen/book_wallpaper.dart';
import 'package:plotagonist/Utils/size_config.dart';
import 'package:plotagonist/Utils/styling.dart';

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
              image: AssetImage('assets/images/2.jpeg'),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.all(SizeConfig.heightMultiplier * 0.1),
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
                                  fontSize: 17.0,
                                  height: 1),
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
                      padding:
                          EdgeInsets.all(SizeConfig.heightMultiplier * 0.1),
                      color: color2,
                      child: IntrinsicWidth(
                        child: TextFormField(
                            controller: _titleController,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28.0,
                            ),
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Book Title',
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 32.0,
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

  Color _getContainerBackgroundColor() {
    return _focusNode.hasFocus ? color : color2;
  }
}
