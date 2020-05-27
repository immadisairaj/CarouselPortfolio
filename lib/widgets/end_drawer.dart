import 'package:flutter/material.dart';
import 'package:website/theme/colors.dart';
import 'package:website/extensions/hover_extensions.dart';

import 'package:website/view/home/home.dart';
import 'package:website/view/profile/profile.dart';
import 'package:website/view/blog/blog.dart';

Widget endDrawer(BuildContext context, double widthFactor, double textSize) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * widthFactor,
    child: Drawer(
      child: Container(
        color: CustomColors.cRed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ListView(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              shrinkWrap: true,
              children: <Widget>[
                IconButton(
                  alignment: Alignment.topRight,
                  icon: Icon(Icons.close).showCursorOnHover,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.white, fontSize: textSize),
                  ).showCursorOnHover.moveUpOnHover,
                  onTap: () {
                    Navigator.of(context).pushNamed(Home.route);
                  },
                ),
                ListTile(
                  title: Text(
                    'Profile',
                    style: TextStyle(color: Colors.white, fontSize: textSize),
                  ).showCursorOnHover.moveUpOnHover,
                  onTap: () {
                    Navigator.of(context).pushNamed(Profile.route);
                  },
                ),
                ListTile(
                  title: Text(
                    'Blog',
                    style: TextStyle(color: Colors.white, fontSize: textSize),
                  ).showCursorOnHover.moveUpOnHover,
                  onTap: () {
                    Navigator.of(context).pushNamed(Blog.route);
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
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
    ),
  );
}