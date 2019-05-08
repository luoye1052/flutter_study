import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/view/page_web.dart';
import 'package:flutter_study/view/swiper_image.dart';

Handler webViewHandler = Handler(
    handlerFunc: (
        BuildContext context, Map<String ,dynamic>params) {
        String articleUrl = params['originalUrl']?.first;
        String title = params['title']?.first;
//        print('${title}');
        return PageForWeb(articleUrl, title);
    }
);
Handler PicViewHandlerHandler = Handler(
    handlerFunc: (
        BuildContext context, Map<String ,dynamic>params) {
      String pic = params['pic']?.first;
//        print('${title}');
      return SwipPage(pics: pic,currentIndex: '0');
    }
);
