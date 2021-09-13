import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hello_flutter/day11_animation/pages/image_details.dart';
import 'package:hello_flutter/day11_animation/pages/mdoel_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: GYHomePage(),
    );
  }
}

class GYHomePage extends StatefulWidget {
  @override
  _GYHomePageState createState() => _GYHomePageState();
}


class _GYHomePageState extends State<GYHomePage> with SingleTickerProviderStateMixin {




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("_GYHomePageState-===========build方法执行");
    return Scaffold(
      appBar: AppBar(title: Text("首页"),),
      body: Center(
        child: Text("Test跳转模式"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle_outline),
        onPressed: () {
          print("播放动画按钮点击事件=======");
          // iOS -> Modal方式
         Navigator.of(context).push(MaterialPageRoute(
           builder: (ctx) {
             return GYModelPage();
           },
           fullscreenDialog: true
         ));
         //转场动画跳转方式
//           Navigator.of(context).push(PageRouteBuilder(
//               transitionDuration: Duration(seconds: 3),
//               pageBuilder: (ctx, animation1, animation2) {
//                 return FadeTransition(
//                   opacity: animation1,
//                   child: GYModelPage(),
//                 );
//               }
//           ));
//          Navigator.of(context).pushNamed(routeName)
          }
      ),
    );
  }
}
