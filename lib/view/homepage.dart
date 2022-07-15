import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newapp_/controller/homepage_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomePageController controller = Get.put(HomePageController());
    return GetBuilder<HomePageController>(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("App News"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_rounded,
                ))
          ],
        ),
        body: controller.listScreens[controller.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentIndex,
          onTap: (index) {
            controller.changeBottomNavBar(index);
          },
          items: controller.bottomItems,
        ),
      );
    });
  }
}
