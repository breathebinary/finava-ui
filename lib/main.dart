// @da rt=2.9
import 'package:finava/dashboard/sample_circular_indicator_page.dart';
import 'package:finava/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finava UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF3699FF),
        textTheme: GoogleFonts.poppinsTextTheme()
      ),
      home: HomePage(),
    );
  }
}
