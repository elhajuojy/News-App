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
