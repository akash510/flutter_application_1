import 'package:flutter/material.dart';

import 'package:flutter_application_1/pages/login.page.dart';
import 'package:flutter_application_1/pages/welcome.dart';
import 'package:flutter_application_1/utills/routes.dart';
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
          primaryColor: Color(0xff804fb3),
          fontFamily: GoogleFonts.lato().fontFamily),
      debugShowCheckedModeBanner: true,
      darkTheme: ThemeData(primarySwatch: Colors.deepOrange),
      routes: {
        '/': (context) => Welcome(),
        '/home': (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.welcomeRoute: (context) => Welcome(),
      },
    );
  }
}
