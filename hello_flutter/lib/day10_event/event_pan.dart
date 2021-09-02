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
                onPanStart: (DragStartDetails details) {
                  print("手指开始移动=====");
                },
                onHorizontalDragStart: (DragStartDetails details) {
                  print("水平移动========");
                },
                onPanUpdate: (DragUpdateDetails details){
                  print("手指位置更新");
                },
                onHorizontalDragUpdate: (DragUpdateDetails details){
                  print("水平移动更新");
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

