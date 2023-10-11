import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherMin extends StatelessWidget {
  const WeatherMin({super.key});

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
            Text(
              'city_name',
              style: GoogleFonts.sofiaSans(
                textStyle: const TextStyle(
                  color: Colors.white70,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  height: 0,
                ),
              ),
            ),
            Text(
              'temp',
              style: GoogleFonts.sofiaSans(
                textStyle: const TextStyle(
                  color: Colors.white70,
                  fontSize: 95,
                  height: 0,
                ),
              ),
            ),
            Text(
              'description',
              style: GoogleFonts.sofiaSans(
                textStyle: const TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  height: 0,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'H:high_temp°C',
                  style: GoogleFonts.sofiaSans(
                    textStyle: const TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  'L:low_temp°C',
                  style: GoogleFonts.sofiaSans(
                    textStyle: const TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
