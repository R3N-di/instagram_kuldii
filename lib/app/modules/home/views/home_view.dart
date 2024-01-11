import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  // const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx( () => controller.myWidgets.elementAt(controller.indexWidget.value)),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType
            .fixed, // semua item di dalam BottomNavigationBar memiliki lebar yang tetap, Disarankan (3 - 5 item).
        onTap: (value) => controller.changeIndexBottomNav(value),
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.video_library_outlined,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.person_outline_outlined),
              // icon: Image.network(
              //   "https://picsum.photos/536/536",
              //   width: 24.0,
              //   height: 24.0,
              // )
              )
        ],
      ),
    );
  }
}
