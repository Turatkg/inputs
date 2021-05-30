import 'package:flutter/material.dart';

class MyContainers extends StatelessWidget {
  final Color tus;
  final Widget child;
  final Function onPressed;
  MyContainers({this.tus = Colors.white, this.child, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: child,
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: tus,
        ),
      ),
    );
  }
}
