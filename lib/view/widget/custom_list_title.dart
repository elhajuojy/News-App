import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:newapp_/controller/news_screen_controller.dart';
import 'package:newapp_/core/helper.dart';
import 'package:newapp_/model/article.dart';

class CustomListTile extends StatelessWidget {
  Article article;
  CustomListTile({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NewsController controller = Get.put(NewsController());
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
      child: InkWell(
        onTap: () {
          //TODO when the user click on the card he need to visit the article site
          // article.url;
        },
        child: Card(
          elevation: 0.5,
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Column(
              children: [
                Text(
                  article.title.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Image.network(
                  article.urlToImage.toString(),
                  scale: 1,
                  errorBuilder: (context, exception, stackTrace) {
                    return Image.network(
                      Helpers.randomPictureUrl(),
                      fit: BoxFit.fill,
                    );
                  },
                ),
                const SizedBox(height: 10),
                Text(article.description.toString()),
                const SizedBox(height: 10),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.favorite_border_outlined)),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.comment_outlined,
                      // color: Colors.red,
                    ),
                    Expanded(
                        child: Text(
                      // article.publishedAt.toString(),
                      controller.dateformate(article.publishedAt.toString()),
                      textAlign: TextAlign.right,
                    ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
