import 'package:flutter/material.dart';


class GYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.network(
          "http://img0.dili360.com/ga/M01/48/3C/wKgBy1kj49qAMVd7ADKmuZ9jug8377.tub.jpg",
          alignment: Alignment.topCenter,//顶部居中
          repeat: ImageRepeat.repeatY, //Y轴上重复
          color: Colors.red,
          colorBlendMode: BlendMode.colorBurn,
        ),
        width: 300,
        height: 300,
      ),
    );
  }
}