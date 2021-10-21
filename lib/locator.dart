import 'package:get_it/get_it.dart';
import 'package:weather_bloc/business_logic/bloc/weather_bloc.dart';
import 'package:weather_bloc/business_logic/services/weather_api_service.dart';

GetIt locator = GetIt.instance;

void setLocator() async {
  locator.registerLazySingleton(() =>  WeatherService.create());
}
