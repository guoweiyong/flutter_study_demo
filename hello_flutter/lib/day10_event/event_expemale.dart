import 'package:flutter/material.dart';//导入对应的库
class GYConten extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTapDown: (details){
        print("外层Contain手势点击事件=======");
      },
      child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
          //获则设置alignment属性
          alignment: Alignment.center,
          child: IgnorePointer(
            child: GestureDetector(
              onTapDown: (details) {
                print("里层Contain手势点击事件--------");
              },
              child: Container(
                //如果外层包裹的是一层Contain并且设置了大小，那么当前Contain设置大小没有作用，会直接扩从到跟外层的Contain一样的大小
                width: 100,
                height: 100,
                color: Colors.orange,
              ),
            ),
          )
      ),
    );
  }
}

class GYContentTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.orange,
            )
          ]),
    );
  }
}
