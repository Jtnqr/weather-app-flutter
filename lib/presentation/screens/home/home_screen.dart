import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controller/home/home_screen.dart';
import 'package:weather_app/widgets/home/forecast_min.dart';
import 'package:weather_app/widgets/home/weather_max.dart';
import 'package:weather_app/widgets/home/weather_min.dart';

class HomeScreen extends StatelessWidget {
  final HomeScreenController controller = Get.put(HomeScreenController());
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/home/bg_0.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 165),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              "assets/images/home/bg_1.png",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            top: true,
            child: Stack(
              children: [
                Obx(() => controller.isExpanded.value
                    ? const WeatherMax()
                    : const WeatherMin()),
                Expanded(
                  child: NotificationListener<DraggableScrollableNotification>(
                    onNotification: (notification) {
                      controller.setExpanded(notification.extent > 0.75);
                      return false;
                    },
                    child: DraggableScrollableSheet(
                        initialChildSize: 0.4,
                        minChildSize: 0.4,
                        maxChildSize: 0.85,
                        snap: true,
                        snapSizes: const [.4, .85],
                        builder: (context, scrollController) {
                          return ForecastMin(controller: scrollController);
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
