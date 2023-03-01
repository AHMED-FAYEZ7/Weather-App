import 'package:weather_app/weather/data/datasource/remote_data_source.dart';
import 'package:weather_app/weather/domain/entities/weather.dart';
import 'package:weather_app/weather/domain/repository/base_weather_repo.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDateSource baseRemoteDateSource;
  WeatherRepository(this.baseRemoteDateSource);

  @override
  Future<Weather> getWeatherByCityName(String countryName) async {
    return (await baseRemoteDateSource.getWeatherByCountryName(countryName))!;
  }
}
