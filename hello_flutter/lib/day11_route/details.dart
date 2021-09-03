import 'package:flutter/material.dart';

class GYDeatils extends StatefulWidget {
  const GYDeatils({Key? key}) : super(key: key);

  @override
  _GYDeatilsState createState() => _GYDeatilsState();
}

class _GYDeatilsState extends State<GYDeatils> {
  String message = "详情初始化信息";
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
                      child: Text("返回首页"),
                      onPressed: () {
                        print("返回首页");

                      },
                    ),
                  ]
              ),
          ),
        )
    );
  }
}
