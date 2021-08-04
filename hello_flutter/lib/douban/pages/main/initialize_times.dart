import 'package:flutter/material.dart';
import '../home/home.dart';
import '../subject/subject.dart';
import '../group/group.dart';
import '../mall/mall.dart';
import '../profile/profile.dart';
import 'bottom_bar_item.dart';

//初始化item
List<GYBottomBarItem> items = [
  GYBottomBarItem("home", "首页"),
  GYBottomBarItem("subject", "书影音"),
  // GYBottomBarItem("group", "小组"),
  // GYBottomBarItem("mall", "市集"),
  // GYBottomBarItem("profile", "我的"),
];

//初始化所有page
List<Widget> pages = [
  GYHomePage(),
  GYSubjectPage(),
  GYGropuPage(),
  GYMallPage(),
  GYProfilePage()
];