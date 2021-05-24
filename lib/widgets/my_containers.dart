import 'package:flutter/material.dart';

class MyContainers extends StatelessWidget {
  final Color tus;
  final Widget child;

  MyContainers({this.tus = Colors.white, this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: tus,
      ),
    );
  }
}
