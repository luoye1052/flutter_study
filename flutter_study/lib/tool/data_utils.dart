import 'package:flutter_study/tool/net_utils.dart';
import 'package:flutter_study/api/api.dart';
import 'package:flutter_study/model/pin_list.dart';
import 'package:flutter_study/model/entrylist.dart';
import 'package:flutter_study/model/navList.dart';
import 'package:flutter_study/model/page_list.dart';
import 'package:flutter_study/model/custom_repos.dart';

class DataUtils{

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

  static Future<List> getPinsListData(Map<String, dynamic> params) async {
    var response = await NetUtils.get(Api.PINS_LIST, params: params);
    var responseList = response['d']['list'];
    List modelList=List();
    for (int i = 0; i < responseList.length; i++) {
      PinList u= new PinList.fromJson(responseList[i]);
      modelList.add(u);
    }
    return modelList;
  }

  static Future<List> getNavListData() async {
    var response = await NetUtils.get(Api.BOOK_NAV);
    var responseList = response['d'];
    List<NavList> modelList=List();
    for (int i = 0; i < responseList.length; i++) {
      NavList u= new NavList.fromJson(responseList[i]);
      modelList.add(u);
    }
    return modelList;
  }

  static Future<List> getPageListData(Map<String, dynamic> params) async {
    var response = await NetUtils.get(Api.BOOK_LIST, params: params);
    var responseList = response['d'];
    List modelList=List();
    for (int i = 0; i < responseList.length; i++) {
      PageList u= new PageList.fromJson(responseList[i]);
      modelList.add(u);
    }
    return modelList;
  }
  static Future<List> getCustomRepos(Map<String, dynamic> params) async {
    var response = await NetUtils.get(Api.REPOS_LIST, params: params);
    var responseList = response['d']['repoList'];
    List modelList=List();
    for (int i = 0; i < responseList.length; i++) {
      CustomRepos u= new CustomRepos.fromJson(responseList[i]);
      modelList.add(u);
    }
    return modelList;
  }
}
