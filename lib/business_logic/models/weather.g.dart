// GENERATED CODE - DO NOT MODIFY BY HAND

part of weather;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherResult> _$weatherResultSerializer =
    new _$WeatherResultSerializer();

class _$WeatherResultSerializer implements StructuredSerializer<WeatherResult> {
  @override
  final Iterable<Type> types = const [WeatherResult, _$WeatherResult];
  @override
  final String wireName = 'WeatherResult';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.weatherStateName;
    if (value != null) {
      result
        ..add('cityweather_state_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.weatherStateAbbr;
    if (value != null) {
      result
        ..add('weather_state_abbr')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.windDirectionCompass;
    if (value != null) {
      result
        ..add('wind_direction_compass')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.created;
    if (value != null) {
      result
        ..add('created')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.applicableDate;
    if (value != null) {
      result
        ..add('applicable_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minTemp;
    if (value != null) {
      result
        ..add('min_temp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.maxTemp;
    if (value != null) {
      result
        ..add('max_temp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.theTemp;
    if (value != null) {
      result
        ..add('the_temp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.windSpeed;
    if (value != null) {
      result
        ..add('wind_speed')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.windDirection;
    if (value != null) {
      result
        ..add('wind_direction')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.airPressure;
    if (value != null) {
      result
        ..add('air_pressure')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.humidity;
    if (value != null) {
      result
        ..add('humidity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.visibility;
    if (value != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.predictability;
    if (value != null) {
      result
        ..add('predictability')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  WeatherResult deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cityweather_state_name':
          result.weatherStateName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'weather_state_abbr':
          result.weatherStateAbbr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'wind_direction_compass':
          result.windDirectionCompass = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'applicable_date':
          result.applicableDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'min_temp':
          result.minTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'max_temp':
          result.maxTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'the_temp':
          result.theTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'wind_speed':
          result.windSpeed = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'wind_direction':
          result.windDirection = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'air_pressure':
          result.airPressure = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'predictability':
          result.predictability = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherResult extends WeatherResult {
  @override
  final int? id;
  @override
  final String? weatherStateName;
  @override
  final String? weatherStateAbbr;
  @override
  final String? windDirectionCompass;
  @override
  final String? created;
  @override
  final String? applicableDate;
  @override
  final double? minTemp;
  @override
  final double? maxTemp;
  @override
  final double? theTemp;
  @override
  final double? windSpeed;
  @override
  final double? windDirection;
  @override
  final double? airPressure;
  @override
  final int? humidity;
  @override
  final double? visibility;
  @override
  final int? predictability;

  factory _$WeatherResult([void Function(WeatherResultBuilder)? updates]) =>
      (new WeatherResultBuilder()..update(updates)).build();

  _$WeatherResult._(
      {this.id,
      this.weatherStateName,
      this.weatherStateAbbr,
      this.windDirectionCompass,
      this.created,
      this.applicableDate,
      this.minTemp,
      this.maxTemp,
      this.theTemp,
      this.windSpeed,
      this.windDirection,
      this.airPressure,
      this.humidity,
      this.visibility,
      this.predictability})
      : super._();

  @override
  WeatherResult rebuild(void Function(WeatherResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherResultBuilder toBuilder() => new WeatherResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherResult &&
        id == other.id &&
        weatherStateName == other.weatherStateName &&
        weatherStateAbbr == other.weatherStateAbbr &&
        windDirectionCompass == other.windDirectionCompass &&
        created == other.created &&
        applicableDate == other.applicableDate &&
        minTemp == other.minTemp &&
        maxTemp == other.maxTemp &&
        theTemp == other.theTemp &&
        windSpeed == other.windSpeed &&
        windDirection == other.windDirection &&
        airPressure == other.airPressure &&
        humidity == other.humidity &&
        visibility == other.visibility &&
        predictability == other.predictability;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(0, id.hashCode),
                                                            weatherStateName
                                                                .hashCode),
                                                        weatherStateAbbr
                                                            .hashCode),
                                                    windDirectionCompass
                                                        .hashCode),
                                                created.hashCode),
                                            applicableDate.hashCode),
                                        minTemp.hashCode),
                                    maxTemp.hashCode),
                                theTemp.hashCode),
                            windSpeed.hashCode),
                        windDirection.hashCode),
                    airPressure.hashCode),
                humidity.hashCode),
            visibility.hashCode),
        predictability.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WeatherResult')
          ..add('id', id)
          ..add('weatherStateName', weatherStateName)
          ..add('weatherStateAbbr', weatherStateAbbr)
          ..add('windDirectionCompass', windDirectionCompass)
          ..add('created', created)
          ..add('applicableDate', applicableDate)
          ..add('minTemp', minTemp)
          ..add('maxTemp', maxTemp)
          ..add('theTemp', theTemp)
          ..add('windSpeed', windSpeed)
          ..add('windDirection', windDirection)
          ..add('airPressure', airPressure)
          ..add('humidity', humidity)
          ..add('visibility', visibility)
          ..add('predictability', predictability))
        .toString();
  }
}

class WeatherResultBuilder
    implements Builder<WeatherResult, WeatherResultBuilder> {
  _$WeatherResult? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _weatherStateName;
  String? get weatherStateName => _$this._weatherStateName;
  set weatherStateName(String? weatherStateName) =>
      _$this._weatherStateName = weatherStateName;

  String? _weatherStateAbbr;
  String? get weatherStateAbbr => _$this._weatherStateAbbr;
  set weatherStateAbbr(String? weatherStateAbbr) =>
      _$this._weatherStateAbbr = weatherStateAbbr;

  String? _windDirectionCompass;
  String? get windDirectionCompass => _$this._windDirectionCompass;
  set windDirectionCompass(String? windDirectionCompass) =>
      _$this._windDirectionCompass = windDirectionCompass;

  String? _created;
  String? get created => _$this._created;
  set created(String? created) => _$this._created = created;

  String? _applicableDate;
  String? get applicableDate => _$this._applicableDate;
  set applicableDate(String? applicableDate) =>
      _$this._applicableDate = applicableDate;

  double? _minTemp;
  double? get minTemp => _$this._minTemp;
  set minTemp(double? minTemp) => _$this._minTemp = minTemp;

  double? _maxTemp;
  double? get maxTemp => _$this._maxTemp;
  set maxTemp(double? maxTemp) => _$this._maxTemp = maxTemp;

  double? _theTemp;
  double? get theTemp => _$this._theTemp;
  set theTemp(double? theTemp) => _$this._theTemp = theTemp;

  double? _windSpeed;
  double? get windSpeed => _$this._windSpeed;
  set windSpeed(double? windSpeed) => _$this._windSpeed = windSpeed;

  double? _windDirection;
  double? get windDirection => _$this._windDirection;
  set windDirection(double? windDirection) =>
      _$this._windDirection = windDirection;

  double? _airPressure;
  double? get airPressure => _$this._airPressure;
  set airPressure(double? airPressure) => _$this._airPressure = airPressure;

  int? _humidity;
  int? get humidity => _$this._humidity;
  set humidity(int? humidity) => _$this._humidity = humidity;

  double? _visibility;
  double? get visibility => _$this._visibility;
  set visibility(double? visibility) => _$this._visibility = visibility;

  int? _predictability;
  int? get predictability => _$this._predictability;
  set predictability(int? predictability) =>
      _$this._predictability = predictability;

  WeatherResultBuilder();

  WeatherResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _weatherStateName = $v.weatherStateName;
      _weatherStateAbbr = $v.weatherStateAbbr;
      _windDirectionCompass = $v.windDirectionCompass;
      _created = $v.created;
      _applicableDate = $v.applicableDate;
      _minTemp = $v.minTemp;
      _maxTemp = $v.maxTemp;
      _theTemp = $v.theTemp;
      _windSpeed = $v.windSpeed;
      _windDirection = $v.windDirection;
      _airPressure = $v.airPressure;
      _humidity = $v.humidity;
      _visibility = $v.visibility;
      _predictability = $v.predictability;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherResult;
  }

  @override
  void update(void Function(WeatherResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WeatherResult build() {
    final _$result = _$v ??
        new _$WeatherResult._(
            id: id,
            weatherStateName: weatherStateName,
            weatherStateAbbr: weatherStateAbbr,
            windDirectionCompass: windDirectionCompass,
            created: created,
            applicableDate: applicableDate,
            minTemp: minTemp,
            maxTemp: maxTemp,
            theTemp: theTemp,
            windSpeed: windSpeed,
            windDirection: windDirection,
            airPressure: airPressure,
            humidity: humidity,
            visibility: visibility,
            predictability: predictability);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
