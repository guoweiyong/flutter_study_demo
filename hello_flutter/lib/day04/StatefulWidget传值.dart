import 'package:flutter/material.dart';

class GYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GYHomeContentBody("您好");
  }
}
// Widget是不加_: 暴露给别人使用
class GYHomeContentBody extends StatefulWidget {
  final String message;
  GYHomeContentBody(this.message);

  @override
  _GYHomeContentBodyState createState() => _GYHomeContentBodyState();
}
// State是加_: 状态这个类只是给Widget使用
class _GYHomeContentBodyState extends State<GYHomeContentBody> {

  @override
  Widget build(BuildContext context) {
    print("message=======${this.widget.message}");
    return Column();
  }
}
