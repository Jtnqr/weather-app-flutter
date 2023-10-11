import 'package:get/get.dart';
import 'package:weather_app/data/datasource/weather_remote_datasource.dart';
import 'package:weather_app/data/domain/entity/weather_response_entity.dart';
import 'package:weather_app/data/repository/location_repository.dart';
import 'package:weather_app/data/repository/weather_repository.dart';

class WeatherController extends GetxController {
  final WeatherRepository weatherRepository = WeatherRepository(
    WeatherRemoteDataSource(),
    LocationRepository(),
  );

  final weather = WeatherResponseEntity().obs;
  final isLoading = false.obs;
  final hasError = false.obs;

  Future<void> fetchWeather(double lon, double lat) async {
    try {
      isLoading(true);
      final result = await weatherRepository.getWeather();
      weather(result);
      hasError(false);
    } catch (e) {
      hasError(true);
    } finally {
      isLoading(false);
    }
  }

  String get cityName => weather.value.location ?? '';
  String get temperature => weather.value.temperature?.toStringAsFixed(1) ?? '';
  String get description => weather.value.description ?? '';
  String get lowTemp => weather.value.lowTemp?.toStringAsFixed(1) ?? '';
  String get highTemp => weather.value.highTemp?.toStringAsFixed(1) ?? '';
}
