import 'package:flutter/material.dart';
import 'widget/start_rating.dart';
import 'widget/dashedline.dart';
import 'pages/main/main_page.dart';


//main函数作为程序的入口
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.green,//设置主题颜色为
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent),
        home: GYMainPage());
  }
}


