import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/data/model/weather/weather_response_model.dart';

class WeatherRemoteDataSource {
  Future<WeatherResponseModel> getWeather(double lon, double lat) async {
    try {
      const url = "https://api.openweathermap.org/data/2.5/weather?";

      final response = await Dio().get(
        url,
        queryParameters: {
          "lon": lon,
          "lat": lat,
          "units": "metric",
          "lang": "id",
          "appid": "938a75d5cdde616ad496b3164055abda",
        },
      );

      final responseToModel = WeatherResponseModel.fromJson(response.data);

      return responseToModel;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
