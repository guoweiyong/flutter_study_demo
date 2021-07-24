import 'package:flutter/material.dart';

class ScrollViewListenDemo extends StatefulWidget {
  const ScrollViewListenDemo({Key? key}) : super(key: key);

  @override
  _ScrollViewListenDemoState createState() => _ScrollViewListenDemoState();
}

class _ScrollViewListenDemoState extends State<ScrollViewListenDemo> {
  //滑动的控制器
  ScrollController _scrollController = ScrollController();
  //是否显示按钮 ，便宜量大于1000时才显示按钮
  bool isShowFolatButton = false;

  @override
  void initState() {
    // TODO: implement initState
    //监听滑动
    _scrollController.addListener(() {
      print("List 在滑动-----${_scrollController.offset}");
      setState(() {
        isShowFolatButton = _scrollController.offset >= 1000 ;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("滑动监听"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext ctx, int index) {
          return Text(
            "Item: $index",
            style: TextStyle(fontSize: 24),
          );
        },
        itemCount: 100,
        itemExtent: 50,
        controller: _scrollController,
      ),
      floatingActionButton: isShowFolatButton ? FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: (){
          setState(() {
            //回到顶端
            _scrollController.animateTo(0, duration: Duration(seconds: 1), curve: Curves.easeIn);
          });
        },
      ) : null,
    );
  }
}
