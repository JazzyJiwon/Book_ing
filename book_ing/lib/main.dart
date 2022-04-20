import 'package:flutter/material.dart';
import 'package:thread/screens/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF000000),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
