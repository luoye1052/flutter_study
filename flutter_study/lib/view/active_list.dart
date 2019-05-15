import 'package:flutter/material.dart';
import 'package:flutter_study/model/event_list.dart';
import 'package:flutter_study/tool/data_utils.dart';

class ActiveList extends StatefulWidget{
  final String city;
  ActiveList(this.city);
  _ActiveListState createState() => _ActiveListState();
}
class _ActiveListState extends State<ActiveList>{
  ScrollController _scrollController = new ScrollController();
  List _dataList;
  Map<String,dynamic>  _params;
  @override
  Widget build(BuildContext context) {

    return _buildSuggestions();
  }
  @override
  void initState() {
    super.initState();
    _params={'src':'web','city':widget.city};
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

          EvenList u;
          if(_dataList!=null){
            u= _dataList[i];
          }
          return _buildRow(u,i);
        },
      ),
    );
  }

  Widget _buildRow(EvenList model,int a) {
    return new GestureDetector(
      child: Container(
        margin: EdgeInsets.only(bottom: 5),
        color: Colors.white,
        child: _messageRow(model,a),
      ),
      onTap:(){
//        Navigator.of(context).push(new MaterialPageRoute(builder:
//            (BuildContext context) => new EchoRoute("https://juejin.im/book/${model.id}",model.title)));
//        Application.router.navigateTo(context, "/webView?originalUrl=${Uri.encodeComponent("https://juejin.im/book/${model.id}")}&title=${Uri.encodeComponent(model.title)}");
      },
    );
  }
  Widget _messageRow(EvenList model,int a) {
    return Container(
      height: 360,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 0,right: 0,top: 0,bottom: 0),
            child: Image.network(
              model.screenshot,
//              height: 250,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10,top: 20),
            child: Text('${model.title}',style:TextStyle(fontSize: 18) ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Column(
//                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10,top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                          Icons.web_asset,
                          size: 12.5,
                          color: Theme.of(context).accentColor,
                        ),
                          Text('5-18 周四'),
                        ],
                    ),
                   ),
                    Container(
                      margin: EdgeInsets.only(left: 10,top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 12.5,
                            color: Theme.of(context).accentColor,
                          ),
                          Text('${model.city}',textAlign: TextAlign.left),
                        ],
                      ),
                    ),

                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 200,top: 20),
                  child: FlatButton(
                    color: Colors.blue,
                    highlightColor: Colors.blue,
                    colorBrightness: Brightness.dark,
                    splashColor: Colors.blue,
                    child: Text('报名参加',style: TextStyle(color: Colors.white),),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    onPressed: () => {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
//      Row(
//        crossAxisAlignment:CrossAxisAlignment.center,
//        mainAxisAlignment: MainAxisAlignment.start,
//        children: <Widget>[
//
//          Container(
////            padding: EdgeInsets.only(left: 20),
//            width: 200,
//            child:Padding(
//              padding: EdgeInsets.all(5),
//              child:Column(
////                  mainAxisAlignment: MainAxisAlignment.start,
//                crossAxisAlignment:CrossAxisAlignment.start,
//                mainAxisSize: MainAxisSize.max,
//                children: <Widget>[
//                  Container(
//                    padding: EdgeInsets.only(top: 5),
//                    child: Text(model.title,style:TextStyle(fontSize: 18)),
//                  ),
//                  Container(
//                    padding: EdgeInsets.only(top: 5),
//                    child: Text(model.userData['username'],style:TextStyle(fontSize: 15)),
//                  ),
//                  Container(
//                    padding: EdgeInsets.only(top: 5),
//                    child: Text('${model.section.length.toString()}小节•${model.buyCount.toString()}人已购买',style:TextStyle(fontSize: 15,color: Colors.black12)),
//                  ),
//                ],
//              ),
//            ),
//          ),
//          FlatButton(
//            color: Colors.black12,
//            highlightColor: Colors.black12,
//            colorBrightness: Brightness.dark,
//            splashColor: Colors.grey,
//            child: Text('￥${model.price.toString()}',style: TextStyle(color: Colors.lightBlue),),
//            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
//            onPressed: () => {},
//          )
//        ],
//      ),
//    );
//  }
  void _getList(){
    DataUtils.getEvenListData(_params).then((result) {
      if (this.mounted) {
        setState(() {
          _dataList = result;
        });
      }
    });
  }
}