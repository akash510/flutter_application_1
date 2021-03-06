import 'package:flutter/material.dart';

import 'package:flutter_application_1/pages/login.page.dart';
import 'package:flutter_application_1/pages/welcome.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primaryColor: Color(0xff9C78B7),
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(primarySwatch: Colors.deepOrange),
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/welcome': (context) => Welcome(),
      },
    );
  }
}
