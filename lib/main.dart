import 'package:flutter/material.dart';
import 'package:shopui/pages/home_assignment/home_assignment_one.dart';
import 'package:shopui/pages/home_page.dart';

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
              backgroundColor: Colors.transparent
          )
      ),
      home: const HomeAssignmentOne(),
      routes: {
    HomePage.id: (context) => const HomePage(),
        HomeAssignmentOne.id: (context) => const HomeAssignmentOne(),
    },
    );
  }
}
