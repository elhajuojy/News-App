import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:newapp_/model/article.dart';

class NewsController extends GetxController {
  Future<List<Article>> getArticles() async {
    var url = Uri.parse(
        'https://newsapi.org/v2/everything?q=apple&from=2022-06-15&sortBy=publishedAt&apiKey=9ff4fdd6066649d1bba339f2b449fb29');
    http.Response res = await http.get(url);
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];

      List<Article> articles =
          body.map((item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}
