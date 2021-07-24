import 'package:flutter/material.dart';

class GYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GYHomeContentBody();
  }
}
// Widget是不加_: 暴露给别人使用
class GYHomeContentBody extends StatefulWidget {
  GYHomeContentBody() {
    print("GYHomeContentBody=======初始化方法");
  }

  @override
  _GYHomeContentBodyState createState() {
    print("GYHomeContentBody=======createState");
    return _GYHomeContentBodyState();
  }
}
// State是加_: 状态这个类只是给Widget使用
class _GYHomeContentBodyState extends State<GYHomeContentBody> {
  _GYHomeContentBodyState() {
    print("_GYHomeContentBodyState======初始化方法");
  }

  @override
  void initState() {
    print("_GYHomeContentBodyState========initState");
    super.initState();
  }

  @override
  void didUpdateWidget(GYHomeContentBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("_GYHomeContentBodyState=========didUpdateWidget");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("HYHomeContentState=========didChangeDependencies方法");
  }


  int _count = 0;

  @override
  Widget build(BuildContext context) {
    print("_GYHomeContentBodyState========build方法");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
              onPressed: () {
                print("点击按钮事件=========");
                setState(() {
                  _count++;
                });
              },
              child: Text("加一"),
              color: Colors.pink),
          Text("当前计数: $_count", style: TextStyle(fontSize: 24))
        ],
      ),
    );
  }
}