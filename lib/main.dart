import 'package:flutter/material.dart';
import 'package:shopui/pages/home_assignment/home_assignment_four/home_assignment_four.dart';
import 'package:shopui/pages/home_assignment/home_assignment_four/home_assignment_four_home.dart';
import 'package:shopui/pages/home_assignment/home_assignment_three/home_assignment_one.dart';
import 'package:shopui/pages/lesson_trainings/lesson_four/intro_home_page.dart';
import 'package:shopui/pages/lesson_trainings/lesson_three/home_page.dart';

import 'pages/lesson_trainings/lesson_four/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
      ),
      home: const HomeAssignmentFour(),
      routes: {
        FourHomeAssignment.id: (context) => const FourHomeAssignment(),
        HomeAssignmentFour.id: (context) => const HomeAssignmentFour(),
        IntroPage.id: (context) => const IntroPage(),
        HomePage.id: (context) => const HomePage(),
        HomeAssignmentOne.id: (context) => const HomeAssignmentOne(),
        IntroHomePage.id: (context) => const IntroHomePage(),
      },
    );
  }
}
