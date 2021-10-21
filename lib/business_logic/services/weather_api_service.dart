import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart' as http;
import 'package:weather_bloc/business_logic/bloc/weather_bloc.dart';
import 'package:weather_bloc/business_logic/models/weather.dart';
import 'package:weather_bloc/business_logic/models/weather_state_details.dart';
import 'package:weather_bloc/business_logic/services/built_value_converter.dart';

part 'weather_api_service.chopper.dart';

@ChopperApi()
abstract class WeatherService extends ChopperService {
  static WeatherService create() {
    final client = ChopperClient(
      // client: http.IOClient(
      //   HttpClient()..connectionTimeout = const Duration(seconds: 10),
      // ),
      baseUrl: 'https://www.metaweather.com/api/location/',
      converter: BuiltValueConverter(),
      services: [
        _$WeatherService(),
      ],
      interceptors: [HttpLoggingInterceptor()],
    );
    return _$WeatherService(client);
  }

  @Get(path: 'search/?')
  Future<Response> getWoeid(@Query() String query);

  @Get(path: '{woeid}')
  Future<Response> fetchWeather(@Path('woeid') int woeid);
}
