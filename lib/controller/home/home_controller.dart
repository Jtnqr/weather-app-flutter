import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<Tab> tabs = <Tab>[
    Tab(
      child: Text(
        'Hourly Forecast',
        style: GoogleFonts.sofiaSans(
          textStyle: const TextStyle(
            color: Colors.white70,
            fontSize: 16,
            height: 4,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    Tab(
      child: Text(
        'Weekly Forecast',
        style: GoogleFonts.sofiaSans(
          textStyle: const TextStyle(
            color: Colors.white70,
            fontSize: 16,
            height: 4,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  ];

  late TabController tabController;
  var isExpanded = false.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  void setExpanded(bool expanded) {
    isExpanded.value = expanded;
  }
}
