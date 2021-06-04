import 'package:flutter/material.dart';

class RoundBotton extends StatelessWidget {
  const RoundBotton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF9e9e9e),
                      Color(0xFFbdbdbd),
                      Color(0xFFd3d3d3),
                    ],
                  ),
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(20),
                primary: Colors.white,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: Text('SIGN UP', textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
