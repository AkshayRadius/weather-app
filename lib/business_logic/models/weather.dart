library weather;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_bloc/business_logic/models/serializers.dart';

part 'weather.g.dart';

// class Weather extends Equatable {
//   final String? cityName;
//   final double? temperature;
//   const Weather({
//     this.cityName,
//     this.temperature,
//   }):super();

//   @override
//   List<Object?> get props => [cityName,temperature];
// }

abstract class WeatherResult
    implements Built<WeatherResult, WeatherResultBuilder> {
  @BuiltValueField(wireName: 'id')
  int? get id;

  @BuiltValueField(wireName: 'cityweather_state_name')
  String? get weatherStateName;

  @BuiltValueField(wireName: 'weather_state_abbr')
  String? get weatherStateAbbr;

  @BuiltValueField(wireName: 'wind_direction_compass')
  String? get windDirectionCompass;

  @BuiltValueField(wireName: 'created')
  String? get created;

  @BuiltValueField(wireName: 'applicable_date')
  String? get applicableDate;

  @BuiltValueField(wireName: 'min_temp')
  double? get minTemp;

  @BuiltValueField(wireName: 'max_temp')
  double? get maxTemp;

  @BuiltValueField(wireName: 'the_temp')
  double? get theTemp;

  @BuiltValueField(wireName: 'wind_speed')
  double? get windSpeed;

  @BuiltValueField(wireName: 'wind_direction')
  double? get windDirection;

  @BuiltValueField(wireName: 'air_pressure')
  double? get airPressure;

  @BuiltValueField(wireName: 'humidity')
  int? get humidity;

  @BuiltValueField(wireName: 'visibility')
  double? get visibility;

  @BuiltValueField(wireName: 'predictability')
  int? get predictability;

  WeatherResult._();
  factory WeatherResult([void Function(WeatherResultBuilder b) updates]) =
      _$WeatherResult;

  String toJson() {
    return jsonEncode(
        serializers.serializeWith(WeatherResult.serializer, this));
  }

  static WeatherResult? fromJson(Map<String, dynamic> jsonString) {
    return serializers.deserializeWith(WeatherResult.serializer, jsonString);
  }

  static Serializer<WeatherResult> get serializer => _$weatherResultSerializer;
}
