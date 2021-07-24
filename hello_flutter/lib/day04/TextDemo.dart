import 'package:flutter/material.dart';

class GYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      "《定风波》 苏轼 莫听穿林打叶声，何妨吟啸且徐行。竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。",
      textAlign: TextAlign.left,//设置文本左对齐
      maxLines: 2,//设置最大行数2行
      overflow: TextOverflow.ellipsis,//设置超出部分...
      style: TextStyle(
          fontSize: 30,//设置字体
          color: Colors.orange//设置字体颜色
      ),
    );
  }
}