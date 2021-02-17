import 'package:badges/badges.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotagonist/Screen/Add_new.dart';
import 'package:plotagonist/Utils/size_config.dart';
import 'package:plotagonist/Utils/styling.dart';

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
      appBar: AppBar(
        backgroundColor: AppTheme.appBarColor,
        brightness: Brightness.light,
        leading: Icon(
          CupertinoIcons.bars,
          color: CupertinoColors.black,
          size: SizeConfig.heightMultiplier * 4,
        ),
        title: Container(
          padding: EdgeInsets.all(SizeConfig.heightMultiplier * 1),
          decoration: BoxDecoration(
              color: AppTheme.floatingColor, shape: BoxShape.circle),
          child: SvgPicture.string(
              '''<svg width="400" height="400" viewBox="0 0 512 512" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M256 512C397.385 512 512 397.385 512 256C512 172.117 471.655 97.6567 409.312 50.9652C373.497 99.4612 292.039 210.707 248.701 277.442C208.394 339.508 156.733 431.333 130.319 479.077C167.444 500.038 210.325 512 256 512ZM124.074 475.434L153.496 416.278L129.522 277.317L150.937 253.428L171.554 388.457L167.346 235.123L322.777 72.3973L395.04 41.0128C355.003 15.0665 307.261 0 256 0C114.615 0 0 114.615 0 256C0 349.126 49.7259 430.639 124.074 475.434Z" fill="#ED8A19"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M322.777 72.3973L426.968 27.1462C426.968 27.1462 305.311 190.269 248.701 277.442C192.09 364.614 113.08 510.49 113.08 510.49L108.212 507.328L153.496 416.278L129.522 277.317L150.937 253.428L171.554 388.457L167.346 235.123L322.777 72.3973Z" fill="white"/>
</svg>
'''),
          height: SizeConfig.imageSizeMultiplier * 10,
          width: SizeConfig.imageSizeMultiplier * 10,
        ),
        actions: [
          Stack(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Center(
                        child: Icon(
                          Icons.album_rounded,
                          color: AppTheme.appBarCoin,
                          size: SizeConfig.imageSizeMultiplier * 3,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: SizeConfig.heightMultiplier * 0.5),
                        child: Text(
                          '100',
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(
                        right: SizeConfig.heightMultiplier * 2,
                      ),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('assets/images/1.jpeg'),
                          height: SizeConfig.imageSizeMultiplier * 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
        elevation: 0,
      ),
      bottomNavigationBar: ConvexAppBar(
        height: SizeConfig.heightMultiplier * 7.5,
        backgroundColor: Colors.white,
        color: Colors.black,
        style: TabStyle.reactCircle,
        top: -15,
        items: [
          TabItem(
              icon: SvgPicture.string(
                  '''<svg width="33" height="33" viewBox="0 0 33 33" fill="none" xmlns="http://www.w3.org/2000/svg">
<path opacity="0.640671" fill-rule="evenodd" clip-rule="evenodd" d="M16.4996 0C7.38721 0 0 7.38771 0 16.4997C0 25.6116 7.38721 33 16.4996 33C25.6119 33 33 25.6121 33 16.4997C33 7.38727 25.6119 0 16.4996 0ZM16.5005 25.6246C15.3162 25.6246 14.3556 24.6649 14.3556 23.4797H18.6451C18.6453 24.6649 17.6848 25.6246 16.5005 25.6246ZM23.7478 21.329H23.7484V21.1924C23.7484 20.622 23.4137 20.1345 22.9324 19.9025L22.4768 15.9691C22.4768 13.0897 20.4407 10.6868 17.73 10.12V8.59309C17.73 7.91439 17.1797 7.36406 16.501 7.36406C15.822 7.36406 15.2716 7.91439 15.2716 8.59309V10.1199C12.561 10.6868 10.5249 13.0899 10.5249 15.969L10.0693 19.9019C9.588 20.1335 9.25305 20.6219 9.25305 21.1923V21.3289C9.25305 22.122 9.89524 22.1742 10.6881 22.1742H22.3126C23.1051 22.1742 23.7478 22.122 23.7478 21.3289V21.329Z" fill="black"/>
</svg>'''),
              title: 'Alerts'),
          TabItem(
              icon: SvgPicture.string(
                  '''<svg width="400" height="400" viewBox="0 0 512 512" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M256 512C397.385 512 512 397.385 512 256C512 172.117 471.655 97.6567 409.312 50.9652C373.497 99.4612 292.039 210.707 248.701 277.442C208.394 339.508 156.733 431.333 130.319 479.077C167.444 500.038 210.325 512 256 512ZM124.074 475.434L153.496 416.278L129.522 277.317L150.937 253.428L171.554 388.457L167.346 235.123L322.777 72.3973L395.04 41.0128C355.003 15.0665 307.261 0 256 0C114.615 0 0 114.615 0 256C0 349.126 49.7259 430.639 124.074 475.434Z" fill="#ED8A19"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M322.777 72.3973L426.968 27.1462C426.968 27.1462 305.311 190.269 248.701 277.442C192.09 364.614 113.08 510.49 113.08 510.49L108.212 507.328L153.496 416.278L129.522 277.317L150.937 253.428L171.554 388.457L167.346 235.123L322.777 72.3973Z" fill="white"/>
</svg>
'''),
              title: 'Add New'),
          TabItem(
              icon: CircleAvatar(
                backgroundColor: Colors.black,
                child: ClipOval(
                  child: Image(
                    image: AssetImage('assets/images/6.jpeg'),
                    fit: BoxFit.cover,
                    width: SizeConfig.heightMultiplier * 8,
                    height: SizeConfig.heightMultiplier * 8,
                  ),
                ),
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
      resizeToAvoidBottomPadding: false,
      body: CustomScrollView(
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
                    padding:
                        EdgeInsets.only(left: 10.0, top: 15.0, bottom: 15.0),
                    color: Color(0xffF1F1F1),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.account_tree_sharp),
                              SizedBox(
                                width: SizeConfig.heightMultiplier * 1,
                              ),
                              Text('Empty Streets'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.arrow_drop_down_circle_sharp),
                              SizedBox(
                                width: SizeConfig.heightMultiplier * 1,
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
                                right: SizeConfig.heightMultiplier * 1,
                              ),
                              child: ClipOval(
                                child: Image(
                                  image: AssetImage('assets/images/1.jpeg'),
                                  height: SizeConfig.imageSizeMultiplier * 8,
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
                                right: SizeConfig.heightMultiplier * 1,
                              ),
                              child: ClipOval(
                                child: Image(
                                  image: AssetImage('assets/images/jennie.png'),
                                  height: SizeConfig.imageSizeMultiplier * 8,
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
                                      right: SizeConfig.heightMultiplier * 1,
                                    ),
                                    child: ClipOval(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/brian.png'),
                                        height:
                                            SizeConfig.imageSizeMultiplier * 8,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Brian Schuster',
                                        style: TextStyle(fontSize: 12.0),
                                      ),
                                      Text(
                                        '@brianschuster',
                                        style: TextStyle(
                                            color: AppTheme.appBarCoin,
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
                                      right: SizeConfig.heightMultiplier * 1,
                                    ),
                                    child: ClipOval(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/yuliya.png'),
                                        height:
                                            SizeConfig.imageSizeMultiplier * 8,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Yuliya Fjodor',
                                        style: TextStyle(fontSize: 12.0),
                                      ),
                                      Text(
                                        '@yuliyafjodor',
                                        style: TextStyle(
                                            color: AppTheme.appBarCoin,
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
                        Text(
                          'A young girl wakes up one morning to find herself alone in her city. '
                          'Is her Grandmother okay? Where did everyone disappear? And why does she '
                          'feel that something is watching her? Something dark and out of '
                          'this world...A modern take on Red Riding Hood.',
                          style: GoogleFonts.lora(
                            color: AppTheme.txtColor,
                            fontSize: 17.0,
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
                          top: SizeConfig.heightMultiplier * 2,
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
                                          : SizeConfig.heightMultiplier * 30,
                                      color: index == 0
                                          ? Colors.transparent
                                          : Colors.grey,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: SizeConfig.heightMultiplier * 1,
                                          right:
                                              SizeConfig.heightMultiplier * 1),
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: index == 0
                                              ? Colors.white
                                              : index == 4
                                                  ? Colors.black
                                                  : Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Icon(Icons.more_horiz),
                                    ),
                                    Container(
                                      width: 2.0,
                                      height: SizeConfig.heightMultiplier * 30,
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
                                            margin: EdgeInsets.only(top: 10.0),
                                            padding:
                                                EdgeInsets.only(right: 10.0),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
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
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 8,
                                                                  left: 8),
                                                          child: ClipOval(
                                                            child: Image(
                                                              image: AssetImage(
                                                                  'assets/images/1.jpeg'),
                                                              height: SizeConfig
                                                                      .imageSizeMultiplier *
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
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10),
                                                                ),
                                                                Text(
                                                                  ' @author',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10,
                                                                      color: AppTheme
                                                                          .appBarCoin),
                                                                ),
                                                              ],
                                                            ),
                                                            Text(
                                                              '16:45 11/02/2019',
                                                              style: TextStyle(
                                                                  fontSize: 10),
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
                                                          color: Colors.grey,
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
                                                      margin: EdgeInsets.only(
                                                          left: 10.0,
                                                          top: 10.0),
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    1),
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10.0))),
                                                            child: Image(
                                                              image: AssetImage(
                                                                  'assets/images/a1.jpeg'),
                                                              width: 92,
                                                              height: 92,
                                                              fit: BoxFit.cover,
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
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10.0))),
                                                            child: Image(
                                                              image: AssetImage(
                                                                  'assets/images/a2.jpeg'),
                                                              width: 92,
                                                              height: 92,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  margin: EdgeInsets.all(
                                                      SizeConfig
                                                              .heightMultiplier *
                                                          1.5),
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                    TextSpan(
                                                      text: '@RedRidingHood',
                                                      style: TextStyle(
                                                          color: AppTheme
                                                              .appBarCoin,
                                                          letterSpacing: 0.5),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          ' wakes from a nightmare in their ',
                                                      style: TextStyle(
                                                          color:
                                                              AppTheme.txtColor,
                                                          letterSpacing: 0.5),
                                                    ),
                                                    TextSpan(
                                                      text: '#home',
                                                      style: TextStyle(
                                                          color: AppTheme
                                                              .appBarCoin,
                                                          letterSpacing: 0.5),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          ', there’s a message on her voicemail from her ',
                                                      style: TextStyle(
                                                          color:
                                                              AppTheme.txtColor,
                                                          letterSpacing: 0.5),
                                                    ),
                                                    TextSpan(
                                                      text: '@Mother,',
                                                      style: TextStyle(
                                                          color: AppTheme
                                                              .appBarCoin,
                                                          letterSpacing: 0.5),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          ' giving her the news of ',
                                                      style: TextStyle(
                                                          color:
                                                              AppTheme.txtColor,
                                                          letterSpacing: 0.5),
                                                    ),
                                                    TextSpan(
                                                      text: '@Grandma',
                                                      style: TextStyle(
                                                          color: AppTheme
                                                              .appBarCoin,
                                                          letterSpacing: 1),
                                                    ),
                                                    TextSpan(
                                                      text: ' being ill',
                                                      style: TextStyle(
                                                          color:
                                                              AppTheme.txtColor,
                                                          letterSpacing: 1),
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
                                                        thickness: 0.5,
                                                        color: Colors.grey,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .message_outlined,
                                                            color:
                                                                Colors.black38,
                                                            size: 18.0,
                                                          ),
                                                          Icon(
                                                            Icons.add_circle,
                                                            color: AppTheme
                                                                .appBarCoin,
                                                            size: 18.0,
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
    );
  }
}
