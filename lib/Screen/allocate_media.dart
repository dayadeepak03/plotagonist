import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                                : SvgPicture.string(
                                    '''<svg width="27" height="21" viewBox="0 0 27 21" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M24.6645 20.5883H2.86496C1.54142 20.5883 0.529297 19.5762 0.529297 18.2526V2.68155C0.529297 1.35801 1.54142 0.345886 2.86496 0.345886H24.6645C25.988 0.345886 27.0001 1.35801 27.0001 2.68155V18.2526C27.0001 19.5762 25.988 20.5883 24.6645 20.5883ZM2.86496 1.90299C2.39783 1.90299 2.0864 2.21441 2.0864 2.68155V18.2526C2.0864 18.7198 2.39783 19.0312 2.86496 19.0312H24.6645C25.1316 19.0312 25.443 18.7198 25.443 18.2526V2.68155C25.443 2.21441 25.1316 1.90299 24.6645 1.90299H2.86496Z" fill="#979797"/>
<path d="M17.6577 9.68854C15.9449 9.68854 14.5435 8.28715 14.5435 6.57433C14.5435 4.86151 15.9449 3.46011 17.6577 3.46011C19.3705 3.46011 20.7719 4.86151 20.7719 6.57433C20.7719 8.28715 19.3705 9.68854 17.6577 9.68854ZM17.6577 5.01722C16.8013 5.01722 16.1006 5.71792 16.1006 6.57433C16.1006 7.43074 16.8013 8.13144 17.6577 8.13144C18.5141 8.13144 19.2148 7.43074 19.2148 6.57433C19.2148 5.71792 18.5141 5.01722 17.6577 5.01722Z" fill="#979797"/>
<path d="M21.7836 20.3547L9.09322 8.44286L1.85267 15.1384L0.762695 14.0484L9.09322 6.26291L22.8736 19.2648L21.7836 20.3547Z" fill="#979797"/>
<path d="M25.7545 16.462L21.5503 13.0363L18.0468 15.917L17.0347 14.6713L21.5503 11.0121L26.6887 15.2163L25.7545 16.462Z" fill="#979797"/>
</svg>
'''),
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
