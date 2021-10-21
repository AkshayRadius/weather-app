import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_bloc/business_logic/models/serializers.dart';

part 'weather_state_details.g.dart';

abstract class WeatherStateDetails
    implements Built<WeatherStateDetails, WeatherStateDetailsBuilder> {
  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'location_type')
  String get locationType;

  @BuiltValueField(wireName: 'woeid')
  int get woeid;

  @BuiltValueField(wireName: 'latt_long')
  String get latLang;

  WeatherStateDetails._();
  factory WeatherStateDetails(
          [void Function(WeatherStateDetailsBuilder b) updates]) =
      _$WeatherStateDetails;

  String toJson() {
    return json.encode(serializers.serializeWith(WeatherStateDetails.serializer, this));
  }

  static WeatherStateDetails? fromJson(Map<String, dynamic> jsonString) {
    return serializers.deserializeWith(
        WeatherStateDetails.serializer, jsonString);
  }

  static Serializer<WeatherStateDetails> get serializer =>
      _$weatherStateDetailsSerializer;
}
