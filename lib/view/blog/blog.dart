import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Blog extends StatelessWidget {
  const Blog({Key key}) : super(key: key);

  static const String route = '/blog';

  @override
  Widget build(BuildContext context) {
    return Text('Blog: Under Construction');
  //   return ScreenTypeLayout(
  //     mobile: ProfileMobile(),
  //     desktop: ProfileDesktop(),
  //   );
  }
}