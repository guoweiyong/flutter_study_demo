import 'package:flutter/material.dart';

class GYImageDetailesPage extends StatelessWidget {
  final String _imageURL;

  GYImageDetailesPage(this._imageURL);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Hero(tag: _imageURL, child: Image.network(_imageURL))
        ),
      ),
    );
  }
}