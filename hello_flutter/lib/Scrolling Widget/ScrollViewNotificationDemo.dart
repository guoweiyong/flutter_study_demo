import 'package:flutter/material.dart';

class ScrollviewNotificationDemo extends StatefulWidget {
  const ScrollviewNotificationDemo({Key? key}) : super(key: key);

  @override
  _ScrollviewNotificationDemoState createState() => _ScrollviewNotificationDemoState();
}

class _ScrollviewNotificationDemoState extends State<ScrollviewNotificationDemo> {
  int _progress = 0;
  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (ScrollNotification notification){
        if (notification is ScrollStartNotification) {
          print("列表开始滑动*****");
        } else if (notification is ScrollUpdateNotification) {
          print("列表正在滑动中------");
          // 当前滚动的位置和总长度
          final currentPixel = notification.metrics.pixels;
          final totalPixel = notification.metrics.maxScrollExtent;
          double progress = currentPixel / totalPixel;
          setState(() {
            _progress = (progress * 100).toInt();
          });
        } else if (notification is ScrollEndNotification) {
          print("列表滑动结束********");
        }
        return true;
      },
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          ListView.builder(
            itemBuilder: (BuildContext ctx, int index) {
              return Text(
                "Item: $index",
                style: TextStyle(fontSize: 24),
              );
            },
            itemCount: 100,
            itemExtent: 50,
          ),
          Positioned(
            right: 30,
            bottom: 30,
            child: CircleAvatar(
              radius: 30,
              child: Text("$_progress%"),
              backgroundColor: Colors.black54,
            ),
          )
        ],
      ),
    );
  }
}