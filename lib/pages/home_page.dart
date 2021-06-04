import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final  int days = 30;
  final String name= 'Akash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health App'),
      ),
      body: Center(
          child: Container(
            child: Text('Welcome to $days of Flutter by $name',),
        ),
      ),
      drawer: Drawer(),
      
      
    );
  }
}