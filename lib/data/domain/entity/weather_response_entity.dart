import 'package:weather_app/data/model/weather/weather_response_model.dart';

class WeatherResponseEntity {
  final double? temperature;
  final String? description;
  final String? location;
  final double? lowTemp;
  final double? highTemp;

  WeatherResponseEntity({
    this.temperature,
    this.description,
    this.location,
    this.lowTemp,
    this.highTemp,
  });

  factory WeatherResponseEntity.fromModel(WeatherResponseModel model) {
    return WeatherResponseEntity(
      temperature: model.main?.temp,
      description: model.weather?.isNotEmpty == true
          ? model.weather![0].description
          : null,
      location: model.name,
      lowTemp: model.main?.tempMin,
      highTemp: model.main?.tempMax,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'temperature': temperature,
      'description': description,
      'location': location,
      'highTemp': highTemp,
      'lowTemp': lowTemp,
    };
  }
}
