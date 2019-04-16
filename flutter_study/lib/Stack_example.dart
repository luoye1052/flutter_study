import 'package:flutter/material.dart';
import 'package:flutter_study/view/page_web.dart';

class EchoRoute extends StatelessWidget {
  final String articleUrl;
  final String title;
  EchoRoute(this.articleUrl, this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment:Alignment.center , //指定未定位或部分定位widget的对齐方式
          children: <Widget>[
            PageForWeb(articleUrl, title)
          ],
        ),
      ),
    );
  }
}
