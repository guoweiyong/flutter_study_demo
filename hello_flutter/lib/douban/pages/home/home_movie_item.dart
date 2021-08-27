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
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            buildContentInfoTitle(),
            SizedBox(height: 8,),
            buildContentInfoRate(),
          SizedBox(height: 8,),
          buildContentInfoDesc()
        ],
      ),
    );
  }

  //2.3 标题
  Widget buildContentInfoTitle(){
    return Text.rich(
      TextSpan(
        children: [
          WidgetSpan(
              child: Icon(Icons.play_circle_outline, color: Colors.pink,size: 24,),
              baseline: TextBaseline.ideographic,
            alignment: PlaceholderAlignment.middle
          ),
          WidgetSpan(child: Text(movie.movied_title_china), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), alignment: PlaceholderAlignment.middle),
          WidgetSpan(child: Text("(${movie.movied_plot.split("/").first})", style: TextStyle(fontSize: 15,color: Colors.grey),))
        ]
      )
    );
  }

  //2.4 平分
  Widget buildContentInfoRate() {
    //这里直接使用row展示， 当手机屏幕小的小的时候，你设置的start的宽度加上文字宽度，可能超过系统给定的展示宽度，会报错
    // 第一种解决方法：  GYStartRating中size属性设置小一点
    // 第二种解决方法： 使用FittedBox 来包裹row， 这个空间的作用是，当你里面的子控件的宽度超过FittedBox的宽度，FittedBox会压缩里面的内容,然后正常显示
    // FittedBox中含有一个属性fit，这个属性的类型是BoxFit， 和图片一样这个里面有很多属性值

    //第三种方法： 自已写一个适配库，或则是使用第三方的适配库，自己定义一个单位
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
    final result = movie.movied_plot + movie.movied_director;
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
