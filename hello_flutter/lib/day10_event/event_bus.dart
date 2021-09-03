import 'package:flutter/material.dart';//导入对应的库
import 'package:event_bus/event_bus.dart';

//main函数作为程序的入口
void main() {
  runApp(MyApp());
}

// 1.创建一个事件对象
class UserInfoEvent {
  String name;
  String level;

  UserInfoEvent(this.name, this.level);
}

//2.创建一个全局的eventBus对象
final eventBus = EventBus();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  GYButton(),
                  GYText()
                ],
              ),
            )));
  }
}

class GYButton extends StatelessWidget {
  const GYButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text("发出事件"),
        onPressed: (){
          print("按钮点击事件------");
          //3. 发出消息
          final userInfo = UserInfoEvent("zhangsan", "事件传递");
          eventBus.fire(userInfo);
        },
      ),
    );
  }
}

class GYText extends StatefulWidget {
  const GYText({Key? key}) : super(key: key);

  @override
  _GYTextState createState() => _GYTextState();
}

class _GYTextState extends State<GYText> {
  String message = "初始化信息";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //监听事件，收取消息
    eventBus.on<UserInfoEvent>().listen((event) {
      setState(() {
        message = "${event.name}-${event.level}";
      });
    });
  }
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Text(message),
    );
  }
}



