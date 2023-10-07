import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/data/model/forecast/forecast_response.dart';

class ForecastRemoteDataSource {
  Future<ForecastModel> getForecast() async {
    try {
      const url = 'http://api.weatherapi.com/v1/forecast.json';

      final response = await Dio().get(
        url,
        options: Options(
          headers: {
            'key': '423201359150432ba2713212230710',
          },
        ),
      );

      final responseToModel = ForecastModel.fromJson(response.data);

      return responseToModel;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
