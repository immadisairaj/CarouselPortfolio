import 'package:flutter/material.dart';
import 'package:website/view/blog/blog_mobile_portrait.dart';
import 'package:website/view/blog/blog_mobile_landscape.dart';

class BlogMobile extends StatelessWidget {
  BlogMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    if(mediaQueryData.orientation == Orientation.portrait)
      return BlogMobilePortrait();
    return BlogMobileLandscape();
  }
}