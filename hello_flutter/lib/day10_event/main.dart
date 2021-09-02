

import 'dart:math';

import 'package:flutter/material.dart';//导入对应的库
import 'package:hello_flutter/http/http_dio_tools.dart';
import 'package:provider/provider.dart';

//main函数作为程序的入口
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
              child: Listener(
                onPointerDown: (event) {
                  print("指针按下：event=====${event}");
                },
                onPointerMove: (event) {
                  print("指针移动：event=======$event");
                },
                onPointerUp: (event) {
                  print("指针抬起:event=====$event");
                },
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ),
              ),
            )
        )
    );
  }
}

