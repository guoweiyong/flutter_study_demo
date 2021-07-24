import 'dart:math';

import 'package:flutter/material.dart';

class GridView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemCount: 100,
          itemBuilder: (BuildContext ctx, int index) {
            return Container(
              color: Color.fromRGBO(Random().nextInt(256), Random().nextInt(256),
                  Random().nextInt(256), 1),
              child: Center(
                  child: Text(
                    "Item:$index",
                    style: TextStyle(fontSize: 24),
                  )),
            );
          }),
    );
  }
}

class GridViewDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,//Item的最大宽度
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          mainAxisExtent: 200 //item最的高度
      ),
      children:List.generate(100, (index) {
        return Container(
          color: Color.fromRGBO(Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), 1),
          child: Center(child: Text("Item:$index",style: TextStyle(fontSize: 24),)),
        );
      }) ,
    );
  }
}

class GridViewDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      children:List.generate(100, (index) {
        return Container(
          color: Color.fromRGBO(Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), 1),
          child: Center(child: Text("Item:$index",style: TextStyle(fontSize: 24),)),
        );
      }) ,
    );
  }
}
