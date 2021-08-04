import 'package:flutter/material.dart';

class GYBottomBarItem extends BottomNavigationBarItem {
    GYBottomBarItem(String iconName, String title) 
        : super(
        label: title,
        icon: Image.asset("images/tabbar/$iconName.png", width: 32,),
        activeIcon: Image.asset("images/tabbar/${iconName}_active.png" ,width: 32,)
    );
}