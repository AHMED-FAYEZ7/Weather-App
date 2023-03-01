import 'package:dio/dio.dart';
import 'package:weather_app/core/utils/constances.dart';
import 'package:weather_app/weather/data/models/weather_model.dart';

abstract class BaseRemoteDateSource {
  Future<WeatherModel?> getWeatherByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDateSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
    try {
      var response = await Dio().get(
          '${AppConstance.baseUrl}/weather?q=$countryName&appid=${AppConstance.appKey}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
