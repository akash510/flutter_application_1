import 'package:flutter/material.dart';

import 'package:flutter_application_1/utills/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Image.asset('assests/images/login 03.png', fit: BoxFit.cover),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome $name',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter username',
                        labelText: 'Username',
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter password',
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });

                        await Future.delayed(Duration(seconds: 1));

                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 100 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  'LOGIN',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                          decoration: BoxDecoration(
                              color: Color(0xff804fb3),
                              shape: changeButton
                                  ? BoxShape.circle
                                  : BoxShape.rectangle,
                              //borderRadius: BorderRadius.circular(29),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff804fb3),
                                  Color(0xff9969c7),
                                  Color(0xffb589d6)
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ))),
                    )

                    //ElevatedButton(
                    // child: Text(
                    //   'Login',
                    //   textScaleFactor: 1.3,
                    //),
                    // style: TextButton.styleFrom(
                    //     minimumSize: Size(120, 40),
                    //     backgroundColor: Color(0xff804fb3)),
                    //// onPressed: () {
                    //  Navigator.pushNamed(context, MyRoutes.welcomeRoute);
                    // },
                    // )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
