import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:newapp_/controller/news_screen_controller.dart';
import 'package:newapp_/model/article.dart';
import 'package:newapp_/view/widget/custom_list_title.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NewsController controller = Get.put(NewsController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "News App",
          // style: TextStyle(color: Colors.red),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.search,
              size: 35,
              color: Colors.black,
            ),
          )
        ],
        centerTitle: true,
      ),
      body: Container(
        // padding: const EdgeInsets.all(10),
        child: FutureBuilder(
            future: controller.getArticles(),
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
