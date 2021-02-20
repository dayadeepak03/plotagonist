import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Screen/Add_new.dart';
import 'package:plotagonist/Utils/size_config.dart';
import 'package:plotagonist/Utils/styling.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartScreen extends StatefulWidget {
  final val;

  StartScreen([this.val]);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.val.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.clippathColor,
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        color: Colors.black,
        style: TabStyle.reactCircle,
        top: -15,
        items: [
          TabItem(
              icon: Container(
                child: Image(
                  image: AssetImage('assets/images/shap.png'),
                  fit: BoxFit.contain,
                ),
              ),
              title: 'Alerts'),
          TabItem(
              icon: Container(
                child: Image(
                  image: AssetImage('assets/images/logo2.png'),
                  fit: BoxFit.contain,
                ),
              ),
              title: 'Add New'),
          TabItem(
              icon: Image(
                image: AssetImage('assets/images/ellips.png'),
                fit: BoxFit.contain,
              ),
              title: 'Your Muse'),
        ],
        initialActiveIndex: 1, //optional, default as 0
        onTap: (int i) {
          if (i == 1) {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => AddNew()));
          }
        },
      ),
      resizeToAvoidBottomInset: false,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: AppTheme.appBackgroundColor,
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(SizeConfig.heightMultiplier * 1),
                width: MediaQuery.of(context).size.width,
                color: AppTheme.appBackgroundColor,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(
                                SizeConfig.heightMultiplier * 1,
                              ),
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage('assets/images/menu.png'),
                                  ),
                                  SizedBox(
                                    width: SizeConfig.heightMultiplier * 2,
                                  ),
                                  Image(
                                    image:
                                        AssetImage('assets/images/search.png'),
                                  ),
                                  SizedBox(
                                    width: SizeConfig.heightMultiplier * 2,
                                  ),
                                  Image(
                                    image:
                                        AssetImage('assets/images/cloud.png'),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage('assets/images/logo.png'),
                                  ),
                                  SizedBox(
                                    width: SizeConfig.heightMultiplier * 6,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(
                                SizeConfig.heightMultiplier * 1,
                              ),
                              child: Row(
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/money.png'),
                                  ),
                                  SizedBox(
                                    width: SizeConfig.heightMultiplier * 0.5,
                                  ),
                                  Text('100'),
                                  SizedBox(
                                    width: SizeConfig.heightMultiplier * 1,
                                  ),
                                  Image(
                                    image:
                                        AssetImage('assets/images/combine.png'),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      backgroundColor: Colors.white,
                      automaticallyImplyLeading: false,
                      expandedHeight: SizeConfig.heightMultiplier * 18,
                      floating: true,
                      pinned: false,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Image(
                          image: AssetImage('assets/images/4.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate([
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(
                                  left: 10.0, top: 15.0, bottom: 15.0),
                              color: Color(0xffF1F1F1),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'assets/images/timeline.png'),
                                        ),
                                        SizedBox(
                                          width:
                                              SizeConfig.heightMultiplier * 1,
                                        ),
                                        Text('Empty Streets'),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'assets/images/shape2.png'),
                                        ),
                                        SizedBox(
                                          width:
                                              SizeConfig.heightMultiplier * 1,
                                        ),
                                        Text('Summary'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: SizeConfig.heightMultiplier * 2,
                                top: SizeConfig.heightMultiplier * 1.5,
                                right: SizeConfig.heightMultiplier * 2,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'A novel by',
                                    style: TextStyle(color: AppTheme.txtColor),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 2,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                          right:
                                              SizeConfig.heightMultiplier * 1,
                                        ),
                                        child: ClipOval(
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/1.jpeg'),
                                            height:
                                                SizeConfig.imageSizeMultiplier *
                                                    8,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Jackie Willis',
                                        style: TextStyle(
                                            color: AppTheme.txtColor,
                                            fontSize: 21.0,
                                            fontWeight: FontWeight.w300,
                                            letterSpacing: 1.5),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 2,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                          right:
                                              SizeConfig.heightMultiplier * 1,
                                        ),
                                        child: ClipOval(
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/jennie.png'),
                                            height:
                                                SizeConfig.imageSizeMultiplier *
                                                    8,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Jennie Cooper',
                                        style: TextStyle(
                                            color: AppTheme.txtColor,
                                            fontSize: 21.0,
                                            fontWeight: FontWeight.w300,
                                            letterSpacing: 1.5),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 2,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'With special thanks to',
                                        style: TextStyle(
                                            color: AppTheme.txtColor,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w300,
                                            letterSpacing: 1),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 1,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(
                                                right: SizeConfig
                                                        .heightMultiplier *
                                                    1,
                                              ),
                                              child: ClipOval(
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/brian.png'),
                                                  height: SizeConfig
                                                          .imageSizeMultiplier *
                                                      8,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  'Brian Schuster',
                                                  style:
                                                      TextStyle(fontSize: 12.0),
                                                ),
                                                Text(
                                                  '@brianschuster',
                                                  style: TextStyle(
                                                      color:
                                                          AppTheme.appBarCoin,
                                                      fontSize: 12.0),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(
                                                right: SizeConfig
                                                        .heightMultiplier *
                                                    1,
                                              ),
                                              child: ClipOval(
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/yuliya.png'),
                                                  height: SizeConfig
                                                          .imageSizeMultiplier *
                                                      8,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  'Yuliya Fjodor',
                                                  style:
                                                      TextStyle(fontSize: 12.0),
                                                ),
                                                Text(
                                                  '@yuliyafjodor',
                                                  style: TextStyle(
                                                      color:
                                                          AppTheme.appBarCoin,
                                                      fontSize: 12.0),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 2,
                                  ),
                                  Text(
                                    'Summary',
                                    style: TextStyle(
                                        color: AppTheme.txtColor,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w100),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 1,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        bottom: widget.val == '1'
                                            ? SizeConfig.heightMultiplier * 0.1
                                            : SizeConfig.heightMultiplier *
                                                6.5),
                                    child: Text(
                                      'A young girl wakes up one morning to find herself alone in her city. '
                                      'Is her Grandmother okay? Where did everyone disappear? And why does she '
                                      'feel that something is watching her? Something dark and out of '
                                      'this world...A modern take on Red Riding Hood.',
                                      style: GoogleFonts.lora(
                                        color: AppTheme.txtColor,
                                        fontSize: 17.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        widget.val == '1'
                            ? Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.heightMultiplier * 0.5,
                                    bottom: SizeConfig.heightMultiplier * 2),
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: ScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemCount: 1,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                width: 2.0,
                                                height: index == 0
                                                    ? 1
                                                    : SizeConfig
                                                            .heightMultiplier *
                                                        35,
                                                color: index == 0
                                                    ? Colors.transparent
                                                    : Colors.grey,
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: SizeConfig
                                                            .heightMultiplier *
                                                        1,
                                                    right: SizeConfig
                                                            .heightMultiplier *
                                                        1),
                                                padding: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    color: index == 0
                                                        ? Colors.white
                                                        : index == 4
                                                            ? Colors.black
                                                            : Colors.green,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                                child: Icon(Icons.more_horiz),
                                              ),
                                              Container(
                                                width: 2.0,
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    35,
                                                color: Colors.grey,
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: Container(
                                              margin: EdgeInsets.only(left: 1),
                                              decoration: BoxDecoration(
                                                color: Colors.transparent,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(10.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'Chapter 1',
                                                          style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 24,
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons.arrow_drop_down,
                                                          color: Colors.grey,
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top: 10.0),
                                                      padding: EdgeInsets.only(
                                                          right: 10.0),
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(5.0),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    margin: EdgeInsets.only(
                                                                        top: 8,
                                                                        left:
                                                                            8),
                                                                    child:
                                                                        ClipOval(
                                                                      child:
                                                                          Image(
                                                                        image: AssetImage(
                                                                            'assets/images/1.jpeg'),
                                                                        height:
                                                                            SizeConfig.imageSizeMultiplier *
                                                                                7,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: SizeConfig
                                                                            .heightMultiplier *
                                                                        1,
                                                                  ),
                                                                  Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                        children: [
                                                                          Text(
                                                                            'Jackie Willis',
                                                                            style:
                                                                                TextStyle(fontSize: 10),
                                                                          ),
                                                                          Text(
                                                                            ' @author',
                                                                            style:
                                                                                TextStyle(fontSize: 10, color: AppTheme.appBarCoin),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Text(
                                                                        '16:45 11/02/2019',
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                10),
                                                                      ),
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .visibility_off_outlined,
                                                                    color: Colors
                                                                        .grey,
                                                                  ),
                                                                  SizedBox(
                                                                    width: SizeConfig
                                                                            .heightMultiplier *
                                                                        1,
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .camera_alt_outlined,
                                                                    color: AppTheme
                                                                        .appBarCoin,
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            10.0,
                                                                        top:
                                                                            10.0),
                                                                child: Row(
                                                                  children: [
                                                                    Container(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              1),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                              borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                                                      child:
                                                                          Image(
                                                                        image: AssetImage(
                                                                            'assets/images/a1.jpeg'),
                                                                        width:
                                                                            92,
                                                                        height:
                                                                            92,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: SizeConfig
                                                                              .heightMultiplier *
                                                                          0.5,
                                                                    ),
                                                                    Container(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              1),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                              borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                                                      child:
                                                                          Image(
                                                                        image: AssetImage(
                                                                            'assets/images/a2.jpeg'),
                                                                        width:
                                                                            92,
                                                                        height:
                                                                            92,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            margin: EdgeInsets
                                                                .all(SizeConfig
                                                                        .heightMultiplier *
                                                                    1.5),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                  TextSpan(
                                                                    text:
                                                                        '@RedRidingHood',
                                                                    style: TextStyle(
                                                                        color: AppTheme
                                                                            .appBarCoin,
                                                                        letterSpacing:
                                                                            0.5),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        ' wakes from a nightmare in their ',
                                                                    style: TextStyle(
                                                                        color: AppTheme
                                                                            .txtColor,
                                                                        letterSpacing:
                                                                            0.5),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '#home',
                                                                    style: TextStyle(
                                                                        color: AppTheme
                                                                            .appBarCoin,
                                                                        letterSpacing:
                                                                            0.5),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        ', there’s a message on her voicemail from her ',
                                                                    style: TextStyle(
                                                                        color: AppTheme
                                                                            .txtColor,
                                                                        letterSpacing:
                                                                            0.5),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '@Mother,',
                                                                    style: TextStyle(
                                                                        color: AppTheme
                                                                            .appBarCoin,
                                                                        letterSpacing:
                                                                            0.5),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        ' giving her the news of ',
                                                                    style: TextStyle(
                                                                        color: AppTheme
                                                                            .txtColor,
                                                                        letterSpacing:
                                                                            0.5),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '@Grandma',
                                                                    style: TextStyle(
                                                                        color: AppTheme
                                                                            .appBarCoin,
                                                                        letterSpacing:
                                                                            1),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        ' being ill',
                                                                    style: TextStyle(
                                                                        color: AppTheme
                                                                            .txtColor,
                                                                        letterSpacing:
                                                                            1),
                                                                  ),
                                                                ])),
                                                          ),
                                                          Container(
                                                            margin: EdgeInsets.only(
                                                                top: SizeConfig
                                                                        .heightMultiplier *
                                                                    0.5,
                                                                bottom: SizeConfig
                                                                        .heightMultiplier *
                                                                    1,
                                                                left: SizeConfig
                                                                        .heightMultiplier *
                                                                    1),
                                                            child: Column(
                                                              children: [
                                                                Divider(
                                                                  thickness:
                                                                      0.5,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .message_outlined,
                                                                      color: Colors
                                                                          .black38,
                                                                      size:
                                                                          18.0,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .add_circle,
                                                                      color: AppTheme
                                                                          .appBarCoin,
                                                                      size:
                                                                          18.0,
                                                                    ),
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              )
                            : Container(
                                child: Text(''),
                              ),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
