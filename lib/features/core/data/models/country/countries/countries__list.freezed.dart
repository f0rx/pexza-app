// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of countries__list.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CountriesList _$CountriesListFromJson(Map<String, dynamic> json) {
  return _CountriesList.fromJson(json);
}

/// @nodoc
class _$CountriesListTearOff {
  const _$CountriesListTearOff();

// ignore: unused_element
  _CountriesList call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false)
          String name,
      @nullable
      @JsonKey(includeIfNull: false, name: "country_phone_code")
          String countryPhoneCode,
      @nullable
      @JsonKey(includeIfNull: false, name: "is_supported", defaultValue: true)
      @IntToBoolSerializer()
          bool isSupported,
      @nullable
      @JsonKey(includeIfNull: false)
          String currency,
      @nullable
      @JsonKey(includeIfNull: false, name: "currency_name")
          String currencyName,
      @nullable
      @JsonKey(includeIfNull: false)
          List<StateDTO> states,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          String deletedAt}) {
    return _CountriesList(
      id: id,
      name: name,
      countryPhoneCode: countryPhoneCode,
      isSupported: isSupported,
      currency: currency,
      currencyName: currencyName,
      states: states,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

// ignore: unused_element
  CountriesList fromJson(Map<String, Object> json) {
    return CountriesList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CountriesList = _$CountriesListTearOff();

/// @nodoc
mixin _$CountriesList {
// The country's Id
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  @nullable
  @JsonKey(includeIfNull: false)
  String get name;
  @nullable
  @JsonKey(includeIfNull: false, name: "country_phone_code")
  String get countryPhoneCode;
  @nullable
  @JsonKey(includeIfNull: false, name: "is_supported", defaultValue: true)
  @IntToBoolSerializer()
  bool get isSupported;
  @nullable
  @JsonKey(includeIfNull: false)
  String get currency;
  @nullable
  @JsonKey(includeIfNull: false, name: "currency_name")
  String get currencyName;
  @nullable
  @JsonKey(includeIfNull: false)
  List<StateDTO> get states;
  @nullable
  @JsonKey(includeIfNull: false, name: "created_at")
  @TimestampConverter()
  String get createdAt;
  @nullable
  @JsonKey(includeIfNull: false, name: "updated_at")
  @TimestampConverter()
  String get updatedAt;
  @nullable
  @JsonKey(includeIfNull: false, name: "deleted_at")
  @TimestampConverter()
  String get deletedAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CountriesListCopyWith<CountriesList> get copyWith;
}

/// @nodoc
abstract class $CountriesListCopyWith<$Res> {
  factory $CountriesListCopyWith(
          CountriesList value, $Res Function(CountriesList) then) =
      _$CountriesListCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false)
          String name,
      @nullable
      @JsonKey(includeIfNull: false, name: "country_phone_code")
          String countryPhoneCode,
      @nullable
      @JsonKey(includeIfNull: false, name: "is_supported", defaultValue: true)
      @IntToBoolSerializer()
          bool isSupported,
      @nullable
      @JsonKey(includeIfNull: false)
          String currency,
      @nullable
      @JsonKey(includeIfNull: false, name: "currency_name")
          String currencyName,
      @nullable
      @JsonKey(includeIfNull: false)
          List<StateDTO> states,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          String deletedAt});
}

/// @nodoc
class _$CountriesListCopyWithImpl<$Res>
    implements $CountriesListCopyWith<$Res> {
  _$CountriesListCopyWithImpl(this._value, this._then);

  final CountriesList _value;
  // ignore: unused_field
  final $Res Function(CountriesList) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object countryPhoneCode = freezed,
    Object isSupported = freezed,
    Object currency = freezed,
    Object currencyName = freezed,
    Object states = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      countryPhoneCode: countryPhoneCode == freezed
          ? _value.countryPhoneCode
          : countryPhoneCode as String,
      isSupported:
          isSupported == freezed ? _value.isSupported : isSupported as bool,
      currency: currency == freezed ? _value.currency : currency as String,
      currencyName: currencyName == freezed
          ? _value.currencyName
          : currencyName as String,
      states: states == freezed ? _value.states : states as List<StateDTO>,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

/// @nodoc
abstract class _$CountriesListCopyWith<$Res>
    implements $CountriesListCopyWith<$Res> {
  factory _$CountriesListCopyWith(
          _CountriesList value, $Res Function(_CountriesList) then) =
      __$CountriesListCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false)
          String name,
      @nullable
      @JsonKey(includeIfNull: false, name: "country_phone_code")
          String countryPhoneCode,
      @nullable
      @JsonKey(includeIfNull: false, name: "is_supported", defaultValue: true)
      @IntToBoolSerializer()
          bool isSupported,
      @nullable
      @JsonKey(includeIfNull: false)
          String currency,
      @nullable
      @JsonKey(includeIfNull: false, name: "currency_name")
          String currencyName,
      @nullable
      @JsonKey(includeIfNull: false)
          List<StateDTO> states,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          String deletedAt});
}

