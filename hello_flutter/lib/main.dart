

import 'package:flutter/material.dart';//导入对应的库
import 'package:hello_flutter/http/http_dio_tools.dart';

//main函数作为程序的入口
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("滑动监听"),
          ),
          body: Container(),
          floatingActionButton: FloatingActionButton(
            child: Text("test"),
            onPressed: (){
              print("按钮点击事件======");
                HttpRequest.request("/get",method: "get",params: {"name":"gwy"}).then((value) {
                  print("请求数据回来=========$value");
                });
            },
          ),
        )
    );
  }



}





