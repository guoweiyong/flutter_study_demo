import 'package:flutter/material.dart';
import 'details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "初始化信息";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("route测试"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text(message),
                ElevatedButton(
                  child: Text("跳转页面详情"),
                  onPressed: () {
                    print("跳转页面详情");
                    _onPushTap(context);
                  },
                ),
              ]
          ),
        ),
      )
    );
  }

  void _onPushTap(BuildContext context) {
    //typedef WidgetBuilder = Widget Function(BuildContext context);
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return GYDeatils();
    }));
  }
}
