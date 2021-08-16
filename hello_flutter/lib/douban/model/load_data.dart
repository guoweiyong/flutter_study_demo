import 'dart:convert';
import 'package:flutter/services.dart';
import 'movie_item.dart';

class GYDataHandleTools {

  static Future<List<GYMovieItem>> loadJsonData() async {
    List<GYMovieItem> movieList = <GYMovieItem>[];
    //1.把json文件读取成一个字符串
    String jsonString = await rootBundle.loadString("assets/tempData.json");
    //拿到json字符串我们需要将其转换成,我们可以通过dart:convert包中的json.decode方法将其进行转化
    final jsonResult = json.decode(jsonString);
    //判断jsonresult是否是map类型
    if (jsonResult is Map) {
      var data = jsonResult["data"];
      var subject = data["subject"];

      for (Map<String, dynamic> map in subject) {
        movieList.add(GYMovieItem.forMap(map));
      }
    }
    return movieList;
  }
}