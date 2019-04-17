import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/view/page_web.dart';

Handler webViewHandler = Handler(
    handlerFunc: (
        BuildContext context, Map<String ,dynamic>params) {
        String articleUrl = params['originalUrl']?.first;
        String title = params['title']?.first;
//        print('${title}');
        return PageForWeb(articleUrl, title);
    }
);