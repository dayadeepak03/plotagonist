import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Models/sub_genre_model.dart';
import 'package:plotagonist/Screen/plot_summary.dart';
import 'package:plotagonist/Utils/styling.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        height: 40.h,
        width: 0.45.sw,
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
            style: GoogleFonts.lato(
                fontSize: 16.sp,
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
                style: TextStyle(color: AppTheme.txtappBar, fontSize: 17.sp),
              ),
            ),
          ],
        ),
        middle: Text(
          'Choose SubGenre',
          style: TextStyle(color: Colors.black, fontSize: 17.sp),
        ),
        trailing: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => PlotSummary()));
          },
          child: Text(
            'Skip',
            style: TextStyle(color: AppTheme.txtappBar, fontSize: 17.sp),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25.w, right: 13.w, top: 15.h),
                    padding: EdgeInsets.only(left: 14.w, bottom: 10.h),
                    child: ClipPath(
                      clipper: CustomClipPath(),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10.h, left: 14.h),
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
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 14.w, top: 8.h, bottom: 10.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'What is the subgenre of your ${widget.genre.toString().toLowerCase()}?',
                                style: GoogleFonts.lora(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,
                                    color: AppTheme.txtColor),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'Please select one, so I can show you genre relevant tips. Click NEXT when you are done.',
                                style: GoogleFonts.lora(
                                    fontSize: 12.sp, color: AppTheme.txtColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 14.w, top: 15.h),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('assets/images/6.jpeg'),
                          height: 34.h,
                          width: 34.h,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 7.w,
                    top: 10.h,
                    child: Image(
                      image: AssetImage('assets/images/close.png'),
                      height: 20.h,
                      width: 20.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10.h, bottom: 60.h),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: subGenreList.length,
                  itemBuilder: (context, index) {
                    SubGenreModels subgenre = subGenreList[index];
                    return Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 6.h, horizontal: 23.w),
                      padding:
                          EdgeInsets.only(top: 10.h, bottom: 10.h, left: 10.h),
                      decoration: BoxDecoration(
                          color: _selectedIndex == index
                              ? AppTheme.selectIndex
                              : AppTheme.clippathColor,
                          borderRadius: BorderRadius.all(Radius.circular(5.h))),
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
                          style: GoogleFonts.lato(
                              fontSize: 14.sp, color: AppTheme.txtColor),
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
