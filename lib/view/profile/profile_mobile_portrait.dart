import 'package:flutter/material.dart';
import 'package:website/constants/constants.dart';
import 'package:website/theme/colors.dart';
import 'package:website/widgets/slider.dart';
import 'package:website/extensions/hover_extensions.dart';
import 'package:website/widgets/end_drawer.dart';
import 'package:website/widgets/top_navigation_bar.dart';

import 'dart:html' as html;

class ProfileMobilePortrait extends StatefulWidget {
  ProfileMobilePortrait({Key key}) : super(key: key);

  @override
  _ProfileMobilePortrait createState() => _ProfileMobilePortrait();
}

class _ProfileMobilePortrait extends State<ProfileMobilePortrait> {

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
            topNavigarionBarPortrait(context, _scaffoldKey),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GestureDetector(
                            child: Text(
                              'Resume',
                              style: TextStyle(
                                color: CustomColors.cRed,
                                fontSize: 23,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            onTap: () {
                              html.window.open('assets/'+MyConstants.of(context).resume, 'Resume');
                            },
                          ).showCursorOnHover,
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              '- click to get the Resume',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Text(
                        'Projects',
                        style: TextStyle(
                          color: CustomColors.cRed,
                          fontSize: 23,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                      child: slider(context, 260, width, 0.6, MyConstants.of(context).projects, true),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Text(
                        'Experience',
                        style: TextStyle(
                          color: CustomColors.cRed,
                          fontSize: 23,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                      child: slider(context, 260, width, 0.6, MyConstants.of(context).experience, true),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Text(
                        'Open Source',
                        style: TextStyle(
                          color: CustomColors.cRed,
                          fontSize: 23,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                      child: slider(context, 260, width, 0.6, MyConstants.of(context).opensource, true),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Text(
                        'Internships',
                        style: TextStyle(
                          color: CustomColors.cRed,
                          fontSize: 23,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                      child: slider(context, 280, width, 0.6, MyConstants.of(context).internships, true),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Text(
                        'Certifications',
                        style: TextStyle(
                          color: CustomColors.cRed,
                          fontSize: 23,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                      child: slider(context, 240, width, 0.6, MyConstants.of(context).certificates, true),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Text(
                        'Others',
                        style: TextStyle(
                          color: CustomColors.cRed,
                          fontSize: 23,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
                      child: slider(context, 260, width, 0.6, MyConstants.of(context).others, true),
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