import 'package:flutter/material.dart';
import 'package:website/theme/colors.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:website/constants/constants.dart';
import 'package:website/extensions/hover_extensions.dart';

import 'package:website/view/home/home.dart';
import 'package:website/view/profile/profile.dart';
import 'package:website/view/blog/blog.dart';

Widget topNavigarionBar(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  return SizedBox(
    height: 60,
    width: width,
    child: Container(
      color: CustomColors.cRed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 20),
                      child: CircularPercentIndicator(
                        radius: 40.0,
                        lineWidth: 3.0,
                        animation: false,
                        percent: 1,
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.white,
                        backgroundColor: CustomColors.cRed,
                        center: CircleAvatar(
                          backgroundColor: CustomColors.cBlue,
                          radius: 15.0,
                          backgroundImage: AssetImage(
                            MyConstants.of(context).profileImage,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      MyConstants.of(context).headName[0],
                      style: TextStyle(fontSize: 19.0, color: Colors.white, fontWeight: FontWeight.w600, ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(Home.route);
                },
              ).showCursorOnHover.moveUpOnHover,
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: GestureDetector(
                  child: Text(
                    'Profile',
                    style: TextStyle(fontSize: 19.0, color: Colors.white, fontWeight: FontWeight.w600, ),
                  ),
                  onTap: () {
                    if(ModalRoute.of(context).settings.name != Profile.route)
                      Navigator.of(context).pushNamed(Profile.route);
                  },
                ).showCursorOnHover.moveUpOnHover,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: GestureDetector(
                  child: Text(
                    'Blog',
                    style: TextStyle(fontSize: 19.0, color: Colors.white, fontWeight: FontWeight.w600, ),
                  ),
                  onTap: () {
                    if(ModalRoute.of(context).settings.name != Blog.route)
                      Navigator.of(context).pushNamed(Blog.route);
                  },
                ).showCursorOnHover.moveUpOnHover,
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(
                'Made with Flutter',
                style: TextStyle(
                  color: CustomColors.cSubHeading
                ),
              ),
            ),
        ],
      ),
    ),
  );
}

Widget topNavigarionBarPortrait(BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) {
  double width = MediaQuery.of(context).size.width;
  return SizedBox(
    height: 60,
    width: width,
    child: Container(
      color: CustomColors.cRed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 20),
                      child: CircularPercentIndicator(
                        radius: 40.0,
                        lineWidth: 3.0,
                        animation: false,
                        percent: 1,
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.white,
                        backgroundColor: CustomColors.cRed,
                        center: CircleAvatar(
                          backgroundColor: CustomColors.cBlue,
                          radius: 15.0,
                          backgroundImage: AssetImage(
                            MyConstants.of(context).profileImage,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      MyConstants.of(context).headName[0],
                      style: TextStyle(fontSize: 19.0, color: Colors.white, fontWeight: FontWeight.w600, ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(Home.route);
                },
              ).showCursorOnHover.moveUpOnHover,
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  child: Icon(Icons.menu, color: Colors.white, size: 30.0),
                  onTap: () { scaffoldKey.currentState.openEndDrawer(); }
                ).showCursorOnHover,
              ),
            ),
        ],
      ),
    ),
  );
}