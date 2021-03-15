import 'package:flutter/material.dart';
import 'package:website/constants/constants.dart';
import 'package:website/theme/colors.dart';
import 'package:website/widgets/slider.dart';
import 'package:website/extensions/hover_extensions.dart';
import 'package:website/widgets/top_navigation_bar.dart';

import 'dart:html' as html;

class ProfileDesktop extends StatefulWidget {
  ProfileDesktop({Key key}) : super(key: key);

  @override
  _ProfileDesktop createState() => _ProfileDesktop();
}

class _ProfileDesktop extends State<ProfileDesktop> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            topNavigarionBar(context),
            Expanded(
              child: Scrollbar(
                isAlwaysShown: true,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 80, right: 80, top: 40),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton.icon(
                              label: Text(
                                'Resume',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              icon: Icon(Icons.article_outlined),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all<double>(7),
                                backgroundColor: MaterialStateProperty.all<Color>(CustomColors.cRed),
                              ),
                              onPressed: () {
                                html.window.open('assets/'+MyConstants.of(context).resume, 'Resume');
                              },
                            ).showCursorOnHover,
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
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
                        padding: EdgeInsets.only(left: 80, right: 80, top: 40),
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
                        padding: EdgeInsets.only(left: 80, right: 80, top: 20),
                        child: slider(context, 220, width, 1, MyConstants.of(context).projects, false),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 80, right: 80, top: 40),
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
                        padding: EdgeInsets.only(left: 80, right: 80, top: 20),
                        child: slider(context, 230, width, 1, MyConstants.of(context).experience, false),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 80, right: 80, top: 40),
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
                        padding: EdgeInsets.only(left: 80, right: 80, top: 20),
                        child: slider(context, 230, width, 1, MyConstants.of(context).opensource, false),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 80, right: 80, top: 40),
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
                        padding: EdgeInsets.only(left: 80, right: 80, top: 20),
                        child: slider(context, 230, width, 1, MyConstants.of(context).internships, false),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 80, right: 80, top: 40),
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
                        padding: EdgeInsets.only(left: 80, right: 80, top: 20),
                        child: slider(context, 220, width, 1, MyConstants.of(context).certificates, false),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 80, right: 80, top: 40),
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
                        padding: EdgeInsets.only(left: 80, right: 80, top: 20, bottom: 40),
                        child: slider(context, 230, width, 1, MyConstants.of(context).others, false),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}