import 'package:flutter/material.dart';

class GYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //实现圆角图片
    return Center(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg"),
          ),
          color: Colors.orange,
          borderRadius: BorderRadius.circular(10), //设置圆角 这里也可以使用only设置
        ),
      ),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        // color: Color.fromRGBO(5, 5, 20, 0.5),
        width: 100,
        height: 100,
        child: Icon(
          Icons.pets,
          size: 30,
        ),
        decoration: BoxDecoration(
            color: Colors.orange,
            border: Border.all(
                color: Colors.redAccent, width: 3, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(5), //设置圆角 这里也可以使用only设置
            boxShadow: [
              BoxShadow(offset: Offset(5, 5), color: Colors.purple, blurRadius: 5)
            ],
            gradient:LinearGradient(colors: [Colors.orange,Colors.purple])//渐变效果
        ),
      ),
    );
  }
}