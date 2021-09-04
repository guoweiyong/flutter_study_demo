import 'package:flutter/material.dart';
import 'package:hello_flutter/day11_route/about.dart';
import 'package:hello_flutter/day11_route/unknown.dart';
import 'details.dart';
import 'initlize_route.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      //home: GYHomePage(),
      initialRoute: GYRouter.initialRoute,
      routes: GYRouter.routes,
      onGenerateRoute: GYRouter.generateRoute,
      onUnknownRoute: GYRouter.unknownRoute,
    );
  }
}
class GYHomePage extends StatefulWidget {
  static const String routeName = "/home";

  const GYHomePage({Key? key}) : super(key: key);

  @override
  _GYHomePageState createState() => _GYHomePageState();
}
class _GYHomePageState extends State<GYHomePage> {
  String message = "初始化信息";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("route测试"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text(message),
                //跳转详情
                ElevatedButton(
                  child: Text("跳转页面详情"),
                  onPressed: () {
                    print("跳转页面详情");
                    _onPushTap(context);
                  },
                ),
                // 跳转about页面
                ElevatedButton(onPressed: () => _onPushAboutPage(context), child: Text("跳转about")),
                ElevatedButton(onPressed: () => _onPushDetailesPage(context), child: Text("路由钩子测试")),
                ElevatedButton(onPressed: () => _onPushUnknownPage(context), child: Text("打开位置页面"))
              ]
          ),
        ),
      );
  }
  //跳转详情页面
  void _onPushTap(BuildContext context) {
    //typedef WidgetBuilder = Widget Function(BuildContext context);
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return GYDeatilsPage("a home message");
    })).then((value) {
      setState(() {
        message = value;
      });
    });
  }

  // 跳转about页面， 使用路由名称的方式
  void _onPushAboutPage(BuildContext context) {
    Navigator.of(context).pushNamed(GYAbout.routeName, arguments: "home about message");
  }

  // 使用路由名称 实现已有构造方法的跳转
  void _onPushDetailesPage(BuildContext context) {
    //跳转详情页面
    Navigator.of(context).pushNamed(GYDeatilsPage.routeName, arguments: "home-路由钩子");
  }

  void _onPushUnknownPage(BuildContext context) {
    Navigator.of(context).pushNamed("/abcmmmmm");
  }
}
