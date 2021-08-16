import 'package:flutter/material.dart';
import 'package:hello_flutter/douban/model/load_data.dart';
import 'package:hello_flutter/douban/model/movie_item.dart';
import 'package:hello_flutter/douban/pages/home/home_movie_item.dart';
class GYHomeContent extends StatefulWidget {
  const GYHomeContent({Key? key}) : super(key: key);

  @override
  _GYHomeContentState createState() => _GYHomeContentState();
}

class _GYHomeContentState extends State<GYHomeContent> {
  final List<GYMovieItem> movies = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //模拟网络加载
    GYDataHandleTools.loadJsonData().then((value) {
      setState(() {
        movies.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return GYHomeMovieItem(movies[index]);
        });
  }
}
