import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Models/sub_genre_model.dart';
import 'package:plotagonist/Screen/plot_summary.dart';
import 'package:plotagonist/Utils/size_config.dart';
import 'package:plotagonist/Utils/styling.dart';

class SubGenreScreen extends StatefulWidget {
  final genre;

  SubGenreScreen({this.genre = "Genre"});

  @override
  _SubGenreScreenState createState() => _SubGenreScreenState();
}

class _SubGenreScreenState extends State<SubGenreScreen> {
  int _selectedIndex = -1;
  Color color;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.genre);
    color = Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Container(
        height: 30.0,
        child: FloatingActionButton.extended(
          backgroundColor:
              _selectedIndex >= 0 ? AppTheme.appBarCoin : Colors.transparent,
          elevation: 0,
          onPressed: () {
            if (_selectedIndex >= 0) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => PlotSummary()));
            }
          },
          label: Text(
            'NEXT STEP',
            style: TextStyle(
                color: _selectedIndex >= 0 ? Colors.white : Colors.grey,
                fontWeight: FontWeight.bold),
          ),
          shape: RoundedRectangleBorder(
              side: BorderSide(color: AppTheme.appBarCoin, width: 1.0)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
          'Choose SubGenre',
          style: TextStyle(color: Colors.black, fontSize: 18.0),
        ),
        trailing: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => PlotSummary()));
          },
          child: Text(
            'Skip',
            style: TextStyle(color: AppTheme.txtappBar, fontSize: 18.0),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(
                          left: SizeConfig.heightMultiplier * 1,
                          top: SizeConfig.heightMultiplier * 1),
                      height: SizeConfig.heightMultiplier * 5.5,
                      width: SizeConfig.heightMultiplier * 5.5,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('assets/images/6.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: SizeConfig.heightMultiplier * 4,
                        right: SizeConfig.heightMultiplier * 2,
                        top: SizeConfig.heightMultiplier * 1.2),
                    padding: EdgeInsets.only(
                        left: SizeConfig.heightMultiplier * 1.8,
                        bottom: SizeConfig.heightMultiplier * 0.5),
                    child: ClipPath(
                      clipper: CustomClipPath(),
                      child: Container(
                        padding: EdgeInsets.all(
                          SizeConfig.heightMultiplier * 1,
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 10.0,
                              spreadRadius: 5.0,
                              offset: Offset(
                                  8.0, 8.0), // shadow direction: bottom right
                            )
                          ],
                          color: AppTheme.appBarColor,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: SizeConfig.heightMultiplier * 3,
                                    top: SizeConfig.heightMultiplier * 1),
                                child: Text(
                                  'What is the subgenre of your ${widget.genre.toString().toLowerCase()}?',
                                  style: GoogleFonts.lora(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                      color: AppTheme.txtColor),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: SizeConfig.heightMultiplier * 3,
                                    top: SizeConfig.heightMultiplier * 1),
                                child: Text(
                                  'Please select one, so I can show you genre relevant tips. Click NEXT when you are done.',
                                  style: GoogleFonts.lora(
                                      fontSize: 12.0, color: AppTheme.txtColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -2.0,
                    top: -2.0,
                    child: Container(
                      padding:
                          EdgeInsets.all(SizeConfig.heightMultiplier * 0.4),
                      margin: EdgeInsets.only(
                          top: SizeConfig.heightMultiplier * 0.6,
                          right: SizeConfig.heightMultiplier * 1.5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black38),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: SizeConfig.heightMultiplier * 1,
                        bottom: SizeConfig.heightMultiplier * 3),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: subGenreList.length,
                      itemBuilder: (context, index) {
                        SubGenreModels subgenre = subGenreList[index];
                        return Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 20.0),
                          padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                          decoration: BoxDecoration(
                              color: _selectedIndex == index
                                  ? AppTheme.selectIndex
                                  : AppTheme.clippathColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                          width: MediaQuery.of(context).size.width,
                          child: ListTile(
                            leading: Container(
                              child: ClipOval(
                                child: Image(
                                  image: AssetImage(subgenre.img),
                                  height: 62,
                                  width: 57,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            title: Text(
                              subgenre.subgenreName.toUpperCase(),
                              style: TextStyle(
                                  fontSize: 14.0, color: AppTheme.txtColor),
                            ),
                            selected: index == _selectedIndex,
                            onTap: () {
                              setState(() {
                                _selectedIndex = index;
                              });
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double width = size.width;
    final double height = size.height;
    final double startMargin = width / 18;

    final double s1 = height * 0.3;
    final double s2 = height * 0.2;
    final Path path = Path()
      ..addRRect(RRect.fromRectAndRadius(
          Rect.fromLTWH(startMargin, 0.2, width - startMargin, height),
          const Radius.circular(6)))
      ..lineTo(startMargin, s1)
      ..lineTo(6.0, size.height / 4)
      ..lineTo(startMargin, s2)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
