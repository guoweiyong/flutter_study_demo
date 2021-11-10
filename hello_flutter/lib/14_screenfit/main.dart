
import 'dart:ui';

import 'package:flutter/material.dart';
import 'size_fit.dart';
import 'int_fit.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //获取媒体查询信息对象
    final Size screen_size = window.physicalSize/window.devicePixelRatio;
    print("分辨率： phySicalWidth==${screen_size.width}, phySicalHeight===${screen_size.height}");


    // TODO: implement build
    return MaterialApp(
      home: GYHomePage(),
    );
  }
}

class GYHomePage extends StatefulWidget {
  const GYHomePage({Key? key}) : super(key: key);

  @override
  _GYHomePageState createState() => _GYHomePageState();
}

class _GYHomePageState extends State<GYHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("屏幕适配"),
      ),
      body: Center(
        child: Container(
          width: 200.dpx,
          height: 200.0.dpx,
          color: Colors.orange,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.pets),
        onPressed: (){
          //获取媒体查询信息对象
          final mediaQueryData = MediaQuery.of(context);
          //获取屏幕的宽度和高度
          final kScreenWidth = mediaQueryData.size.width;
          final kScreenHeight = mediaQueryData.size.height;
          final phySicalWidth = window.physicalSize.width;
          final phySicalHeight = window.physicalSize.height;

          final dpr = window.devicePixelRatio;

          print("屏幕的宽度===$kScreenWidth, 屏幕的高度===$kScreenHeight");
          print("分辨率： phySicalWidth==$phySicalWidth, phySicalHeight===$phySicalHeight");
          print("dpr=======$dpr");

          // 3.状态栏的高度
          // 有刘海的屏幕:44 没有刘海的屏幕为20
          final statusBarHeight = mediaQueryData.padding.top;
          // 有刘海的屏幕:34 没有刘海的屏幕0
          final bottomHeight = mediaQueryData.padding.bottom;
          print("状态栏height: $statusBarHeight 底部高度:$bottomHeight");
        },
      ),
    );
  }
}


