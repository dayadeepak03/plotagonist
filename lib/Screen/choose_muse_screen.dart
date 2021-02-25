import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Models/genre_model.dart';
import 'package:plotagonist/Screen/HomeScreen.dart';
import 'package:plotagonist/Screen/finish_social_register.dart';
import 'package:plotagonist/Screen/forgot_password.dart';
import 'package:plotagonist/Screen/register.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plotagonist/Utils/styling.dart';

class ChooseMuse extends StatefulWidget {
  @override
  _ChooseMuseState createState() => _ChooseMuseState();
}

class _ChooseMuseState extends State<ChooseMuse> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: NewForm()),
    );
  }
}

class NewForm extends StatefulWidget {
  @override
  _NewFormState createState() => _NewFormState();
}

class _NewFormState extends State<NewForm> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 100.h,
                  ),
                  Text(
                    'Choose your Muse',
                    style: GoogleFonts.lato(
                        letterSpacing: 0.5,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w900,
                        color: AppTheme.txtColor),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    'Your Muse will guide you through the setup of your plot and will make sure that you reach the finish line and help you along the way.',
                    style: GoogleFonts.lora(
                        letterSpacing: 0.5,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppTheme.txtColor),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.h),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: genreList.length,
                      padding: const EdgeInsets.all(4.0),
                      itemBuilder: (context, index) {
                        GenreModels genre = genreList[index];
                        return Container(
                          decoration: BoxDecoration(
                            color: _selectedIndex == index
                                ? AppTheme.selectIndex
                                : AppTheme.clippathColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.h),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: GridTile(
                            child: Container(
                              height: 121.h,
                              child: Column(
                                children: [
                                  ClipOval(
                                    child: Image(
                                      image: AssetImage(genre.img),
                                      height: 84.h,
                                      width: 84.w,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 9.h,
                                  ),
                                  Text(
                                    genre.genreName.toUpperCase(),
                                    style: GoogleFonts.lato(
                                        fontSize: 12.sp,
                                        color: AppTheme.txtColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
