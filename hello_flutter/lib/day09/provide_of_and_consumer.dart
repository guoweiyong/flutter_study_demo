

import 'dart:math';

import 'package:flutter/material.dart';//导入对应的库
import 'package:hello_flutter/http/http_dio_tools.dart';
import 'package:provider/provider.dart';

//main函数作为程序的入口
void main() {
  runApp(
    //使用ChangeNotifierProvider作为顶层，不管在那里都可以访问这个共享数据
      ChangeNotifierProvider(create: (ctx) {
        return GYDataChangerNotifier();
      }, child: MyApp(),)
  );
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GYShowData01(),
                GYShowData02()
              ],
            ),
          ),
          /*
          Consumer({
          Key? key,
          required this.builder,
          Widget? child,
          }) : super(key: key, child: child);

          final Widget Function(
          BuildContext context,
          T value,
          Widget? child,
           ) builder;
           */
          floatingActionButton: Consumer<GYDataChangerNotifier>(
            builder: (ctx, model,child){
              print("floatingActionButton  build方法");
              return FloatingActionButton(
                child: child,
                onPressed: (){
                  //修改共享数据
                  model.counter += 1;
                },
              );
            },
            child: Icon(Icons.add),
          ),
        )
    );
  }
}


class GYShowData01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("GYShowData01   build方法执行");
    //访问共享数据 static T of<T>(BuildContext context, {bool listen = true})
    //int counter = Provider.of<GYDataChangerNotifier>(context).counter;
    return Container(
      color: Colors.blue,
      child: Text("当前计数: ${Provider.of<GYDataChangerNotifier>(context).counter}", style: TextStyle(fontSize: 30),),
    );
  }
}

class GYShowData02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("GYShowData02   build方法执行");
    //访问共享数据 static T of<T>(BuildContext context, {bool listen = true})
    //int counter = Provider.of<GYDataChangerNotifier>(context).counter;
    return Container(
        color: Colors.blue,
        child: Consumer<GYDataChangerNotifier>(
            builder: (ctx, model, child) {
              return Text("当前计数: ${model.counter}", style: TextStyle(fontSize: 30));
            })
    );
  }
}


//1.创建ChangeNotifier 来保存共享数据
//class GYDataChangerNotifier with ChangeNotifier
class GYDataChangerNotifier extends ChangeNotifier {
  int _counter = 100;

  int get counter => _counter;

  set counter(int value) {
    _counter = value;
    //当修改共享数据时，通知监听者
    notifyListeners();
  }
}






