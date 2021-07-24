import 'package:flutter/material.dart';

class ListViewDemo5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
        itemBuilder: (BuildContext ctx, int index) {
          return Text(
            "Hello World: $index",
            style: TextStyle(fontSize: 20),
          );
        },
        separatorBuilder: (BuildContext ctx, int index){
          return Divider(
              color: Colors.red,
              height: 50, //设置分割线区域高度
              thickness: 10,//设置分割线的高度
              indent: 15, //设置分割线开始的距离
              endIndent: 15//设置分割线结束的距离,
          );
        },
        itemCount: 100
    );
  }
}

class ListViewDemo4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: 100,
        itemExtent: 50,
        itemBuilder: (BuildContext ctx, int index) {
          return Text(
            "Hello World: $index",
            style: TextStyle(fontSize: 20),
          );
        });
  }
}

class ListViewDemo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
        scrollDirection: Axis.horizontal,
        // 100 : 表示需要创建Item的个数， index： Item的下标
        children: List.generate(100, (index) {
          return ListTile(
            leading: Icon(
              Icons.people,
              size: 36,
            ),
            title: Text("联系人"),
            // subtitle: Text("联系人信息 ${index + 1}"),
            // trailing: Icon(Icons.arrow_forward_ios),
          );
        }));
  }
}

class ListViewDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
        children: [
          ListTile(
            leading: Icon(Icons.people, size: 36,),
            title: Text("联系人"),
            subtitle: Text("联系人信息"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.email, size: 36,),
            title: Text("邮箱"),
            subtitle: Text("邮箱地址信息"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.message, size: 36,),
            title: Text("消息"),
            subtitle: Text("消息详情信息"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.map, size: 36,),
            title: Text("地址"),
            subtitle: Text("地址详情信息"),
            trailing: Icon(Icons.arrow_forward_ios),
          )
        ]
    );
  }
}

class ListViewDemo1 extends StatelessWidget {
  final TextStyle textStyle = TextStyle(fontSize: 20, color: Colors.redAccent);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text("人的一切痛苦，本质上都是对自己无能的愤怒。", style: textStyle),
            color: Colors.orange,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text("人活在世界上，不可以有偏差；而且多少要费点劲儿，才能把自己保持到理性的轨道上。",
                style: textStyle),
            color: Colors.green,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text("我活在世上，无非想要明白些道理，遇见些有趣的事。", style: textStyle),
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}

