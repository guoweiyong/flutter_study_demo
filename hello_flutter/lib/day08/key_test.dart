

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

class GYHomePage extends StatefulWidget {
  const GYHomePage({Key? key}) : super(key: key);

  @override
  _GYHomePageState createState() => _GYHomePageState();
}

class _GYHomePageState extends State<GYHomePage> {
  List<String> items = ["aaaaa","bbbbb","ccccc"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test key"),
      ),
      body: ListView(
        children: items.map((name) {
          //UniqueKey(), flutter会自动帮我们创建一个唯一的key
          //这里也可以使用随机数，但是使用随机数也有可能重复
          return GYHomeitemful(name, key: ValueKey(name),);
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: (){
          setState(() {
            items.removeAt(0);
          });

        },
      ),
    );
  }
}

//1.使用StatelessWidget实现
class GYHomeItemless extends StatelessWidget {
  final String name;
  final randomColor = Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));

  GYHomeItemless(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: randomColor,
      child: Text(name, style: TextStyle(color: Colors.white, fontSize: 30),),
    );
  }
}

//使用statefulwidget来实现
class GYHomeitemful extends StatefulWidget {
  final String name;

  GYHomeitemful(this.name,{Key? key}) : super(key: key);

  @override
  _GYHomeitemfulState createState() => _GYHomeitemfulState();
}

class _GYHomeitemfulState extends State<GYHomeitemful> {
  final randomColor = Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: randomColor,
      child: Text(this.widget.name, style: TextStyle(color: Colors.white, fontSize: 30),),
    );
  }
}







