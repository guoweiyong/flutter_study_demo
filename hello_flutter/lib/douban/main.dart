import 'package:flutter/material.dart';

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
          body: Container()
        )
    );
  }
}

class GYStartRating extends StatefulWidget {
  const GYStartRating({Key? key}) : super(key: key);

  @override
  _GYStartRatingState createState() => _GYStartRatingState();
}

class _GYStartRatingState extends State<GYStartRating> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Icon(Icons.star_border,size: 30,color: Colors.grey,)
        ],
      ),
    );
  }
}


