import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:website/extensions/hover_extensions.dart';

import 'dart:html' as html;

Widget socialIcons(BuildContext context, double size) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: size,
        width: size,
        child: Card(
          child: IconButton(
            icon: FaIcon(FontAwesomeIcons.github),
            onPressed: (){
              html.window.open('https://github.com/immadisairaj/', 'GitHub');
            },
          ),
        ).showCursorOnHover.moveUpOnHover,
      ),
      SizedBox(
        height: size,
        width: size,
        child: Card(
          child: IconButton(
            icon: FaIcon(FontAwesomeIcons.gitlab),
            onPressed: (){
              html.window.open('https://gitlab.com/immadisairaj', 'GitLab');
            },
          ),
        ).showCursorOnHover.moveUpOnHover,
      ),
      SizedBox(
        height: size,
        width: size,
        child: Card(
          child: IconButton(
            icon: FaIcon(FontAwesomeIcons.linkedinIn),
            onPressed: (){
              html.window.open('https://www.linkedin.com/in/immadisairaj/', 'LinkedIn');
            },
          ),
        ).showCursorOnHover.moveUpOnHover,
      ),
      SizedBox(
        height: size,
        width: size,
        child: Card(
          child: IconButton(
            icon: FaIcon(FontAwesomeIcons.twitter),
            onPressed: (){
              html.window.open('https://twitter.com/immadisairaj', 'Twitter');
            },
          ),
        ).showCursorOnHover.moveUpOnHover,
      ),
      SizedBox(
        height: size,
        width: size,
        child: Card(
          child: IconButton(
            icon: FaIcon(FontAwesomeIcons.instagram),
            onPressed: (){
              html.window.open('https://www.instagram.com/immadisairaj/', 'Instagram');
            },
          ),
        ).showCursorOnHover.moveUpOnHover,
      ),
      SizedBox(
        height: size,
        width: size,
        child: Card(
          child: IconButton(
            icon: Icon(Icons.mail_outline),
            onPressed: (){
              html.window.open('mailto:immadirajendra.sai@gmail.com', 'Mail');
            },
          ),
        ).showCursorOnHover.moveUpOnHover,
      ),
    ],
  );
}