import 'package:flutter/material.dart';

class GYDeatilsPage extends StatelessWidget {

  static const String routeName = "/detailes";

  final String message;
  GYDeatilsPage(this.message);
  @override
  Widget build(BuildContext context) {
    //1.第二种方法： 监听导航栏左上角返回按
    return WillPopScope(
      //final WillPopCallback? onWillPop
      //typedef WillPopCallback = Future<bool> Function()
      //该函数有一个返回值 Future<Bool>
      // 当返回true时，系统会自动返回（flutter帮助我们执行返回操作）
      // 当返回flase时， 需要我们自己手动来执行返回
      onWillPop: () {
        _onBackpop(context);
        return Future.value(false);
      },
      child: Scaffold(
            appBar: AppBar(
              title: Text("route测试"),
              //第一种方法： 自定义详情页面导航栏上的返回图标，如果不自己定义，系统会自动设置
              //leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: () => _onBackpop(context),),
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
                            _onBackpop(context);
                        },
                      ),
                    ]
                ),
            ),
          ),
    );

  }
  
  void _onBackpop(BuildContext buildContext) {
    Navigator.of(buildContext).pop("return detailes message");
  }

}
