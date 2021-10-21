import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:weather_bloc/business_logic/bloc/weather_repository.dart';
import 'package:weather_bloc/business_logic/models/weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial());

  final WeatherRepository weatherRepository = WeatherRepository();

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is GetWoeid) {
      yield WeatherLoading();
      // final weather = await _fetchWeatherFromFakeApi(event.cityName);
      await weatherRepository.getWoeid(event.cityName);
    } else if (event is GetWeather) {
      final weather = await weatherRepository.fetchWeather(event.woeid);
      // yield WeatherLoading();
      if (weather != null) {
        yield WeatherLoaded(weather);
      }
    }
  }

  Future<WeatherResult> _fetchWeatherFromFakeApi(String cityName) {
    return Future.delayed(
      const Duration(seconds: 1),
      () {
        final weather = WeatherResult(
          (w) => w
            ..weatherStateName = cityName
            ..theTemp = 30,
        );
        return weather;
      },
    );
  }
}
