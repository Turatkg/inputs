import 'package:flutter/material.dart';

class IconJynys extends StatelessWidget {
  final String jynysy;
  final IconData icon;

  IconJynys({this.jynysy, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 50,
          color: Colors.black54,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          jynysy,
          style: TextStyle(
              color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
