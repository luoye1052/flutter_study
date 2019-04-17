import 'package:flutter/material.dart';
import 'package:flutter_study/view/tbar_view.dart';
import 'package:flutter_study/view/homepage_list.dart';
import 'package:flutter_study/router/application.dart';
import 'package:flutter_study/router/routes.dart';
import 'package:fluro/fluro.dart';

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>  {
  _MyAppState() {
    final router = new Router();
    Routes.defineRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      onGenerateRoute: Application.router.generator,
//      routes:{
//        "tip_widgets":(context)=>EchoRoute(),
//        "Padding_example":(context)=>PaddingTestRoute(),
//      } ,
      home: MyTb(listView:new MyListView()),
    );
  }
}

