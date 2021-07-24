import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                  "计数器"
              ),
            ),
            body: GYHomeContent()
        )
    );
  }
}

class GYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GYHomeContentBody();
  }
}
// Widget是不加_: 暴露给别人使用
class GYHomeContentBody extends StatefulWidget {
  const GYHomeContentBody({Key? key}) : super(key: key);

  @override
  _GYHomeContentBodyState createState() => _GYHomeContentBodyState();
}
// State是加_: 状态这个类只是给Widget使用
class _GYHomeContentBodyState extends State<GYHomeContentBody> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  onPressed: () {
                    setState(() {
                      _count++;
                    });
                  },
                  child: Text("加一"),
                  color: Colors.pink),
              RaisedButton(
                  onPressed: () {
                    setState(() {
                      _count--;
                    });
                  },
                  child: Text("减一"),
                  color: Colors.orange)
            ],
          ),
          Text("当前计数: $_count", style: TextStyle(fontSize: 24))
        ],
      ),
    );
  }
}
