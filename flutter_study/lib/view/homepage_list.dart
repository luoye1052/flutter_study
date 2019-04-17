import 'package:flutter/material.dart';
import 'package:flutter_study/view//intextdot.dart';
import 'package:flutter_study/view/good_CommentCell.dart';
import 'dart:async';
import 'package:flutter_study/model/entrylist.dart';
import 'package:flutter_study/tool/net_utils.dart';
import 'package:flutter_study/router/application.dart';
import 'package:flutter_study/constants/constants.dart';

const pageIndexArray = Constants.RANK_BEFORE;

class MyListView extends StatefulWidget {
     @override
     createState() => new MyListViewState();

}

class MyListViewState extends State<MyListView> {
  List _dataList;
  bool _isRefrushing;
  int  _page=0;

  Map<String,dynamic>  _params={'src':'web','limit':10,'category':'all'};
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

            Entrylist u;
            if(_dataList!=null){
              u= _dataList[i];
            }

            return _buildRow(u,i);
          },
        ),
    );
  }

  Widget _buildRow(Entrylist model,int a) {

    return new GestureDetector(
      child: Container(
        margin: EdgeInsets.only(bottom: 5),
        color: Colors.white,
        child: _messageRow(model,a),
      ),
      onTap:(){
//      Navigator.of(context).push(new MaterialPageRoute(builder:
//          (BuildContext context) => new EchoRoute(model.originalUrl,model.title)));
        Application.router.navigateTo(context, "/webView?originalUrl=${Uri.encodeComponent(model.originalUrl)}&title=${Uri.encodeComponent(model.title)}");
      },
    );
  }
  Widget _messageRow(Entrylist model,int a) {
    return Container(
      decoration: new BoxDecoration(
        border: new Border.all(width: 2.0, color: Colors.red),
        color: Colors.grey.shade300,
        borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 8,left: 5),
            child: Row(
              children: <Widget>[
                Text('专栏' ,
                    style:TextStyle(
                        color: Colors.blue,
                        fontSize: 15
                    )
                ),
                InTextDot(),
                Text(model.user.username ,
                    style:TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                    )
                ),
                InTextDot(),
                Text('一个月前' ,
                    style:TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                    )
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 8,left: 5),
            child: Text(model.title ,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 8,left: 5),
            child: GoodAndCommentCell(model.commentsCount,model.collectionCount),
          ),
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
  static Future<List> getIndexListData(Map<String,dynamic> params) async {
    var response =await  NetUtils.get('https://timeline-merger-ms.juejin.im/v1/get_entry_by_rank', params:params);
    var responseList = response['d']['entrylist'];
    List modelList=List();
    for (int i = 0; i < responseList.length; i++) {
      Entrylist u= new Entrylist.fromJson(responseList[i]);
      modelList.add(u);
    }
    return modelList;
  }
  void _getList(bool isFrist){
    if(_isRefrushing){
      return;
    }
    if((!isFrist)&(pageIndexArray.length>_page)){
      _params['before']=pageIndexArray[_page];
      _page++;
      print('${_page}');
    }
    if(isFrist){
      _params['before']=pageIndexArray[0];
    }
    getIndexListData(_params).then((result) {
      setState(() {
        if(isFrist){
          _dataList = result;
        }else{
          _dataList.addAll(result);
          print('${_dataList.length}');
        }
        _isRefrushing=false;
      });
    });
  }

}