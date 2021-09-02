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
                //final GestureTapDownCallback? onTapDown
                //typedef GestureTapDownCallback = void Function(TapDownDetails details);
                onTapDown: (details) {
                  print("用户手指按下====相对整个屏幕的位置${details.globalPosition}  相对位置--====${details.localPosition}");
                },
                onTapUp: (details) {
                  print("用户手指抬起====相对整个屏幕的位置${details.globalPosition}  相对位置--====${details.localPosition}");
                },
                onTap: () {
                  print("用户点击事件完成");
                },
                onTapCancel: (){
                  print("事件被取消---");
                },
                onDoubleTap:(){
                  print("手指点击两次事件======");
                } ,
                onLongPress: (){
                  print("手指长按事件------");
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

