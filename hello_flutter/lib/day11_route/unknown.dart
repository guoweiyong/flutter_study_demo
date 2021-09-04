import 'package:flutter/material.dart';

class GYUnknownPage extends StatelessWidget {
  const GYUnknownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("错误页面"),
      ),
      body: Container(
        child: Center(
          child: Text("页面跳转错误"),
        ),
      ),
    );
  }
}
