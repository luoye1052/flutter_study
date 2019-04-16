import 'package:flutter/material.dart';
import 'package:flutter_study/view/tbar_view.dart';
import 'package:flutter_study/view/homePageList.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
//      routes:{
//        "tip_widgets":(context)=>EchoRoute(),
//        "Padding_example":(context)=>PaddingTestRoute(),
//      } ,
      home: MyTb(listView:new MyListView()),
    );
  }
}



