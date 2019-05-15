import 'package:flutter/material.dart';
import 'package:flutter_study/chouti.dart';
import 'package:flutter_study/view/homepage_list.dart';
import 'package:flutter_study/view/PinsPage_list.dart';
import 'package:flutter_study/view/book_page.dart';
import 'package:flutter_study/view/custom_repos_list.dart';
import 'package:flutter_study/view/active_page.dart';

class MyTb extends StatefulWidget {
  MyTb({Key key}) : super(key: key);
  @override
  createState() => new MyTbState();
}


class MyTbState extends State<MyTb> with SingleTickerProviderStateMixin {

  TabController _tabController;
  final List<Tab> _bottomTabs = <Tab>[
    Tab(
      text: '首页',
      icon: Icon(Icons.home),
    ),
    Tab(
      text: '沸点',
      icon: Icon(Icons.chat),
    ),
    Tab(
      text: '小册',
      icon: Icon(Icons.book),
    ),
    Tab(
      text: '开源库',
      icon: Icon(Icons.bubble_chart),
    ),
    Tab(
      text: '活动',
      icon: Icon(Icons.local_activity),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(initialIndex: 0, length: _bottomTabs.length,vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved)
        ],
      ),
//      body: widget.listView,
      drawer: new MyDrawer(), //抽屉
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          MyListView(),
          PinsPage(),
          BookPage(),
          CustomReposList(),
          ActivePage()
        ],
      ),
      bottomNavigationBar: new Material(
        color: Theme.of(context).primaryColor,
        child: TabBar(
          tabs: _bottomTabs,
          controller: _tabController,
          indicatorColor: Colors.white,
        ),
      ),
    );
  }

//  void _onItemTapped(int index) {
//
//  }
//  void _onAdd(){
//
//  }

  void _pushSaved() {
//    Navigator.of(context).push(
//      new MaterialPageRoute(
//        builder: (context) {
//          final tiles = _saved.map(
//                (pair) {
//              return new ListTile(
//                title: new Text(
//                  pair.asPascalCase,
//                  style: _biggerFont,
//                ),
//              );
//            },
//          );
//          final divided = ListTile
//              .divideTiles(
//            context: context,
//            tiles: tiles,
//          )
//              .toList();
//
//          return new Scaffold(
//            appBar: new AppBar(
//              title: new Text('Saved Suggestions'),
//            ),
//            body: new ListView(children: divided),
//          );
//        },
//      ),
//    );
  }
}