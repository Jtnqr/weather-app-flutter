import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherMax extends StatelessWidget {
  const WeatherMax({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 43.0),
      child: Align(
        alignment: const AlignmentDirectional(0.00, -1.00),
        child: Column(
          children: [
            Text(
              'Bengaluru',
              style: GoogleFonts.sofiaSans(
                textStyle: const TextStyle(
                  color: Colors.white70,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  height: 0,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '32°C',
                  style: GoogleFonts.sofiaSans(
                    textStyle: const TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  '|',
                  style: GoogleFonts.sofiaSans(
                    textStyle: const TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  'Mostly Clear',
                  style: GoogleFonts.sofiaSans(
                    textStyle: const TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      height: 0,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
