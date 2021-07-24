import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                  "Hello Flutter"
              ),
            ),
            body: GYHomeContent()
        )
    );
  }
}

class GYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          GYProductItem("Apple1", "Macbook Product1",
              "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
          GYProductItem("Apple2", "Macbook Product2",
              "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg"),
          GYProductItem("Apple3", "Macbook Product3",
              "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg")
        ],
      ),
    );
  }
}

//定义一个Item
class GYProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageURL;

  //定义一个初始化方法
  GYProductItem(this.title, this.desc, this.imageURL);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all()
      ),
      child: Column(
        children: [
          Text(title, style: TextStyle(fontSize: 24)),
          Text(desc, style: TextStyle(fontSize: 18)),
          Image.network(imageURL)
        ],
      ),
    );
  }
}