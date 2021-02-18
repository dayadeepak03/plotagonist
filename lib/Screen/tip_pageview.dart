import 'package:flutter/material.dart';
import 'package:plotagonist/Screen/slider.dart';
import 'package:plotagonist/Screen/start_screen.dart';
import 'package:plotagonist/Utils/size_config.dart';
import 'package:plotagonist/Utils/styling.dart';

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
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.heightMultiplier * 4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(_pages.length, (int index) {
                      return AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: 10,
                          width: 10,
                          margin: EdgeInsets.only(
                              left: SizeConfig.heightMultiplier * 0.5,
                              right: SizeConfig.heightMultiplier * 0.5,
                              top: SizeConfig.heightMultiplier * 3.2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: (index == _currentPage)
                                  ? Colors.orange
                                  : Colors.grey.withOpacity(0.5)));
                    })),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 3,
                ),
              ],
            ),
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
                            left: SizeConfig.heightMultiplier * 3.2,
                            right: SizeConfig.heightMultiplier * 3.2,
                            top: SizeConfig.heightMultiplier * 0.7,
                            bottom: SizeConfig.heightMultiplier * 0.7),
                        duration: Duration(milliseconds: 300),
                        color: AppTheme.floatingColor,
                        child: (_currentPage == (_pages.length - 1))
                            ? Text(
                                "START WRITING",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: SizeConfig.textMultiplier * 2.3,
                                ),
                              )
                            : Text(
                                "NEXT TIP",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: SizeConfig.textMultiplier * 2.3,
                                ),
                              )),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 4,
              ),
            ],
          )
        ],
      ),
    );
  }
}
