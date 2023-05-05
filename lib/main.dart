import 'package:flutter/material.dart';
import 'package:internship_project/Pages/Myhomepage.dart';


import 'Pages/Hom4.dart';

import 'Pages/Home5.dart';
import 'Pages/HomeContainer.dart';

import 'Utils/Clipperpage.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      // home: HomeMain(),
      home:  MyHomepPages(),
    );
  }
}

// decoration: BoxDecoration(
// gradient: LinearGradient(
// begin: Alignment.bottomLeft,
// end: Alignment.bottomRight,
// colors: [
// Colors.black.withOpacity(1),
// Colors.transparent,
// ],
// stops: [0.0, 0.7],
// ),
// ),



