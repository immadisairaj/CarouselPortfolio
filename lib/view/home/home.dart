import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:website/view/home/home_desktop.dart';
import 'package:website/view/home/home_mobile.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeMobile(),
      desktop: HomeDesktop(),
    );
  }
}