import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:instagram_kuldii/app/modules/home/widgets/shop.dart';

import '../widgets/home.dart';
import '../widgets/search.dart';
import '../widgets/reels.dart';
import '../widgets/shop.dart';
import '../widgets/profile.dart';

class HomeController extends GetxController {
  RxInt indexWidget = 0.obs;

  void changeIndexBottomNav(int index){
    indexWidget.value = index;
  }

  List<Widget> myWidgets = [
    HomeWidget(),
    SearchWidget(),
    ReelsWidget(),
    ShopWidget(),
    ProfileWidget(),
  ];
}
