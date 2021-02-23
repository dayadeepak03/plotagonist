import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Screen/slider.dart';
import 'package:plotagonist/Screen/start_screen.dart';
import 'package:plotagonist/Utils/styling.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TipPageView extends StatefulWidget {
  @override
  _TipPageViewState createState() => _TipPageViewState();
}

class _TipPageViewState extends State<TipPageView> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SliderPage(
        title: "Start With An Outline",
        description:
            "Outline briefly what each chapter will be about. Then dig deep and add bulletpoint level detail to each chapter, "
            "so when you are writing your draft, you always know what’s next."),
    SliderPage(
      title: "Keep It in Order",
      description:
          "Tap to create, or drag the orange button to a specific spot to add your your entry or chapter there. "
          "If you change your mind later, just drag any entry to a different spot to reorder, "
          "using the little handle on their left.",
    ),
    SliderPage(
      title: "Retain Every Version",
      description:
          "Each chapter and entry has multiple states. The default 3 are Outline, Draft and Edited, but you can add up to 20 states to each entry."
          "If you want to create a chapter, simply give it a title, or leave the title empty to create an entry.",
    ),
    SliderPage(
      title: "Use Tags",
      description:
          "Use @ and # in your entries to create cards and collect your research and allocate attached media,"
          " having your own twitter-like microverse within each of your plots. VIP members can also export cards.",
    ),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 10,
                        width: 10,
                        margin:
                            EdgeInsets.only(left: 5.h, right: 5.h, top: 45.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.h),
                            color: (index == _currentPage)
                                ? Colors.orange
                                : Colors.grey.withOpacity(0.5)));
                  })),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      if (_currentPage == (_pages.length - 1)) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => StartScreen()));
                      } else {
                        _controller.nextPage(
                            duration: Duration(milliseconds: 800),
                            curve: Curves.easeInOutQuint);
                      }
                    },
                    child: AnimatedContainer(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                            left: 30.h, right: 30.h, top: 7.h, bottom: 7.h),
                        duration: Duration(milliseconds: 300),
                        color: AppTheme.floatingColor,
                        child: (_currentPage == (_pages.length - 1))
                            ? Text(
                                "START WRITING",
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                ),
                              )
                            : Text(
                                "NEXT TIP",
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                ),
                              )),
                  ),
                ],
              ),
              SizedBox(
                height: 38.h,
              ),
            ],
          )
        ],
      ),
    );
  }
}
