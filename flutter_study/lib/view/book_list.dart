import 'package:flutter/material.dart'; 
import 'package:flutter_study/router/application.dart';
import 'package:flutter_study/model/page_list.dart';
import 'package:flutter_study/tool/data_utils.dart';
import 'package:flutter_study/Stack_example.dart';

class BookList extends StatefulWidget{
  _BookListState createState() => _BookListState();
}
class _BookListState extends State<BookList>{
  ScrollController _scrollController = new ScrollController();
  List _dataList;
  Map<String,dynamic>  _params={'alias':'frontend','pageNum':2};
  @override
  Widget build(BuildContext context) {
    return _buildSuggestions();
   }
  @override
  void initState() {
    super.initState();
    _getList();
  }

  Future<void> _onRefresh() async {
    _getList();
    return null;
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

          PageList u;
          if(_dataList!=null){
            u= _dataList[i];
          }
          return _buildRow(u,i);
        },
      ),
    );
  }

  Widget _buildRow(PageList model,int a) {
    return new GestureDetector(
      child: Container(
        margin: EdgeInsets.only(bottom: 5),
        color: Colors.white,
        child: _messageRow(model,a),
      ),
      onTap:(){
      Navigator.of(context).push(new MaterialPageRoute(builder:
          (BuildContext context) => new EchoRoute("https://juejin.im/book/${model.id}",model.title)));
        Application.router.navigateTo(context, "/webView?originalUrl=${Uri.encodeComponent("https://juejin.im/book/${model.id}")}&title=${Uri.encodeComponent(model.title)}");
      },
    );
  }
  Widget _messageRow(PageList model,int a) {
    return Container(
      child: Row(
        crossAxisAlignment:CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.network('https://user-gold-cdn.xitu.io/2017/11/20/15fd699517c3c6a4?w=650&h=910&f=png&s=200522',
            width: 100,
            height: 150,
          ),
          Container(
//            padding: EdgeInsets.only(left: 20),
            width: 200,
            child:Padding(
                padding: EdgeInsets.all(5),
                child:Column(
//                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(model.title,style:TextStyle(fontSize: 18)),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(model.userData['username'],style:TextStyle(fontSize: 15)),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text('${model.section.length.toString()}小节•${model.buyCount.toString()}人已购买',style:TextStyle(fontSize: 15,color: Colors.black12)),
                    ),
                  ],
                ),
            ),
          ),
          FlatButton(
            color: Colors.black12,
            highlightColor: Colors.black12,
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            child: Text('￥${model.price.toString()}',style: TextStyle(color: Colors.lightBlue),),
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            onPressed: () => {},
          )
        ],
      ),
    );
  }
  void _getList(){
    DataUtils.getPageListData(_params).then((result) {
      if (this.mounted) {
        setState(() {
          _dataList = result;
        });
      }
  });
}
}