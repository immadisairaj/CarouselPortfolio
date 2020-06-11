import 'package:flutter/material.dart';

class MyConstants extends InheritedWidget {
  static MyConstants of(BuildContext context) => context. dependOnInheritedWidgetOfExactType<MyConstants>();

  const MyConstants({Widget child, Key key}): super(key: key, child: child);

  // Home Constants
  final String profileImage = 'assets/Rajendra.jpg';  // location of image (need to be an asset)
  final List<String> headName = const ["Sai Rajendra Immadi"];
  final String tag0 = 'Open-Source Enthusiast | Musician';
  final String tag1 = 'Mentor and Member @amFOSS';
  final String about = 'I am Sai Rajendra Immadi, from Hyderabad, B.Tech in CSE at Amrita Vishwa Vidhyapeetham, Amritapuri Campus, India. An open-source enthusiast with proficiency in Android Application Development. Have keen interest to learn new things and able to grasp quickly. I am also a Musician, learning Tabla from age 5.';
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
    ['2020', 'Portfolio', '', 'A personal website built using flutter to showcase themselves which also includes google analytics tracking for the site', 'https://github.com/immadisairaj/Portfolio'],
    ['2020', 'Distributed Group Chat System', '', 'Terminal based Distributed Group Chat System built in Java using Remote Method Invocation(RMI)', 'https://github.com/immadisairaj/distributedGroupChatSystem'],
    ['2019', 'Harry Potter', '', 'A Flutter Cilent which can be used to see the details of harry potter using potterapi', 'https://github.com/immadisairaj/harry_potter'],
    ['2019', 'Temple App', 'Maintainer', 'An open-source android application which keeps track of all the financial details related to a temple', 'https://gitlab.com/amfoss/TempleApp'],
    ['2018', 'Quiz', '', 'An Android Client for a quiz which uses open-trivia api.', 'https://github.com/immadisairaj/Quiz'],
    ['2018', 'Codeforces App', '', 'n Android Client for tracking user info and user recent submissions of the Codeforces.', 'https://github.com/immadisairaj/CodeforcesApp'],
  ];
  final List<List<String>> experience = const [
    ['Dec 2019 - Feb 2020', 'amFOSS Developer Challenge ’19', 'Lead Organizer', 'amDeC, an open-source coding program is a platform for student developers to get started with open source and hone their technical skills by working on real-world projects that interest them. This event was sponsored by GitHub.', ''],
    ['Dec 2018 - Jan 2019', 'Kharagpur Winter of Code ’18', 'Mentor', 'A 5-week long online program for the open source developers conducted by open source club at IIT-Kharagpur. Mentored more than 5 people from all over India', ''],
    ['May 2019', 'Android Workshop', 'Trainer', 'Conducted a workshop on Android Development for 8 days conducted by CIR department of Amrita Vishwa Vidhyapeetham, Amritapuri Campus', ''],
    ['May 2018', 'Android Workshop', 'Attendee', 'Attended a workshop on Android Development for 12 days conducted by CIR department of Amrita Vishwa Vidhyapeetham, Amritapuri Campus', ''],
  ];
  final List<List<String>> opensource = const [
    ['2020', 'Chapel', 'Contributor', 'Actively contributed to the project Chapel Language of the organisation and have 8 merged patches. Chapel is a modern programming language designed for productive parallel computing at scale.', 'https://www.github.com/chapel-lang/chapel'],
    ['2019', 'FOSSASIA', 'Contributor', 'Actively contributed to the project Susi Android of the organisation and have 11 merged patches. The main feature of the app is to provide a conversational interface to provide intelligent answers using the loklak/AskSusi infrastructure.', 'https://github.com/fossasia/susi_android/'],
  ];
  final List<List<String>> internships = const [
    ['Aug 2019 - Dec 2019', 'Clubby', 'Frontend Developer', 'Made a Flutter based on cross-platform application from the UI designs provided. The application is a social media platform for cinema enthusiasts to get connected.', ''],
  ];
  final List<List<String>> certificates = const [
    ['2020', 'PCDP Specialization', 'by Coursera', 'Credential ID: GQGL9WEZLV5Z', 'https://www.coursera.org/account/accomplishments/specialization/certificate/GQGL9WEZLV5Z'],
    ['2020', 'Parallel Programming in Java', 'by Coursera', 'Credential ID: VDWYWKLSRDTU', 'https://www.coursera.org/account/accomplishments/certificate/VDWYWKLSRDTU'],
    ['2020', 'Concurrent Programming in Java', 'by Coursera', 'Credential ID: 42DQMGDTC9GR', 'https://www.coursera.org/account/accomplishments/certificate/42DQMGDTC9GR'],
    ['2020', 'Distributed Programming in Java', 'by Coursera', 'Credential ID: EV3AM26T2LW8', 'https://www.coursera.org/account/accomplishments/certificate/EV3AM26T2LW8'],
  ];
  final List<List<String>> others = const [
    ['2019 - Present', 'amFOSS', 'Member and Mentor', 'Active member of the Free and Open Source Software(FOSS) Club at Amrita Vishwa Vidyapeetham. Help mentor juniors in improving their skill set and conduct various sessions and workshops for the same.', ''],
    ['2005 - Present', 'Learning Tabla ', '', 'Completed Certificate Course from Potti Sreeramulu Telugu University and currently pursuing Diploma Course. Gave many individual/group performances.', ''],
    ['2019', 'Student Social Responsibility Project', '', 'Conducted sessions on Education System and future paths into a good career for government school students.', ''],
    ['2018 - 2019', 'Amalabharatam Cleanup Drives', 'Participant', 'Participated in the cleanup drives conducted by the Social Service team of Amrita Vishwa Vidyapeetham.', ''],
  ];

  @override
  bool updateShouldNotify(MyConstants oldWidget) => false;
}