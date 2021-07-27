import 'package:flutter/material.dart';

class GYStartRating extends StatefulWidget {
  /*当前需要显示的分数*/
  final double rating;
  /*最大分数*/
  final double maxRating;
  /*要显示几个星星*/
  final int count;
  /*每个星星的大小*/
  final double ratingSize;
  final Color normalColor;
  final Color selectedColor;

  //传入需要显示的Widget
  final Widget unselectedWidget;
  final Widget selectedWidget;

  GYStartRating({
    Key? key,
    required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.ratingSize = 30,
    this.normalColor = Colors.grey,
    this.selectedColor = Colors.orange,
    Widget? unselectedWidget,
    Widget? selectedWidget
  }) : unselectedWidget = unselectedWidget ?? Icon(Icons.star_border, size: ratingSize,color: normalColor,),
        selectedWidget = selectedWidget ?? Icon(Icons.star, size: ratingSize, color: selectedColor,),
        super(key: key);

  @override
  _GYStartRatingState createState() => _GYStartRatingState();
}

class _GYStartRatingState extends State<GYStartRating> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children:[
          Row(mainAxisSize: MainAxisSize.min, children: buildNormalSatrt()),
          Row(mainAxisSize: MainAxisSize.min, children: buildSelectedSart())
        ],
      ),
    );
  }

  /* 得到未选中的rating*/
  List<Widget> buildNormalSatrt(){
    return List.generate(this.widget.count, (index) {
      return this.widget.unselectedWidget;
    });
  }

  List<Widget> buildSelectedSart() {
    List<Widget> starts = [];
    final star = this.widget.selectedWidget;

    //计算完整的start有几颗
    double oneValue = this.widget.maxRating / this.widget.count;
    int entireCount = (this.widget.rating / oneValue).floor();
    //for循环
    for(var i = 0; i < entireCount; i++) {
      starts.add(star);
    }

    // 计算没有小数位的star
    double leftValue = (this.widget.rating / oneValue) - entireCount;
    final clipStar = ClipRect(
      child: star,
      clipper: GYStarClipper(leftValue * this.widget.ratingSize),
    );
    starts.add(clipStar);

    return starts;
  }
}

/* 裁剪我们使用ClipRect, 该Widget有一个属性是clipper: 类型是CustomClipper<Rect>
*  我们查看文档可以知道，该类的实例类子类中只有一个设置边框的裁剪类:ShapeBorderClipper
* 其他的子类都是私有类，没有符合我们要求的类，那么我们需要自己自定义一个子类来继承这个抽象类，然后实现抽象方法
* */
class GYStarClipper extends CustomClipper<Rect> {
  final double width;//需要裁剪的宽度

  GYStarClipper(this.width);

  //裁剪一个size大小的矩形，然后返回一个rect
  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  /*表示什么情况下重新裁剪*/
  @override
  bool shouldReclip(GYStarClipper oldClipper) {
    // TODO: implement shouldReclip
    return oldClipper.width != width;  //旧的裁剪宽度和现在要裁剪的宽度不相等的时候，我们需要重新裁剪
  }

}