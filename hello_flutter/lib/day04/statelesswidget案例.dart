import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                  "Hello Flutter"
              ),
            ),
            body: GYHomeContent()
        )
    );
  }
}

class GYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GYHomeContentBody();
  }
}

// StatefullWidget: 继承自StatefulWidget的类(可以接收父Widget传过来的数据)/State类(状态)
// flag: 状态
// Stateful不能定义状态 -> 创建一个单独的类, 这个类负责维护状态
class GYHomeContentBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GYHomeContentBodyState();
  }
}

class GYHomeContentBodyState extends State<GYHomeContentBody> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,//设置主轴居中
          children: [
            Checkbox(value: flag,
                onChanged: (value){
                  setState(() {
                    flag = value ?? true; //因为value是bool？ 类型所以需要处理下
                  });
                  print("checkbox  点击事件 $flag");
                }),
            Text(
              "同意协议", style: TextStyle(
                fontSize: 30 //设置字体大小
            ),
            ),
          ],
        )
    );
  }
}