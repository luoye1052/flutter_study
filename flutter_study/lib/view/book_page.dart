import 'package:flutter/material.dart';
import 'package:flutter_study/model/navList.dart';
import 'package:flutter_study/tool/data_utils.dart';
import 'package:flutter_study/view/book_list.dart';
//class bookPage extends StatefulWidget{
//  @override
//  createrBookPage()=>MyBookPage();
//}
//class MyBookPage extends State<bookPage>{
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return ;
//  }
//}
class BookPage extends StatefulWidget {
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage>
    with SingleTickerProviderStateMixin  {
  List<NavList> _navData = new List();
  List<Tab> _myTabs = <Tab>[
    Tab(
      text: '全部',
    )
  ];
  List<BookList> _myTabView = <BookList>[
//    MyApp(),
    BookList(),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    getNavList();
  }

  getNavList() {
    DataUtils.getNavListData().then((resultData) {
      resultData.forEach((model) {
        _myTabs.add(Tab(
          text: model.name,
        ));
        _myTabView.add(BookList());
      });
      if (this.mounted) {
        setState(() {
          _navData = resultData;
        });
        _tabController =
        new TabController(vsync: this, length: _navData.length + 1);
      }
    });
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_navData.length == 0) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        title: new TabBar(
          controller: _tabController,
          tabs: _myTabs,
          indicatorColor: Colors.white,
          isScrollable: true,
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: _myTabView,
      ),
    );
  }
}