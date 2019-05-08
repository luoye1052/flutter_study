import 'package:flutter/material.dart';
import 'package:flutter_study/router/application.dart';
import 'package:flutter_study/tool/data_utils.dart';
import 'package:flutter_study/constants/constants.dart';
import 'package:flutter_study/model/pin_list.dart';
import 'package:flutter_study/view/bottom_cell.dart';

const pageIndexArray = Constants.RANK_BEFORE;

class PinsPage extends StatefulWidget{
    @override
  State<StatefulWidget> createState() => PinsPageState();

}
class PinsPageState extends State<PinsPage>{

  List _dataList;
  bool _isRefrushing;
  int  _page=0;
  Map<String,dynamic>  _params={'src':'web','limit':10};
  ScrollController _scrollController = new ScrollController();


  @override
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
  @override
  Widget build(BuildContext context) {
    return _buildSuggestions();
  }

//  Widget _setView(){
//    return
//  }

  Widget _buildSuggestions() {
    Widget divider1=Divider(color: Colors.blue,);
    Widget divider2=Divider(color: Colors.green);
    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: ListView.separated(
        controller: _scrollController,
        padding: const EdgeInsets.all(5),
        itemCount: _dataList!=null?_dataList.length:0,
        cacheExtent:200,
        separatorBuilder: (BuildContext context, int index) {
          return index%2==0?divider1:divider2;
        },
        itemBuilder: (context, i) {
          PinList model;
          if(_dataList!=null){
            model= _dataList[i];
          }
          return _buildRow(model,i);
        },
      ),
    );
  }

  Widget _buildRow(PinList model,int a) {

    return new GestureDetector(
      child: Container(
        margin: EdgeInsets.only(bottom: 0),
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
  Widget _messageRow(PinList model,int a) {
    return Container(
      decoration: new BoxDecoration(
        border: new Border.all(width: 2.0, color: Colors.grey.shade300),
        color: Colors.white,
        borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
//            height: 50,
            margin: EdgeInsets.only(bottom: 8,left: 5,top: 5),
            child: Row(
              children: <Widget>[
                ClipOval(
                     child: Image(
                       image: NetworkImage(
                           model.user.avatarLarge),
                       width: 40.0,
                     )
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child:Text(model.user.username,
                      style:TextStyle(
                          color: Colors.blue,
                          fontSize: 15
                      )
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      PopupMenuButton(
                        icon: Icon(
                          Icons.more_horiz,
                          color: Theme.of(context).accentColor,
                        ),
                        onSelected: (value) {
                          print(value);
                        },
                        itemBuilder: (BuildContext context) => <PopupMenuItem>[
                          PopupMenuItem(
                            value: '举报',
                            child: Text('举报'),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 8,left: 5,top:5),
            child: Text(model.content ,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
//              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
            ),
          ),
          GestureDetector(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _pictures(model),

            ),
            onTap: (){
              Application.router.navigateTo(context, "/pic?pic=${Uri.encodeComponent(_buildPicsStr(model))}");
            },
          ),
          Container(
            margin: EdgeInsets.only(bottom: 8,left: 5,top: 10),
            child: BottomCell(2, 3),
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
  void _getList(bool isFrist){
    if(_isRefrushing){
      return;
    }
    if((!isFrist)&(pageIndexArray.length>_page)){
//      _params['before']=pageIndexArray[_page];
      _page++;
//      print('${_page}');
    }
    if(isFrist){
//      _params['before']=pageIndexArray[0];
    }
    DataUtils.getPinsListData(_params).then((result) {
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
  String _buildPicsStr(PinList model) {
    String picStr = '';
    model.pictures.forEach((ele) {
      picStr += '$ele,';
    });
    return picStr.substring(0, picStr.length - 1);
  }
}
List _pictures(PinList model){
  List<Widget> l=List();
  model.pictures.forEach((p){
     l.add(Image(
       image: NetworkImage(
           p),
       height: 190.0,
//       width: 120,
     ));

  });
  return l;
}
