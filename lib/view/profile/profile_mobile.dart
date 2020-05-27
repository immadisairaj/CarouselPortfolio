import 'package:flutter/material.dart';
import 'package:website/view/profile/profile_mobile_portrait.dart';
import 'package:website/view/profile/profile_mobile_landscape.dart';

class ProfileMobile extends StatelessWidget {
  ProfileMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    if(mediaQueryData.orientation == Orientation.portrait)
      return ProfileMobilePortrait();
    return ProfileMobileLandscape();
  }
}