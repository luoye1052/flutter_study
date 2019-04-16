import 'package:flutter/material.dart';
import 'package:flutter_study/chouti.dart';

class MyTb extends StatefulWidget {
  MyTb({Key key, this.listView}) : super(key: key);
  final Widget listView;
  @override
  createState() => new MyTbState();
}


class MyTbState extends State<MyTb> {

//  final _sts = <String>["tip_widgets","Padding_example","tip_widgets","Padding_example","tip_widgets","Padding_example","tip_widgets","Padding_example"];
//  final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved)
        ],
      ),
      body: widget.listView,
      drawer: new MyDrawer(), //抽屉
      bottomNavigationBar: BottomNavigationBar( // 底部导航
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('动态')),
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('发现')),
          BottomNavigationBarItem(icon: Icon(Icons.comment), title: Text('小册')),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('我')),
        ],
        currentIndex: 0,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {

  }
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