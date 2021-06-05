import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_application_1/utills/routes.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Image.asset('assests/images/login 02.png', fit: BoxFit.cover),
            SizedBox(
              height: 40,
            ),
            Text(
              'Find your personal trainer',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
              child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: 250,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xff804fb3),
                      borderRadius: BorderRadius.circular(29),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff804fb3),
                          Color(0xff9969c7),
                          Color(0xffb589d6)
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ))),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
              child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: 250,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    'SING UP',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xff804fb3),
                      borderRadius: BorderRadius.circular(29),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff9e9e9e),
                          Color(0xffbdbdbd),
                          Color(0xffd3d3d3)
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ))),
            )
          ],
        ));
  }
}
