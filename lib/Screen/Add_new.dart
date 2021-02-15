import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:plotagonist/Utils/size_config.dart';
import 'package:plotagonist/Utils/styling.dart';

class AddNew extends StatefulWidget {
  @override
  _AddNewState createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showCupertinoModalPopup(
              context: context,
              builder: (context) {
                return Container(
                  padding: EdgeInsets.only(
                      left: SizeConfig.heightMultiplier * 5,
                      right: SizeConfig.heightMultiplier * 5),
                  child: Center(
                    child: CupertinoActionSheet(
                      title: Text(
                        'Add Attachment',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      message: Text(
                        'Please select the location of the media you want to attach',
                        style: TextStyle(color: Colors.black),
                      ),
                      actions: [
                        CupertinoActionSheetAction(
                            onPressed: () {},
                            child: Text(
                              'Camera',
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )),
                        CupertinoActionSheetAction(
                            onPressed: () {},
                            child: Text(
                              'Media Library',
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )),
                        CupertinoActionSheetAction(
                            onPressed: () {},
                            child: Text(
                              'Files',
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )),
                        CupertinoActionSheetAction(
                            onPressed: () {},
                            child: Text(
                              'Unsplash Photos',
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )),
                        CupertinoActionSheetAction(
                            onPressed: () {},
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                );
              });
        },
        child: Transform.rotate(
          angle: pi / 4,
          child: Icon(
            Icons.attach_file,
            color: Colors.black,
            size: SizeConfig.imageSizeMultiplier * 8,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
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
          'Add New',
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
              Container(
                padding: EdgeInsets.only(left: SizeConfig.heightMultiplier * 2),
                child: Center(
                  child: TextFormField(
                    autofocus: true,
                    style: TextStyle(fontSize: 14.0),
                    decoration: new InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 0.0),
                      hintText:
                          'Add Title to create chapter, use # for automatic numbering',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 13.0,
                      ),
                      border: InputBorder.none,
                      fillColor: AppTheme.appBarCoin,
                    ),
                    onEditingComplete: () {
                      FocusScope.of(context).nextFocus();
                    },
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Color(0xffE4E4E4),
                height: SizeConfig.heightMultiplier * 4,
                padding: EdgeInsets.only(left: SizeConfig.heightMultiplier * 2),
                child: Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Text(
                        'OUTLINE',
                        style: TextStyle(
                            color: AppTheme.appBarCoin, fontSize: 14.0),
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.heightMultiplier * 1,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Text(
                        'DRAFT',
                        style:
                            TextStyle(color: AppTheme.txtColor, fontSize: 14.0),
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.heightMultiplier * 1,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Text(
                        'EDITED',
                        style:
                            TextStyle(color: AppTheme.txtColor, fontSize: 14.0),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: SizeConfig.heightMultiplier * 2,
                    right: SizeConfig.heightMultiplier * 2),
                child: TextFormField(
                  autofocus: true,
                  maxLines: 20,
                  style: TextStyle(fontSize: 14.0),
                  decoration: new InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 0.0),
                    hintText:
                        'Press next, previous or add new below to continue writing, your entry will automatically be saved.',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 13.0,
                    ),
                    border: InputBorder.none,
                    fillColor: AppTheme.appBarCoin,
                  ),
                  onEditingComplete: () {
                    FocusScope.of(context).requestFocus();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
