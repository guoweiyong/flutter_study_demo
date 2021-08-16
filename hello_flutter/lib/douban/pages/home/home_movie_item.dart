import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hello_flutter/douban/model/movie_item.dart';
import 'package:hello_flutter/douban/widget/start_rating.dart';


class GYHomeMovieItem extends StatelessWidget {
  final GYMovieItem movie;


  const GYHomeMovieItem(this.movie,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 8, color: Color(0xffcccccc))),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeader(),
          SizedBox(height: 8,),
          buildContent(),
          SizedBox(height: 8,),
          buildFoot()
        ]
      ),
    );
  }

  // 1. 头部的布局
  Widget buildHeader() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 238, 205, 144),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        "No.${movie.movied_id}",
        style: TextStyle(fontSize: 18, color: Color.fromRGBO(255, 131, 95, 36)),
      ),
    );
  }

  //2.内容的布局
  Widget buildContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildContentImage(),
        SizedBox(width: 8,),
        buildContentInfo(),
      ],
    );
  }

  //2.1 内容图片
  Widget buildContentImage(){
    return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          movie.movied_img,
          height: 150,
        ));
  }

  //2.2内容信息
  Widget buildContentInfo(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          buildContentInfoTitle(),
          SizedBox(height: 8,),
          buildContentInfoRate(),
        SizedBox(height: 8,),
        buildContentInfoDesc()
      ],
    );
  }

  //2.3 标题
  Widget buildContentInfoTitle(){
    return Text.rich(
      TextSpan(
        children: [
          WidgetSpan(
              child: Icon(Icons.play_circle_outline, color: Colors.pink,size: 30,),
              baseline: TextBaseline.ideographic,
            alignment: PlaceholderAlignment.middle
          ),
          WidgetSpan(child: Text(movie.movied_title_china), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), alignment: PlaceholderAlignment.middle),
          WidgetSpan(child: Text("(${movie.movied_plot.split("/").first})", style: TextStyle(fontSize: 18,color: Colors.grey),))
        ]
      )
    );
  }

  //2.4 平分
  Widget buildContentInfoRate() {
    return Row(
      children: [
        GYStartRating(rating: double.parse(movie.movied_average),ratingSize: 20,),
        SizedBox(width: 8,),
        Text("${movie.movied_average}", style: TextStyle(fontSize: 18, color: Colors.black),)
      ],
    );
  }

  //2.5 描述
  Widget buildContentInfoDesc() {
    //1.字符串的拼接
    final result = movie.movied_plot + "\n" + movie.movied_director;
    return Text(result, maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 16),);
  }

  //3. 尾部的布局
 Widget buildFoot() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: BoxDecoration(
        color: Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        "${movie.movied_quote}",
            style: TextStyle(fontSize: 18,color: Colors.black45),
      ),
    );
 }
}
