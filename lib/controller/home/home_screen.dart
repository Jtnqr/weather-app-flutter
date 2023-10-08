import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  var isExpanded = false.obs;

  void setExpanded(bool expanded) {
    isExpanded.value = expanded;
  }
}

class TabControllerManager extends GetxController {
  late TabController tabController;

  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: ScrollableState());
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
