

import 'dart:math';

import 'package:flutter/material.dart';//导入对应的库
import 'package:hello_flutter/http/http_dio_tools.dart';

//main函数作为程序的入口
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: GYHomePage()
    );
  }
}
class GYHomePage extends StatelessWidget {
  //创建一个GlobalKey
  final GlobalKey<_GYHomeContentState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test key"),
      ),
      body: GYHomeContent(key: _globalKey,),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: (){
          print("获取绑定key的widget属性：${_globalKey.currentState?.widget.name}");
          print("获取绑定key的widget属性：${_globalKey.currentState?.value}");

        },
      ),
    );
  }
}

class GYHomeContent extends StatefulWidget {
  final String name = "test_globalKey";
  const GYHomeContent({Key? key}) : super(key: key);

  @override
  _GYHomeContentState createState() => _GYHomeContentState();
}

class _GYHomeContentState extends State<GYHomeContent> {
  final String value = "test_value";
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}






