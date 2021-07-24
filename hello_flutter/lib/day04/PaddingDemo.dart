import 'package:flutter/material.dart';

class GYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Text(
        "padding",
        style: TextStyle(fontSize: 30, color: Colors.orange),
      ),
    );
  }
}