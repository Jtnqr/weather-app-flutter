import 'dart:developer';

import 'package:geolocator/geolocator.dart';
import 'package:weather_app/data/datasource/weather_remote_datasource.dart';
import 'package:weather_app/data/domain/entity/weather_response_entity.dart';
import 'package:weather_app/data/model/weather/weather_response_model.dart';
import 'package:weather_app/data/repository/location_repository.dart';

class WeatherRepository {
  final WeatherRemoteDataSource remoteDataSource;
  final LocationRepository locationRepository;

  WeatherRepository(this.remoteDataSource, this.locationRepository);

  Future<WeatherResponseEntity> getWeather() async {
    try {
      final Position position = await locationRepository.getCurrentLocation();
      final WeatherResponseModel model = await remoteDataSource.getWeather(
        position.longitude,
        position.latitude,
      );

      return WeatherResponseEntity.fromModel(model);
    } on Exception catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
