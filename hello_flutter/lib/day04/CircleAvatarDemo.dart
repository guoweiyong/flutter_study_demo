import 'package:flutter/material.dart';

class GYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Text("圆角图片", style: TextStyle(color: Colors.orange)),
      backgroundImage: NetworkImage("https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg"),
      radius: 80,
    );
  }
}