import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/router/router_handler.dart';
class Routes {
  static String root = '/';
  static String webView = "/webView";

  static void defineRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          print("ROUTE WAS NOT FOUND !!!");
        });
    router.define(webView, handler: webViewHandler);
  }
}