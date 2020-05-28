import 'package:flutter/material.dart';
import 'package:website/constants/constants.dart';
import 'package:website/theme/colors.dart';
import 'package:website/widgets/social_icons.dart';
import 'package:website/widgets/top_container.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:website/extensions/hover_extensions.dart';
import 'package:website/widgets/end_drawer.dart';

class HomeDesktop extends StatefulWidget {
  HomeDesktop({Key key}) : super(key: key);

  @override
  _HomeDesktop createState() => _HomeDesktop();
}

class _HomeDesktop extends State<HomeDesktop> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      endDrawer: endDrawer(context, 0.2, 20),
      body: SafeArea(
        child: Column(
          children: [
            TopContainer(
              height: 280,
              width: width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        child: Icon(Icons.menu, color: Colors.white, size: 30.0),
                        onTap: () { _scaffoldKey.currentState.openEndDrawer(); }
                      ).showCursorOnHover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0.0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: CircularPercentIndicator(
                              radius: 140.0,
                              lineWidth: 5.0,
                              animation: true,
                              percent: 1,
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: Colors.white,
                              backgroundColor: CustomColors.cRed,
                              center: CircleAvatar(
                                backgroundColor: CustomColors.cBlue,
                                radius: 60.0,
                                backgroundImage: AssetImage(
                                  MyConstants.of(context).profileImage,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: SizedBox(
                              width: 500,
                              child: Column(
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
                                        textStyle: TextStyle(fontSize: 36.0, color: Colors.white, fontWeight: FontWeight.w800,letterSpacing: 1, ),
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
                                          fontSize: 17.0,
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
                                          fontSize: 17.0,
                                          color: CustomColors.cSubHeading,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
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
                            padding: const EdgeInsets.only(left: 200, right: 200, top: 20),
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
                                fontSize: 20,
                                color: CustomColors.cRed,
                              ),
                            ),
                          ),
                          socialIcons(context, 55),
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