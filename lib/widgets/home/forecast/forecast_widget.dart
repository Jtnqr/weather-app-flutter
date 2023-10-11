import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_icons/weather_icons.dart';

class ForecastWidget extends StatelessWidget {
  const ForecastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 7,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(
            top: 8,
            left: 12,
            bottom: 14,
          ),
          decoration: BoxDecoration(
            color: Colors.deepPurple.withOpacity(.1),
            border: Border.all(
              width: 1.3,
              color: Colors.grey.withOpacity(.3),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                spreadRadius: 2,
                blurRadius: 12,
                offset: const Offset(1, 4),
              )
            ],
            borderRadius: BorderRadius.circular(40),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'number $index',
                  style: GoogleFonts.sofiaSans(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                const BoxedIcon(
                  WeatherIcons.day_sunny_overcast,
                  color: Colors.white,
                  size: 40,
                ),
                Text(
                  '19C',
                  style: GoogleFonts.sofiaSans(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
