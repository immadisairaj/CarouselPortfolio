import 'package:flutter/material.dart';
import 'package:website/theme/colors.dart';
import 'package:website/widgets/top_container.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:website/extensions/hover_extensions.dart';

import 'dart:html' as html;

class HomeDesktop extends StatefulWidget {
  HomeDesktop({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _HomeDesktop createState() => _HomeDesktop();
}

class _HomeDesktop extends State<HomeDesktop> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            TopContainer(
              height: 280,
              width: width,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    // TODO: Change red to white and then add menu
                    child: Icon(Icons.menu, color: CustomColors.cRed, size: 30.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0.0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 300),
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
                                  'assets/Rajendra.jpg',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 300),
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
                                        text: ["Sai Rajendra Immadi"],
                                        speed: Duration(milliseconds: 300),
                                        textStyle: TextStyle(fontSize: 35.0, color: Colors.white, fontWeight: FontWeight.w800),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                      child: Text(
                                        'Open-Source Enthusiast | Musician',
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
                                        'Mentor and Member @amFOSS',
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
                                'I am Sai Rajendra Immadi, from Hyderabad, B.Tech in CSE at Amrita Vishwa Vidhyapeetham, Amritapuri Campus, India. An open-source enthusiast with proficiency in Android Application Development. Have keen interest to learn new things and able to grasp quickly. I am also a Musician, learning Tabla from age 5.',
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
                              '"Live the life upto your Maximum"',
                              style: TextStyle(
                                fontSize: 20,
                                color: CustomColors.cRed,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Card(
                                child: IconButton(
                                  icon: FaIcon(FontAwesomeIcons.github),
                                  onPressed: (){
                                    html.window.open('https://github.com/immadisairaj/', 'GitHub');
                                  },
                                ),
                              ).showCursorOnHover.moveUpOnHover,
                              Card(
                                child: IconButton(
                                  icon: FaIcon(FontAwesomeIcons.gitlab),
                                  onPressed: (){
                                    html.window.open('https://gitlab.com/immadisairaj', 'GitLab');
                                  },
                                ),
                              ).showCursorOnHover.moveUpOnHover,
                              Card(
                                child: IconButton(
                                  icon: FaIcon(FontAwesomeIcons.linkedinIn),
                                  onPressed: (){
                                    html.window.open('https://www.linkedin.com/in/immadisairaj/', 'LinkedIn');
                                  },
                                ),
                              ).showCursorOnHover.moveUpOnHover,
                              Card(
                                child: IconButton(
                                  icon: FaIcon(FontAwesomeIcons.twitter),
                                  onPressed: (){
                                    html.window.open('https://twitter.com/immadisairaj', 'Twitter');
                                  },
                                ),
                              ).showCursorOnHover.moveUpOnHover,
                              Card(
                                child: IconButton(
                                  icon: FaIcon(FontAwesomeIcons.instagram),
                                  onPressed: (){
                                    html.window.open('https://www.instagram.com/immadisairaj/', 'Instagram');
                                  },
                                ),
                              ).showCursorOnHover.moveUpOnHover,
                              Card(
                                child: IconButton(
                                  icon: Icon(Icons.mail_outline),
                                  onPressed: (){
                                    html.window.open('mailto:immadirajendra.sai@gmail.com', 'Mail');
                                  },
                                ),
                              ).showCursorOnHover.moveUpOnHover,
                            ],
                          ),
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