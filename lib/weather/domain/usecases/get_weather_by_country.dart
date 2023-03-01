import 'package:weather_app/weather/domain/repository/base_weather_repo.dart';

import '../entities/weather.dart';

class GetWeatherByCountryName {
  final BaseWeatherRepository repository;
  GetWeatherByCountryName(this.repository);

  Future<Weather> execute(String cityName) async {
    return await repository.getWeatherByCityName(cityName);
  }
}
