import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:newapp_/controller/news_screen_controller.dart';
import 'package:newapp_/model/article.dart';

import '../../controller/homepage_controller.dart';
import '../widget/custom_list_title.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // HomePageController controller = Get.put(HomePageController());
    NewsController controller = Get.put(NewsController());
    return Scaffold(
      body: Container(
        // padding: const EdgeInsets.all(10),
        child: FutureBuilder(
            future: controller.getArticles("Business"),
            builder:
                (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
              if (snapshot.hasData) {
                List<Article>? articles = snapshot.data;
                return ListView.builder(
                    itemCount: articles!.length,
                    itemBuilder: (context, index) {
                      return CustomListTile(
                        article: articles[index],
                      );
                    });
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return const Center(child: Text("No data "));
              }
            }),
      ),
    );
  }
}
