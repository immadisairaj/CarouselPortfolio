import 'package:flutter/material.dart';

class MyConstants extends InheritedWidget {
  static MyConstants of(BuildContext context) => context. dependOnInheritedWidgetOfExactType<MyConstants>();

  const MyConstants({Widget child, Key key}): super(key: key, child: child);

  // Home Constants
  final String profileImage = 'assets/Rajendra.jpg';
  final List<String> headName = const ["Sai Rajendra Immadi"];
  final String tag0 = 'Open-Source Enthusiast | Musician';
  final String tag1 = 'Mentor and Member @amFOSS';
  final String about = 'I am Sai Rajendra Immadi, from Hyderabad, B.Tech in CSE at Amrita Vishwa Vidhyapeetham, Amritapuri Campus, India. An open-source enthusiast with proficiency in Android Application Development. Have keen interest to learn new things and able to grasp quickly. I am also a Musician, learning Tabla from age 5.';
  final String quote = '"Live the life upto your Maximum"';

  @override
  bool updateShouldNotify(MyConstants oldWidget) => false;
}