import 'package:flutter/material.dart';
import 'package:flutter_study/model/cityList.dart';
import 'package:flutter_study/tool/data_utils.dart';
import 'package:flutter_study/view/book_list.dart';
import 'package:flutter_study/view/active_list.dart';

class ActivePage extends StatefulWidget {
  _ActivePageState createState() => _ActivePageState();
}

class _ActivePageState extends State<ActivePage>
    with SingleTickerProviderStateMixin  {
  List<CityList> _navData = new List();
  Map<String,dynamic>  _params={'src':'web','limit':20};
  List<Tab> _myTabs = <Tab>[
    Tab(
      text: '全部',
    )
  ];
  List<ActiveList> _myTabView = <ActiveList>[
//    MyApp(),
    ActiveList(''),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    getCityList();
  }

  getCityList() {
    DataUtils.getCityListData(_params).then((resultData) {
      resultData.forEach((model) {
        _myTabs.add(Tab(
          text: model.cityName,

        ));
        _myTabView.add(ActiveList(model.cityName));
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