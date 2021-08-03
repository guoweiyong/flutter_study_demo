import 'package:flutter/material.dart';

class GYDashedLine extends StatelessWidget {
  //虚线的方向
  final Axis axis;
  // 虚线的宽度
  final double dashedWidth;
  // 虚线的长度
  final double dashedHeight;
  //虚线的个数
  final int count;
  //虚线的颜色
  final Color color;

  GYDashedLine({this.axis = Axis.horizontal,
    this.dashedWidth = 1,
    this.dashedHeight = 1,
    this.count = 30,
    this.color = Colors.orange});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Flex(
      direction: axis,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(this.count, (index) {
        return SizedBox(
          width: this.dashedWidth,
          height: this.dashedHeight,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: this.color
            ),
          ),
        );
      }),
    );
  }
}