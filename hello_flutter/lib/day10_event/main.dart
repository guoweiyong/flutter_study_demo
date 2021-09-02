import 'package:flutter/material.dart';//导入对应的库

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
              child: GestureDetector(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                  //获则设置alignment属性
                  alignment: Alignment.center,
                  child: Container(
                    //如果外层包裹的是一层Contain并且设置了大小，那么当前Contain设置大小没有作用，会直接扩从到跟外层的Contain一样的大小
                    width: 100,
                    height: 100,
                    color: Colors.orange,
                  ),
                ),
              ),
            )
        )
    );
  }
}

