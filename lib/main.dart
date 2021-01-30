import 'package:webapp/Screens/Aboutus.dart';
import 'Screens/Contactus.dart';
import 'Screens/Home.dart';
import 'package:flutter/material.dart';

import 'Screens/post.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple,
      accentColor: Colors.white,
      fontFamily: 'Work-Sans'),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/post': (context) => postDesc(),
        '/About-us': (context) => Aboutus(),
        '/Contact-us': (context) => Contactus(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
