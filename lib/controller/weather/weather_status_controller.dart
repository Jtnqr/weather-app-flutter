import 'package:get/get.dart';
import 'package:weather_app/data/model/weather/weather_response_model.dart';

class WeatherController extends GetxController {
  final WeatherResponseModel _weatherModel;

  WeatherController(this._weatherModel);

  final RxDouble temperature = RxDouble(0.0);
  final RxDouble temperatureMin = RxDouble(0.0);
  final RxDouble temperatureMax = RxDouble(0.0);
  final RxString description = RxString("");

  @override
  void onInit() {
    temperature.value = _weatherModel.main?.temp ?? 0.0;
    temperatureMin.value = _weatherModel.main?.tempMin ?? 0.0;
    temperatureMax.value = _weatherModel.main?.tempMax ?? 0.0;

    if (_weatherModel.weather != null && _weatherModel.weather!.isNotEmpty) {
      description.value = _weatherModel.weather![0].description ?? "";
    }

    super.onInit();
  }
}
