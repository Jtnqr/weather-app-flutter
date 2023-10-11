import 'package:flutter/material.dart';

class ForecastMax extends StatelessWidget {
  final ScrollController scrollController;

  const ForecastMax({
    required this.scrollController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverFillRemaining(
          child: Scaffold(
            body: Container(),
          ),
        )
      ],
    );
  }
}
