part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();
}

class GetWoeid extends WeatherEvent {
  final String cityName;
  const GetWoeid(this.cityName);

  @override
  List<Object?> get props => [cityName];
}

class GetWeather extends WeatherEvent {
  final int woeid;

  const GetWeather(this.woeid);

  @override
  List<Object?> get props => [woeid];
}
