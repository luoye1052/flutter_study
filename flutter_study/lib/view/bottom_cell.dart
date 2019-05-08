import 'package:flutter/material.dart';
class BottomCell extends StatelessWidget{
  final int loveCount;
  final int commentCount;

  BottomCell(this.commentCount,this.loveCount);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1.0,
            color: Colors.black26,
          )
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon (
                    Icons.favorite,
                    color:Colors.black26,
                    size:18 ,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 3),
                    child: Text(
                        this.loveCount.toString()
                    ),
                  ),
                ],
              )
          ),
          Container(
            height: 30,
            width: 1.0,
            color:Colors.black26,
          ),
          Expanded(
            child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon (
                Icons.favorite,
                color:Colors.black26,
                size:18 ,
              ),
              Container(
                margin: EdgeInsets.only(left: 3),
                child: Text(
                    this.commentCount.toString()
                ),
              ),
              ],
            )
          ),
        ],
      ),
    );
  }

}