import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:plotagonist/Models/media_models.dart';
import 'package:plotagonist/Screen/start_screen.dart';
import 'package:plotagonist/Utils/size_config.dart';
import 'package:plotagonist/Utils/styling.dart';

class AllocateMedia extends StatefulWidget {
  @override
  _AllocateMediaState createState() => _AllocateMediaState();
}

class _AllocateMediaState extends State<AllocateMedia> {
  int _selectedIndex = -1;
  int listLength = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.clippathColor,
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
          'Allocate Media 1/1',
          style: TextStyle(color: Colors.black, fontSize: 18.0),
        ),
        trailing: GestureDetector(
          onTap: () {
            /*Navigator.push(
                context, MaterialPageRoute(builder: (_) => ShareScreen()));*/
          },
          child: Text(
            'Next',
            style: TextStyle(color: AppTheme.txtappBar, fontSize: 18.0),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin:
                        EdgeInsets.only(top: SizeConfig.heightMultiplier * 2),
                    padding: EdgeInsets.all(SizeConfig.heightMultiplier * 1),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 5),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/a1.jpeg'),
                      height: SizeConfig.imageSizeMultiplier * 35,
                      width: SizeConfig.imageSizeMultiplier * 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                    top: SizeConfig.heightMultiplier * 3,
                    left: SizeConfig.heightMultiplier * 7,
                    right: SizeConfig.heightMultiplier * 7),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'To which card(s) do you want to allocate this media item?',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2,
                    ),
                    RaisedButton(
                      onPressed: () {},
                      elevation: 0,
                      child: Text(
                        '#home',
                        style: TextStyle(
                            color: AppTheme.appBarCoin, fontSize: 16.0),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: SizeConfig.heightMultiplier * 2),
                padding: EdgeInsets.all(SizeConfig.heightMultiplier * 1),
                color: AppTheme.appBackgroundColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: SizeConfig.heightMultiplier * 0.5,
                        ),
                        Text(
                          'ALL CARDS',
                          style: TextStyle(color: AppTheme.appBarCoin),
                        ),
                        SizedBox(
                          width: SizeConfig.heightMultiplier * 0.5,
                        ),
                        Text('(4)')
                      ],
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: SizeConfig.heightMultiplier * 1,
                    left: SizeConfig.heightMultiplier * 3,
                    right: SizeConfig.heightMultiplier * 3),
                child: TextFormField(
                  decoration: new InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: AppTheme.appBackgroundColor,
                    contentPadding: EdgeInsets.all(8),
                    border: InputBorder.none,
                    hintText: 'Search Cards',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(SizeConfig.heightMultiplier * 0.5)),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        //showOverlay();
                      },
                      child: Container(
                        margin:
                            EdgeInsets.all(SizeConfig.heightMultiplier * 1.5),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: AppTheme.appBarCoin),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  //onEditingComplete: FocusScope.of(context).requestFocus,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: SizeConfig.heightMultiplier * 1),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  itemCount: mediaModelList.length,
                  itemBuilder: (context, index) {
                    MediaModels modelList = mediaModelList[index];
                    return Column(
                      children: [
                        ListTile(
                          dense: true,
                          leading: Container(
                            height: SizeConfig.heightMultiplier * 5,
                            width: SizeConfig.heightMultiplier * 6,
                            color: Color(0xffE4E4E4),
                            padding: modelList.img != ""
                                ? EdgeInsets.all(0)
                                : EdgeInsets.all(10.0),
                            child: modelList.img != ""
                                ? Image(
                                    image: AssetImage(modelList.img),
                                    fit: BoxFit.fill,
                                  )
                                : Image(
                                    image: AssetImage(
                                        'assets/images/image_place.png'),
                                    fit: BoxFit.fill,
                                  ),
                          ),
                          title: Text(
                            modelList.title ?? '',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          subtitle: Text(
                            modelList.subTitle ?? '',
                            style: TextStyle(
                                color: AppTheme.floatingColor,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Container(
                            padding: EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 2.0, bottom: 2.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                                color: _selectedIndex == index
                                    ? AppTheme.appBarCoin
                                    : Colors.transparent,
                                border: Border.all(color: AppTheme.appBarCoin)),
                            child: Text(
                              _selectedIndex == index ? 'SELECTED' : 'SELECT',
                              style: TextStyle(
                                color: _selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: _selectedIndex == index ? 13.0 : 14.0,
                              ),
                            ),
                          ),
                          selected: index == _selectedIndex,
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                        ),
                        Divider(
                          height: 2,
                          color: Colors.grey,
                        ),
                      ],
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => StartScreen('1')));
                },
                child: Container(
                  margin: EdgeInsets.only(
                      top: SizeConfig.heightMultiplier * 4,
                      bottom: SizeConfig.heightMultiplier * 4),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 7.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: AppTheme.appBarCoin,
                      border: Border.all(color: AppTheme.appBarCoin)),
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
