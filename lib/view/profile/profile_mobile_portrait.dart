import 'package:flutter/material.dart';
import 'package:website/constants/constants.dart';
import 'package:website/theme/colors.dart';
import 'package:website/widgets/top_container.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                  children: [
                    Text('Profile: Under Construction!'),
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