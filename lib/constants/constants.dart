import 'package:flutter/material.dart';

class MyConstants extends InheritedWidget {
  static MyConstants of(BuildContext context) => context. dependOnInheritedWidgetOfExactType<MyConstants>();

  const MyConstants({Widget child, Key key}): super(key: key, child: child);

  // Home Constants
  final String profileImage = 'assets/Rajendra.jpg';  // location of image (need to be an asset)
  final List<String> headName = const ["Sai Rajendra Immadi"];
  final String tag0 = 'Open-Source Enthusiast | Musician';
  final String tag1 = 'Intern @IBM';
  final String about = 'I am Sai Rajendra Immadi, from Hyderabad, B.Tech in CSE at Amrita Vishwa Vidhyapeetham, Amritapuri Campus, India. An open-source enthusiast with proficiency in Mobile Application Development. Have keen interest to learn new things and able to grasp quickly. I am also a Musician, learning Tabla from age 5.';
  final String quote = '"Live the life upto your Maximum"';

  // Blog Link
  final String blog = '/blog';  // location of blog (can be a separate http link also)

  // Profile Constants
  final String resume = 'assets/Rajendra_CV.pdf'; // location of resume (can be a separate http link also)
  
  // All following lists follows
  // ['year', 'projectName', 'subTitle', 'description', 'link'],
  // if there is anything not needed, then it can be left blank
  // example if link is not needed - ['year', 'projectName', 'subTitle', 'description', ''],
  final List<List<String>> projects = const [
    ['2021', 'Sai Voice', 'Play Store', 'A mobile radio player which streams audio from Radio Sai Global Harmony', 'https://github.com/immadisairaj/radiosai'],
    ['2020', 'Portfolio Template', '', 'The application allows people to have an online presence with their own personal website with which they can demonstrate their skills and projects', 'https://github.com/immadisairaj/Portfolio'],
    ['2020', 'Distributed Group Chat System', '', 'Terminal based Distributed Group Chat System built in Java using Remote Method Invocation(RMI)', 'https://github.com/immadisairaj/distributedGroupChatSystem'],
    ['2019', 'Harry Potter', '', ' An application built for the fans of Harry Potter to test their luck on the sorting hat and also know the different characters and different spells from Harry Potter', 'https://github.com/immadisairaj/harry_potter'],
    ['2019', 'Temple App', 'Maintainer', 'An open-source android application which keeps track of all the financial details related to a temple', 'https://gitlab.com/amfoss/TempleApp'],
    ['2019', 'Codeforces App', '', 'A native Android application helps people to view details and recent problem submission of a Codeforces user', 'https://github.com/immadisairaj/CodeforcesApp'],
    ['2018', 'Quiz', '', 'A native Android application can be used to test a person\'s knowledge in a particular category or overall category and learn from it', 'https://github.com/immadisairaj/Quiz'],
  ];
  final List<List<String>> experience = const [
    ['Dec 2019 - Feb 2020', 'amFOSS Developer Challenge ’19', 'Lead Organizer', 'A 3 month open-source coding challenge. This program is for student developers to get started with open source and hone their technical skills by working on real-world projects that interest them.', ''],
    ['May 2019', 'Android Workshop', 'Trainer', 'Trained students on Android Application Development for 8 days as a part of a workshop conducted by CIR department of Amrita Vishwa Vidhyapeetham, Amritapuri Campus', ''],
    ['Dec 2018 - Jan 2019', 'Kharagpur Winter of Code ’18', 'Mentor', 'A 5-week long online program for the open source developers conducted by open source club at IIT-Kharagpur. Mentored more than 5 people from all over India', ''],
    ['May 2018', 'Android Workshop', 'Attendee', 'Attended a workshop on Android Application Development for 12 days conducted by CIR department of Amrita Vishwa Vidhyapeetham, Amritapuri Campus', ''],
  ];
  final List<List<String>> opensource = const [
    ['2020', 'Chapel', 'Contributor', 'Chapel is a programming language designed for productive parallel computing on large-scale systems. Was a part of 2 version releases of the language, actively contributed code', 'https://www.github.com/chapel-lang/chapel'],
    ['2019', 'FOSSASIA', 'Contributor', 'Actively contributed to the project Susi Android of the organisation and have 11 merged patches. The main feature of the app is to provide a conversational interface to provide intelligent answers using the loklak/AskSusi infrastructure.', 'https://github.com/fossasia/susi_android/'],
  ];
  final List<List<String>> internships = const [
    ['Jan 2021 - Present', 'IBM', 'Software Developer', 'Working on a Full-Stack web application.', ''],
    ['Aug 2019 - Dec 2019', 'IndieMakers', 'Frontend Developer', 'Built a cross-platform mobile application which supports both iOS and Android. The platform helps different cinema enthusiasts get connected. Built the front-end application from scratch based on the UI designs provided.', ''],
  ];
  final List<List<String>> certificates = const [
    ['2020', 'Full Stack: Angular and Java Spring Boot', 'by Udemy', 'Credential ID: UC-32517dd1-4804-4746-bef9-9a084cdde3d8', 'https://www.udemy.com/certificate/UC-32517dd1-4804-4746-bef9-9a084cdde3d8/'],
    ['2020', 'PCDP Specialization', 'by Coursera', 'Credential ID: GQGL9WEZLV5Z', 'https://www.coursera.org/account/accomplishments/specialization/certificate/GQGL9WEZLV5Z'],
    ['2020', 'Parallel Programming in Java', 'by Coursera', 'Credential ID: VDWYWKLSRDTU', 'https://www.coursera.org/account/accomplishments/certificate/VDWYWKLSRDTU'],
    ['2020', 'Concurrent Programming in Java', 'by Coursera', 'Credential ID: 42DQMGDTC9GR', 'https://www.coursera.org/account/accomplishments/certificate/42DQMGDTC9GR'],
    ['2020', 'Distributed Programming in Java', 'by Coursera', 'Credential ID: EV3AM26T2LW8', 'https://www.coursera.org/account/accomplishments/certificate/EV3AM26T2LW8'],
  ];
  final List<List<String>> others = const [
    ['2005 - Present', 'Learning Tabla ', '', 'Completed Certificate Course from Potti Sreeramulu Telugu University and currently pursuing Diploma Course. Gave many individual/group performances.', ''],
    ['2019 - 2021', 'amFOSS', 'Member and Mentor', 'Active member of the Free and Open Source Software(FOSS) Club at Amrita Vishwa Vidyapeetham. Help mentor juniors in improving their skill set and conduct various sessions and workshops for the same.', ''],
    ['2020', 'Community Kitchen', 'Sri Satya Sai Organization', 'Volunteered to serve in the Community Kitchen arranged by Sri Satya Sai Seva Organizations, Hyderabad in order to serve the needy who were affected by the pandemic. The Community Kitchen served at least 5000 people every day', ''],
    ['2019', 'Student Social Responsibility Project', '', 'Conducted sessions on Education System and future paths into a good career for government school students.', ''],
    ['2018 - 2019', 'Amalabharatam Cleanup Drives', 'Participant', 'Participated in the cleanup drives conducted by the Social Service team of Amrita Vishwa Vidyapeetham.', ''],
  ];

  @override
  bool updateShouldNotify(MyConstants oldWidget) => false;
}