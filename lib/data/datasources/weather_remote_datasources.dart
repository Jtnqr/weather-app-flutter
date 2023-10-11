import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/data/model/weather/weather_model.dart';

class WeatherRemoteDataSource {
  Future<WeatherModel> fetchWeatherData() async {
    const String baseUrl = 'https://api.openweathermap.org/data/2.5/weather';
    const String apiKey = '938a75d5cdde616ad496b3164055abda';
    const double lat = 6.2088;
    const double lon = 106.8456;
    const String language = 'id';
    const String units = 'metric';

    final response = await http.get(
      Uri.parse(
        '$baseUrl?lat=$lat&lon=$lon&lang=$language&units=$units&appid=$apiKey',
      ),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return WeatherModel.fromJson(data);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
