import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/controller/home/weather_controller.dart';

class WeatherMin extends StatelessWidget {
  final weatherController = Get.put(WeatherController());

  WeatherMin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0),
      child: Align(
        alignment: const AlignmentDirectional(0.00, -1.00),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
                  weatherController.cityName,
                  style: GoogleFonts.sofiaSans(
                    textStyle: const TextStyle(
                      color: Colors.white70,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      height: 0,
                    ),
                  ),
                )),
            Obx(() => Text(
                  weatherController.temperature,
                  style: GoogleFonts.sofiaSans(
                    textStyle: const TextStyle(
                      color: Colors.white70,
                      fontSize: 95,
                      height: 0,
                    ),
                  ),
                )),
            Obx(() => Text(
                  weatherController.description,
                  style: GoogleFonts.sofiaSans(
                    textStyle: const TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      height: 0,
                    ),
                  ),
                )),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => Text(
                      'H: ${weatherController.highTemp}°C',
                      style: GoogleFonts.sofiaSans(
                        textStyle: const TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    )),
                const SizedBox(width: 10),
                Obx(() => Text(
                      'L: ${weatherController.lowTemp}°C',
                      style: GoogleFonts.sofiaSans(
                        textStyle: const TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
