import 'package:flutter/material.dart';

class GYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(
        widthFactor: 2,
        heightFactor: 2,
        child: Icon(
          Icons.pets,
          size: 80,
        ),
      ),
    );
  }
}

class AlignDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 100,
      height: 100,
      color: Colors.orange,
      child: Align(
        alignment: Alignment.bottomRight,
        // alignment: Alignment(-1,-1),
        child: Icon(
          Icons.pets,
          size: 80,
        ),
        widthFactor: 3,
        heightFactor: 4,
      ),
    );
  }
}