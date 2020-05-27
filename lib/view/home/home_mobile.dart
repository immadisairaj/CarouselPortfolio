import 'package:flutter/material.dart';
import 'package:website/view/home/home_mobile_portrait.dart';
import 'package:website/view/home/home_mobile_landscape.dart';

class HomeMobile extends StatelessWidget {
  HomeMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    if(mediaQueryData.orientation == Orientation.portrait)
      return HomeMobilePortrait();
    return HomeMobileLandscape();
  }
}