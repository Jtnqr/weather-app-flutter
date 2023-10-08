import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForecastMin extends StatelessWidget {
  final ScrollController controller;

  const ForecastMin({
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 20.0,
              sigmaY: 20.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple.withOpacity(0.3),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(60.0),
                  topRight: Radius.circular(60.0),
                ),
                border: const Border(
                  top: BorderSide(
                    color: Colors.grey,
                    width: 10.0,
                  ),
                ),
              ),
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 60,
                height: 6,
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
          Positioned.fill(
            child: SingleChildScrollView(
              controller: controller,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Hourly Forecast',
                        style: GoogleFonts.sofiaSans(
                          textStyle: const TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 0,
                          ),
                        ),
                      ),
                      Text(
                        'Weekly Forecast',
                        style: GoogleFonts.sofiaSans(
                          textStyle: const TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.12),
                    thickness: 4,
                    height: 14.0,
                  ),
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            'Item: $index',
                          ),
                        );
                      }),
                  const Row(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
