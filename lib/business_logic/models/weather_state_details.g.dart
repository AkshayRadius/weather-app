// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_state_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherStateDetails> _$weatherStateDetailsSerializer =
    new _$WeatherStateDetailsSerializer();

class _$WeatherStateDetailsSerializer
    implements StructuredSerializer<WeatherStateDetails> {
  @override
  final Iterable<Type> types = const [
    WeatherStateDetails,
    _$WeatherStateDetails
  ];
  @override
  final String wireName = 'WeatherStateDetails';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WeatherStateDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'location_type',
      serializers.serialize(object.locationType,
          specifiedType: const FullType(String)),
      'woeid',
      serializers.serialize(object.woeid, specifiedType: const FullType(int)),
      'latt_long',
      serializers.serialize(object.latLang,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  WeatherStateDetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherStateDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location_type':
          result.locationType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'woeid':
          result.woeid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'latt_long':
          result.latLang = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherStateDetails extends WeatherStateDetails {
  @override
  final String title;
  @override
  final String locationType;
  @override
  final int woeid;
  @override
  final String latLang;

  factory _$WeatherStateDetails(
          [void Function(WeatherStateDetailsBuilder)? updates]) =>
      (new WeatherStateDetailsBuilder()..update(updates)).build();

  _$WeatherStateDetails._(
      {required this.title,
      required this.locationType,
      required this.woeid,
      required this.latLang})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, 'WeatherStateDetails', 'title');
    BuiltValueNullFieldError.checkNotNull(
        locationType, 'WeatherStateDetails', 'locationType');
    BuiltValueNullFieldError.checkNotNull(
        woeid, 'WeatherStateDetails', 'woeid');
    BuiltValueNullFieldError.checkNotNull(
        latLang, 'WeatherStateDetails', 'latLang');
  }

  @override
  WeatherStateDetails rebuild(
          void Function(WeatherStateDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherStateDetailsBuilder toBuilder() =>
      new WeatherStateDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherStateDetails &&
        title == other.title &&
        locationType == other.locationType &&
        woeid == other.woeid &&
        latLang == other.latLang;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), locationType.hashCode), woeid.hashCode),
        latLang.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WeatherStateDetails')
          ..add('title', title)
          ..add('locationType', locationType)
          ..add('woeid', woeid)
          ..add('latLang', latLang))
        .toString();
  }
}

class WeatherStateDetailsBuilder
    implements Builder<WeatherStateDetails, WeatherStateDetailsBuilder> {
  _$WeatherStateDetails? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _locationType;
  String? get locationType => _$this._locationType;
  set locationType(String? locationType) => _$this._locationType = locationType;

  int? _woeid;
  int? get woeid => _$this._woeid;
  set woeid(int? woeid) => _$this._woeid = woeid;

  String? _latLang;
  String? get latLang => _$this._latLang;
  set latLang(String? latLang) => _$this._latLang = latLang;

  WeatherStateDetailsBuilder();

  WeatherStateDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _locationType = $v.locationType;
      _woeid = $v.woeid;
      _latLang = $v.latLang;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherStateDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherStateDetails;
  }

  @override
  void update(void Function(WeatherStateDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WeatherStateDetails build() {
    final _$result = _$v ??
        new _$WeatherStateDetails._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'WeatherStateDetails', 'title'),
            locationType: BuiltValueNullFieldError.checkNotNull(
                locationType, 'WeatherStateDetails', 'locationType'),
            woeid: BuiltValueNullFieldError.checkNotNull(
                woeid, 'WeatherStateDetails', 'woeid'),
            latLang: BuiltValueNullFieldError.checkNotNull(
                latLang, 'WeatherStateDetails', 'latLang'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
