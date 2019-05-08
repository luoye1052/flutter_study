import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_study/model/custom_repos.dart';
import 'package:flutter_study/tool/data_utils.dart';
import 'package:flutter_study/router/application.dart';
import 'package:flutter_study/constants/constants.dart';

const pageIndexArray = Constants.RANK_BEFORE;

class CustomReposList extends StatefulWidget {
  @override
  createState() => new CustomReposListState();

}

class CustomReposListState extends State<CustomReposList> {
  List _dataList;
  bool _isRefrushing;
  int  _page=0;

  Map<String,dynamic>  _params={'src':'web','limit':10};
  ScrollController _scrollController = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return  _buildSuggestions();
  }

  void initState() {
    super.initState();
    _isRefrushing=false;
    _getList(true);
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getList(false);
      }
    });
  }
  Widget _buildSuggestions() {
    Widget divider1=Divider(color: Colors.blue,);
    Widget divider2=Divider(color: Colors.green);
    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: ListView.separated(
        controller: _scrollController,
        padding: const EdgeInsets.all(5),
        itemCount: _dataList!=null?_dataList.length:0,
//      itemExtent: 100.0,
        cacheExtent:100,
        separatorBuilder: (BuildContext context, int index) {
          return index%2==0?divider1:divider2;
        },
        itemBuilder: (context, i) {

          CustomRepos u;
          if(_dataList!=null){
            u= _dataList[i];
          }

          return _buildRow(u,i);
        },
      ),
    );
  }

  Widget _buildRow(CustomRepos model,int a) {

    return new GestureDetector(
      child: Container(
        margin: EdgeInsets.only(bottom: 5),
        color: Colors.white,
        child: _messageRow(model,a),
      ),
      onTap:(){
//      Navigator.of(context).push(new MaterialPageRoute(builder:
//          (BuildContext context) => new EchoRoute(model.originalUrl,model.title)));
//        Application.router.navigateTo(context, "/webView?originalUrl=${Uri.encodeComponent(model.originalUrl)}&title=${Uri.encodeComponent(model.title)}");
      },
    );
  }
  Widget _messageRow(CustomRepos model,int a) {
    return Container(
//      decoration: new BoxDecoration(
//        border: new Border.all(width: 2.0, color: Colors.grey.shade300),
//        color: Colors.white,
//        borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
//      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 8,left: 5),
            child: Text('${model.userName}/${model.repoName}',style: TextStyle(fontSize: 18,color: Colors.lightBlue),),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 8,left: 5),
            child: Text(model.description ,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Row(
            children: <Widget>[
              Icon(Icons.fiber_manual_record, color: Colors.yellow,),
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Text(model.language),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Icon(Icons.star, color: Colors.black12,),
              ),
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Text('${model.stars}'),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Icon(Icons.call_split, color: Colors.black12,),
              ),
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Text('${model.fork}'),
              ),
            ],
          )
        ],
      ),
    );
  }
  Future<void> _onRefresh() async {
    _dataList.clear();
    setState(() {
      _dataList = _dataList;
    });
    return null;
  }

  void _getList(bool isFrist){
    if(_isRefrushing){
      return;
    }
    if((!isFrist)&(pageIndexArray.length>_page)){
//      _params['before']=pageIndexArray[_page];
//      _page++;
//      print('${_page}');
    }
//    if(isFrist){
//      _params['before']=pageIndexArray[0];
//    }
    DataUtils.getCustomRepos(_params).then((result) {
      if (this.mounted) {
        setState(() {
          if(isFrist){
            _dataList = result;
          }else{
            _dataList.addAll(result);
            print('${_dataList.length}');
          }
          _isRefrushing=false;
        });
      }
    });
  }

}