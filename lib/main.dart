import 'package:flutter/material.dart';
import 'package:message_ui/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF73E2A7), //0xFF73E2A7
        accentColor: Color(0xFFFEF9EB), //0xFFFEF9EB
      ),
      home: HomeScreen(),
    );
  }
}