import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/data/model/currentweather/currentweather_response.dart';

class CurrentWeatherRemoteDataSource {
  Future<CurrentWeatherModel> getCurrentWeather() async {
    try {
      const url = 'api.weatherapi.com/v1/current.json';

      final response = await Dio().get(
        url,
        options: Options(
          headers: {
            'key': '423201359150432ba2713212230710',
          },
        ),
      );

      final responseToModel = CurrentWeatherModel.fromJson(response.data);

      return responseToModel;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
