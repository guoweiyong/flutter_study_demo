import 'package:flutter/material.dart';

class GYDashedLine extends StatelessWidget {
  //虚线的方向
  final Axis axis;
  // 虚线的宽度
  final double dashedWidth;
  // 虚线的长度
  final double dashedHeight;
  //虚线的颜色
  final Color color;
  //虚线分割宽度
  final double dashedSpaceWitdh;

  GYDashedLine({this.axis = Axis.horizontal,
    this.dashedWidth = 1,
    this.dashedSpaceWitdh = 5,
    this.dashedHeight = 1,
    this.color = Colors.orange});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        //根据父容器的宽度 和虚线的宽度 和间隔 来计算虚线的个数
        //constraints.biggest.width 获取组件在父组件中设置的最大宽度
        //constraints.biggest.height 获取组件在父组件中设置的最大高度
        int count = 0;
        var direction = this.axis == Axis.horizontal ? true : false;
        if (direction) {
          count = (constraints.biggest.width / (this.dashedWidth + this.dashedSpaceWitdh)).floor();
        } else {
          count = (constraints.biggest.height / (this.dashedHeight + this.dashedSpaceWitdh)).floor();
        }
        return Flex(
          direction: axis,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(count, (index) {
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
      },
    );
  }
}