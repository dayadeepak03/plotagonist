import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plotagonist/Screen/allocate_media.dart';
import 'package:plotagonist/Utils/size_config.dart';
import 'package:plotagonist/Utils/styling.dart';

class AddNew extends StatefulWidget {
  @override
  _AddNewState createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {
  TextEditingController ctrl;
  List<String> users = ['Naveen ', 'Ram', 'Satish', 'Some Other'], words = [];
  String str = '';
  List<String> coments = [];
  Color color = AppTheme.txtColor;

  @override
  void initState() {
    super.initState();
    ctrl = TextEditingController();
  }

  showProfile(String s) {
    showDialog(
        context: context,
        builder: (con) => AlertDialog(
            title: Text('Profile of $s'),
            content: Text('Show the user profile !')));
  }

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
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Camera',
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )),
                        CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Media Library',
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )),
                        CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Files',
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )),
                        CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Unsplash Photos',
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )),
                        CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
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
        leading: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancel',
                style: TextStyle(color: AppTheme.txtappBar, fontSize: 18.0),
              ),
            ),
          ],
        ),
        middle: Text(
          'Add New',
          style: TextStyle(color: Colors.black, fontSize: 18.0),
        ),
        trailing: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => AllocateMedia()));
          },
          child: Text(
            'Save',
            style: TextStyle(color: AppTheme.txtappBar, fontSize: 18.0),
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
                  controller: ctrl,
                  autofocus: true,
                  maxLines: 2,
                  style: TextStyle(color: color),
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
                  onChanged: (val) {
                    setState(() {
                      words = val.split(' ');
                      str = words.length > 0 &&
                              words[words.length - 1].startsWith('@')
                          ? words[words.length - 1]
                          : '';

                      print(val.toString());
                      print(users[0].toString());
                      if (val.toString() == users[0]) {
                        setState(() {
                          print('yes');
                          color = AppTheme.appBarCoin;
                        });
                      } else {
                        setState(() {
                          print('No');
                          color = AppTheme.txtColor;
                        });
                      }
                    });
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
