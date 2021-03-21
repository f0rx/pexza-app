// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CountryTearOff {
  const _$CountryTearOff();

// ignore: unused_element
  _Country call(
      {@required CountryName name,
      @required String codeName,
      @required String dialCode,
      @required String language,
      CountryCurrency currency = CountryCurrency.USD,
      String prefix = Country.DEFAULT_PREFIX,
      String hintText = Country.DEFAULT_HINT_TEXT,
      int digitsCount = Country.DEFAULT_DIGITS_COUNT}) {
    return _Country(
      name: name,
      codeName: codeName,
      dialCode: dialCode,
      language: language,
      currency: currency,
      prefix: prefix,
      hintText: hintText,
      digitsCount: digitsCount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Country = _$CountryTearOff();

/// @nodoc
mixin _$Country {
  CountryName get name;
  String get codeName;
  String get dialCode;
  String get language;
  CountryCurrency get currency;
  String get prefix;
  String get hintText;
  int get digitsCount;

  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res>;
  $Res call(
      {CountryName name,
      String codeName,
      String dialCode,
      String language,
      CountryCurrency currency,
      String prefix,
      String hintText,
      int digitsCount});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  final Country _value;
  // ignore: unused_field
  final $Res Function(Country) _then;

  @override
  $Res call({
    Object name = freezed,
    Object codeName = freezed,
    Object dialCode = freezed,
    Object language = freezed,
    Object currency = freezed,
    Object prefix = freezed,
    Object hintText = freezed,
    Object digitsCount = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as CountryName,
      codeName: codeName == freezed ? _value.codeName : codeName as String,
      dialCode: dialCode == freezed ? _value.dialCode : dialCode as String,
      language: language == freezed ? _value.language : language as String,
      currency:
          currency == freezed ? _value.currency : currency as CountryCurrency,
      prefix: prefix == freezed ? _value.prefix : prefix as String,
      hintText: hintText == freezed ? _value.hintText : hintText as String,
      digitsCount:
          digitsCount == freezed ? _value.digitsCount : digitsCount as int,
    ));
  }
}

/// @nodoc
abstract class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) then) =
      __$CountryCopyWithImpl<$Res>;
  @override
  $Res call(
      {CountryName name,
      String codeName,
      String dialCode,
      String language,
      CountryCurrency currency,
      String prefix,
      String hintText,
      int digitsCount});
}

/// @nodoc
class __$CountryCopyWithImpl<$Res> extends _$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(_Country _value, $Res Function(_Country) _then)
      : super(_value, (v) => _then(v as _Country));

  @override
  _Country get _value => super._value as _Country;

  @override
  $Res call({
    Object name = freezed,
    Object codeName = freezed,
    Object dialCode = freezed,
    Object language = freezed,
    Object currency = freezed,
    Object prefix = freezed,
    Object hintText = freezed,
    Object digitsCount = freezed,
  }) {
    return _then(_Country(
      name: name == freezed ? _value.name : name as CountryName,
      codeName: codeName == freezed ? _value.codeName : codeName as String,
      dialCode: dialCode == freezed ? _value.dialCode : dialCode as String,
      language: language == freezed ? _value.language : language as String,
      currency:
          currency == freezed ? _value.currency : currency as CountryCurrency,
      prefix: prefix == freezed ? _value.prefix : prefix as String,
      hintText: hintText == freezed ? _value.hintText : hintText as String,
      digitsCount:
          digitsCount == freezed ? _value.digitsCount : digitsCount as int,
    ));
  }
}

/// @nodoc
class _$_Country extends _Country {
  const _$_Country(
      {@required this.name,
      @required this.codeName,
      @required this.dialCode,
      @required this.language,
      this.currency = CountryCurrency.USD,
      this.prefix = Country.DEFAULT_PREFIX,
      this.hintText = Country.DEFAULT_HINT_TEXT,
      this.digitsCount = Country.DEFAULT_DIGITS_COUNT})
      : assert(name != null),
        assert(codeName != null),
        assert(dialCode != null),
        assert(language != null),
        assert(currency != null),
        assert(prefix != null),
        assert(hintText != null),
        assert(digitsCount != null),
        super._();

  @override
  final CountryName name;
  @override
  final String codeName;
  @override
  final String dialCode;
  @override
  final String language;
  @JsonKey(defaultValue: CountryCurrency.USD)
  @override
  final CountryCurrency currency;
  @JsonKey(defaultValue: Country.DEFAULT_PREFIX)
  @override
  final String prefix;
  @JsonKey(defaultValue: Country.DEFAULT_HINT_TEXT)
  @override
  final String hintText;
  @JsonKey(defaultValue: Country.DEFAULT_DIGITS_COUNT)
  @override
  final int digitsCount;

  @override
  String toString() {
    return 'Country(name: $name, codeName: $codeName, dialCode: $dialCode, language: $language, currency: $currency, prefix: $prefix, hintText: $hintText, digitsCount: $digitsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Country &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.codeName, codeName) ||
                const DeepCollectionEquality()
                    .equals(other.codeName, codeName)) &&
            (identical(other.dialCode, dialCode) ||
                const DeepCollectionEquality()
                    .equals(other.dialCode, dialCode)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.prefix, prefix) ||
                const DeepCollectionEquality().equals(other.prefix, prefix)) &&
            (identical(other.hintText, hintText) ||
                const DeepCollectionEquality()
                    .equals(other.hintText, hintText)) &&
            (identical(other.digitsCount, digitsCount) ||
                const DeepCollectionEquality()
                    .equals(other.digitsCount, digitsCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(codeName) ^
      const DeepCollectionEquality().hash(dialCode) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(prefix) ^
      const DeepCollectionEquality().hash(hintText) ^
      const DeepCollectionEquality().hash(digitsCount);

  @JsonKey(ignore: true)
  @override
  _$CountryCopyWith<_Country> get copyWith =>
      __$CountryCopyWithImpl<_Country>(this, _$identity);
}

abstract class _Country extends Country {
  const _Country._() : super._();
  const factory _Country(
      {@required CountryName name,
      @required String codeName,
      @required String dialCode,
      @required String language,
      CountryCurrency currency,
      String prefix,
      String hintText,
      int digitsCount}) = _$_Country;

  @override
  CountryName get name;
  @override
  String get codeName;
  @override
  String get dialCode;
  @override
  String get language;
  @override
  CountryCurrency get currency;
  @override
  String get prefix;
  @override
  String get hintText;
  @override
  int get digitsCount;
  @override
  @JsonKey(ignore: true)
  _$CountryCopyWith<_Country> get copyWith;
}
