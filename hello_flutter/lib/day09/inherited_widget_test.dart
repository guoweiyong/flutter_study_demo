

import 'dart:math';

import 'package:flutter/material.dart';//导入对应的库
import 'package:hello_flutter/http/http_dio_tools.dart';

//main函数作为程序的入口
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 100;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //如何使用共享数据模型： 需要再共享的widget的外层，使用共享数据模型包裹
        home: Scaffold(
          body: GYInheritedWidget(
            counter: _counter,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GYShowData01(),
                  GYShowData02()
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
              setState(() {
                _counter ++;
              });
            },
          ),
        )
    );
  }
}

//创建一个数据共享模型
class GYInheritedWidget extends InheritedWidget {
  //创建一个需要共享的数据，这里我们可以写一个变量通过外界传递进来， 也可以直接写死一个共享数据
  final int counter;

  //2.定义构造方法
  GYInheritedWidget({required this.counter,  required Widget child}) : super(child: child);

  //3.我们习惯定义一个of方法来获取这个对象: 获取组件最近的当前的InheritedWidget对象
  static GYInheritedWidget? of(BuildContext context) {
    //该方法的作用：沿着Element树，去找最近的GYInheritedWidget，从Element中取出Widget对象
    return context.dependOnInheritedWidgetOfExactType();
  }

  //4。重写父类的抽象方法，该方法的作用是决定要不要调用State中didChangeDependencies方法（前面学习声明周期方法时学习过）
  // true: 执行当前依赖InheritedWidget的State中的didChangeDependencies方法；false：表示不调用该方法
  @override
  bool updateShouldNotify(GYInheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return oldWidget.counter != counter;
  }
}

class GYShowData01 extends StatefulWidget {
  @override
  _GYShowData01State createState() => _GYShowData01State();
}

class _GYShowData01State extends State<GYShowData01> {


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("执行了_GYShowData01State中的didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    GYInheritedWidget? inheritedWidget = GYInheritedWidget.of(context);
    int counter = 0;
    if (inheritedWidget != null) {
      counter = inheritedWidget.counter;
    }

    return Card(
      color: Colors.red,
      child: Text("当前计数: $counter", style: TextStyle(fontSize: 30),),
    );
  }
}

class GYShowData02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GYInheritedWidget? inheritedWidget = GYInheritedWidget.of(context);
    int counter = 0;
    if (inheritedWidget != null) {
      counter = inheritedWidget.counter;
    }

    return Container(
      color: Colors.blue,
      child: Text("当前计数: $counter", style: TextStyle(fontSize: 30),),
    );
  }
}







