import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:website/view/blog/blog_desktop.dart';
import 'package:website/view/blog/blog_mobile.dart';

class Blog extends StatelessWidget {
  const Blog({Key key}) : super(key: key);

  static const String route = '/blog';

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: BlogMobile(),
      desktop: BlogDesktop(),
    );
  }
}