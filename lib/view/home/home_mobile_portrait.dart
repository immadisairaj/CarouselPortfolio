import 'package:flutter/material.dart';
import 'package:website/constants/constants.dart';
import 'package:website/theme/colors.dart';
import 'package:website/widgets/social_icons.dart';
import 'package:website/widgets/top_container.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:website/extensions/hover_extensions.dart';
import 'package:website/widgets/end_drawer.dart';

class HomeMobilePortrait extends StatefulWidget {
  HomeMobilePortrait({Key key}) : super(key: key);

  @override
  _HomeMobilePortrait createState() => _HomeMobilePortrait();
}

class _HomeMobilePortrait extends State<HomeMobilePortrait> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      endDrawer: endDrawer(context, 0.7, 20),
      body: SafeArea(
        child: Column(
          children: [
            TopContainer(
              height: 290,
              width: width,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      child: Icon(Icons.menu, color: Colors.white, size: 30.0),
                      onTap: () { _scaffoldKey.currentState.openEndDrawer(); }
                    ).showCursorOnHover,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        CircularPercentIndicator(
                          radius: 130.0,
                          lineWidth: 5.0,
                          animation: true,
                          percent: 1,
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.white,
                          backgroundColor: CustomColors.cRed,
                          center: CircleAvatar(
                            backgroundColor: CustomColors.cBlue,
                            radius: 50.0,
                            backgroundImage: AssetImage(
                              MyConstants.of(context).profileImage,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                child: TypewriterAnimatedTextKit(
                                  totalRepeatCount: 1,
                                  pause: Duration(milliseconds:  1000),
                                  text: MyConstants.of(context).headName,
                                  speed: Duration(milliseconds: 300),
                                  textStyle: TextStyle(fontSize: 28.0, color: Colors.white, fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Container(
                                child: Text(
                                  MyConstants.of(context).tag0,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: CustomColors.cSubHeading,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                child: Text(
                                  MyConstants.of(context).tag1,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: CustomColors.cSubHeading,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                            child: SizedBox(
                              width: 500,
                              child: Text(
                                MyConstants.of(context).about,
                                style: TextStyle(
                                  fontSize: 19,
                                  wordSpacing: 1,
                                  letterSpacing: 1,
                                  height: 1.3,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                            child: Text(
                              MyConstants.of(context).quote,
                              style: TextStyle(
                                fontSize: 17,
                                color: CustomColors.cRed,
                              ),
                            ),
                          ),
                          socialIcons(context, 50),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}