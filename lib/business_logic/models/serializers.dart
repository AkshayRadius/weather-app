import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:weather_bloc/business_logic/models/weather.dart';
import 'package:weather_bloc/business_logic/models/weather_state_details.dart';

part 'serializers.g.dart';

@SerializersFor([
  WeatherResult,
  WeatherStateDetails
])
final Serializers serializers = 
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();