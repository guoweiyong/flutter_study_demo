import 'dart:math';

import 'package:flutter/material.dart';

class SliverDemo6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        //头部视图
        SliverAppBar(
          expandedHeight: 300,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Hello World"),
            background: Image.asset(
              "images/test.jpeg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        //网格视图
        SliverGrid(
          //这里和listView的使用是一样
            delegate: SliverChildBuilderDelegate((BuildContext ctx, int int) {
              return Container(
                  color: Color.fromARGB(255, Random().nextInt(256),
                      Random().nextInt(256), Random().nextInt(256)));
            }, childCount: 6),
            // 这里除了SliverGridDelegateWithFixedCrossAxisCount 还有 SliverGridDelegateWithMaxCrossAxisExtent
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            )),
        //水平列表
        SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext ctx, int index) {
              return ListTile(
                title: Text("联系人"),
                subtitle: Text("联系人信息 ${index + 1}"),
                trailing: Icon(Icons.arrow_forward_ios),
              );
            }, childCount: 10))
      ],
    );
  }
}

class SliverDemo5 extends StatelessWidget {
  const SliverDemo5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverSafeArea(
          sliver: SliverGrid(
            //这里和listView的使用是一样
              delegate: SliverChildBuilderDelegate((BuildContext ctx, int int) {
                return Container(
                    color: Color.fromARGB(255, Random().nextInt(256),
                        Random().nextInt(256), Random().nextInt(256)));
              }, childCount: 100),
              // 这里除了SliverGridDelegateWithFixedCrossAxisCount 还有 SliverGridDelegateWithMaxCrossAxisExtent
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              )),
        ),
      ],
    );
  }
}

class SliverDemo4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      slivers: [
        SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate((BuildContext ctx, int index) {
              return ListTile(
                leading: Icon(
                  Icons.people,
                  size: 36,
                ),
                title: Text("联系人"),
                subtitle: Text("联系人信息 ${index + 1}"),
                trailing: Icon(Icons.arrow_forward_ios),
              );
            }),
            itemExtent: 100//设置Item的高度
        )
      ],
    );
  }
}

class SliverDemo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.all(20),
          sliver: SliverGrid(
            //这里和listView的使用是一样
              delegate: SliverChildBuilderDelegate((BuildContext ctx, int int) {
                return Container(
                    color: Color.fromARGB(255, Random().nextInt(256),
                        Random().nextInt(256), Random().nextInt(256)));
              }, childCount: 100),
              // 这里除了SliverGridDelegateWithFixedCrossAxisCount 还有 SliverGridDelegateWithMaxCrossAxisExtent
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              )),
        )
      ],
    );
  }
}

class SliverListDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext ctx, int index) {
              return ListTile(
                leading: Icon(
                  Icons.people,
                  size: 36,
                ),
                title: Text("联系人"),
                subtitle: Text("联系人信息 ${index + 1}"),
                trailing: Icon(Icons.arrow_forward_ios),
              );
            }, childCount: 100))
      ],
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate(
              List.generate(100, (index) {
                return ListTile(
                  leading: Icon(
                    Icons.people,
                    size: 36,
                  ),
                  title: Text("联系人"),
                  subtitle: Text("联系人信息 ${index + 1}"),
                  trailing: Icon(Icons.arrow_forward_ios),
                );
              }),
            ))
      ],
    );
  }
}