import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/controller/home/home_controller.dart';
import 'package:weather_app/widgets/home/forecast/forecast_widget.dart';

class ForecastMin extends StatelessWidget {
  final ScrollController scrollController;
  final HomeScreenController homeScreenController;

  const ForecastMin({
    required this.scrollController,
    required this.homeScreenController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverOverlapAbsorber(
          handle: SliverOverlapAbsorberHandle(),
          sliver: SliverAppBar(
            centerTitle: true,
            scrolledUnderElevation: 0,
            pinned: true,
            elevation: 0,
            excludeHeaderSemantics: true,
            backgroundColor: Colors.transparent,
            title: Container(
              width: 60,
              height: 5,
              color: Colors.black.withOpacity(.3),
            ),
          ),
        ),
        SliverFillRemaining(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 20.0,
              sigmaY: 20.0,
            ),
            child: Scaffold(
              backgroundColor: Colors.deepPurple.withOpacity(0.25),
              body: Column(
                children: [
                  TabBar(
                    padding: const EdgeInsets.only(top: 20, bottom: 12),
                    controller: homeScreenController.tabController,
                    tabs: homeScreenController.tabs,
                    indicator: UnderlineTabIndicator(
                        insets: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        borderSide: BorderSide(
                          color: Colors.white.withOpacity(0.6),
                          width: 2,
                        )),
                    indicatorColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.grey,
                  ),
                  SizedBox(
                    height: 225,
                    child: TabBarView(
                      controller: homeScreenController.tabController,
                      children: const [
                        ForecastWidget(),
                        ForecastWidget(),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(
                        // height: 300,
                        // child: Text("data"),
                        ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