/// @nodoc
class __$CountriesListCopyWithImpl<$Res>
    extends _$CountriesListCopyWithImpl<$Res>
    implements _$CountriesListCopyWith<$Res> {
  __$CountriesListCopyWithImpl(
      _CountriesList _value, $Res Function(_CountriesList) _then)
      : super(_value, (v) => _then(v as _CountriesList));

  @override
  _CountriesList get _value => super._value as _CountriesList;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object countryPhoneCode = freezed,
    Object isSupported = freezed,
    Object currency = freezed,
    Object currencyName = freezed,
    Object states = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_CountriesList(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      countryPhoneCode: countryPhoneCode == freezed
          ? _value.countryPhoneCode
          : countryPhoneCode as String,
      isSupported:
          isSupported == freezed ? _value.isSupported : isSupported as bool,
      currency: currency == freezed ? _value.currency : currency as String,
      currencyName: currencyName == freezed
          ? _value.currencyName
          : currencyName as String,
      states: states == freezed ? _value.states : states as List<StateDTO>,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CountriesList extends _CountriesList {
  const _$_CountriesList(
      {@nullable
      @JsonKey(includeIfNull: false)
          this.id,
      @nullable
      @JsonKey(includeIfNull: false)
          this.name,
      @nullable
      @JsonKey(includeIfNull: false, name: "country_phone_code")
          this.countryPhoneCode,
      @nullable
      @JsonKey(includeIfNull: false, name: "is_supported", defaultValue: true)
      @IntToBoolSerializer()
          this.isSupported,
      @nullable
      @JsonKey(includeIfNull: false)
          this.currency,
      @nullable
      @JsonKey(includeIfNull: false, name: "currency_name")
          this.currencyName,
      @nullable
      @JsonKey(includeIfNull: false)
          this.states,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          this.createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          this.updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          this.deletedAt})
      : super._();

  factory _$_CountriesList.fromJson(Map<String, dynamic> json) =>
      _$_$_CountriesListFromJson(json);

  @override // The country's Id
  @nullable
  @JsonKey(includeIfNull: false)
  final int id;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final String name;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "country_phone_code")
  final String countryPhoneCode;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "is_supported", defaultValue: true)
  @IntToBoolSerializer()
  final bool isSupported;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final String currency;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "currency_name")
  final String currencyName;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final List<StateDTO> states;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "created_at")
  @TimestampConverter()
  final String createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "updated_at")
  @TimestampConverter()
  final String updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "deleted_at")
  @TimestampConverter()
  final String deletedAt;

  @override
  String toString() {
    return 'CountriesList(id: $id, name: $name, countryPhoneCode: $countryPhoneCode, isSupported: $isSupported, currency: $currency, currencyName: $currencyName, states: $states, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountriesList &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.countryPhoneCode, countryPhoneCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryPhoneCode, countryPhoneCode)) &&
            (identical(other.isSupported, isSupported) ||
                const DeepCollectionEquality()
                    .equals(other.isSupported, isSupported)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.currencyName, currencyName) ||
                const DeepCollectionEquality()
                    .equals(other.currencyName, currencyName)) &&
            (identical(other.states, states) ||
                const DeepCollectionEquality().equals(other.states, states)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(countryPhoneCode) ^
      const DeepCollectionEquality().hash(isSupported) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(currencyName) ^
      const DeepCollectionEquality().hash(states) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$CountriesListCopyWith<_CountriesList> get copyWith =>
      __$CountriesListCopyWithImpl<_CountriesList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountriesListToJson(this);
  }
}

abstract class _CountriesList extends CountriesList {
  const _CountriesList._() : super._();
  const factory _CountriesList(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false)
          String name,
      @nullable
      @JsonKey(includeIfNull: false, name: "country_phone_code")
          String countryPhoneCode,
      @nullable
      @JsonKey(includeIfNull: false, name: "is_supported", defaultValue: true)
      @IntToBoolSerializer()
          bool isSupported,
      @nullable
      @JsonKey(includeIfNull: false)
          String currency,
      @nullable
      @JsonKey(includeIfNull: false, name: "currency_name")
          String currencyName,
      @nullable
      @JsonKey(includeIfNull: false)
          List<StateDTO> states,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          String deletedAt}) = _$_CountriesList;

  factory _CountriesList.fromJson(Map<String, dynamic> json) =
      _$_CountriesList.fromJson;

  @override // The country's Id
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  String get name;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "country_phone_code")
  String get countryPhoneCode;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "is_supported", defaultValue: true)
  @IntToBoolSerializer()
  bool get isSupported;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  String get currency;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "currency_name")
  String get currencyName;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  List<StateDTO> get states;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "created_at")
  @TimestampConverter()
  String get createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "updated_at")
  @TimestampConverter()
  String get updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "deleted_at")
  @TimestampConverter()
  String get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$CountriesListCopyWith<_CountriesList> get copyWith;
}
