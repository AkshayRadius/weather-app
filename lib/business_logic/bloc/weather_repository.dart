import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:weather_bloc/business_logic/models/weather.dart';
import 'package:weather_bloc/business_logic/models/weather_state_details.dart';
import 'package:weather_bloc/business_logic/services/weather_api_service.dart';

import '../../locator.dart';

class WeatherRepository {
  WeatherService weatherService = locator<WeatherService>();
  Future<int?> getWoeid(String name) async {
    int? woeid;
    List<WeatherStateDetails?> weatherStateDetailsList = [];
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        var response = await weatherService.getWoeid(name);
        // var response = await WeatherService.create().getWoeid();
        if (response.statusCode == 200) {
          List list = response.body;
          weatherStateDetailsList =
              list.map((e) => WeatherStateDetails.fromJson(e)).toList();

          print(weatherStateDetailsList[0]!.title);

          woeid = weatherStateDetailsList[0]!.woeid;
          fetchWeather(woeid);
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return woeid;
  }

  Future<WeatherResult?> fetchWeather(int woeid) async {
    List<WeatherResult?> weatherResult = [];
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        var response = await weatherService.fetchWeather(woeid);
        if (response.statusCode == 200) {
          Iterable weather = response.body['consolidated_weather'];
          weatherResult =
              weather.map((e) => WeatherResult.fromJson(e)).toList();
          // weatherResult = response.;
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return weatherResult[0];
  }
}
