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
      {@nullable UniqueId<int> id,
      @nullable CountryName name,
      @nullable String codeName,
      @nullable String dialCode,
      bool isSupported = false,
      String language = 'English - UK',
      CurrencyType currencyType = CurrencyType.NGN,
      String prefix = Country.DEFAULT_PREFIX,
      String hintText = Country.DEFAULT_HINT_TEXT,
      int digitsCount = Country.DEFAULT_DIGITS_COUNT,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) {
    return _Country(
      id: id,
      name: name,
      codeName: codeName,
      dialCode: dialCode,
      isSupported: isSupported,
      language: language,
      currencyType: currencyType,
      prefix: prefix,
      hintText: hintText,
      digitsCount: digitsCount,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Country = _$CountryTearOff();

/// @nodoc
mixin _$Country {
  @nullable
  UniqueId<int> get id;
  @nullable
  CountryName get name;
  @nullable
  String get codeName;
  @nullable
  String get dialCode;
  bool get isSupported;
  String get language;
  CurrencyType get currencyType;
  String get prefix;
  String get hintText;
  int get digitsCount;
  @nullable
  DateTime get createdAt;
  @nullable
  DateTime get updatedAt;
  @nullable
  DateTime get deletedAt;

  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res>;
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable CountryName name,
      @nullable String codeName,
      @nullable String dialCode,
      bool isSupported,
      String language,
      CurrencyType currencyType,
      String prefix,
      String hintText,
      int digitsCount,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  final Country _value;
  // ignore: unused_field
  final $Res Function(Country) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object codeName = freezed,
    Object dialCode = freezed,
    Object isSupported = freezed,
    Object language = freezed,
    Object currencyType = freezed,
    Object prefix = freezed,
    Object hintText = freezed,
    Object digitsCount = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      name: name == freezed ? _value.name : name as CountryName,
      codeName: codeName == freezed ? _value.codeName : codeName as String,
      dialCode: dialCode == freezed ? _value.dialCode : dialCode as String,
      isSupported:
          isSupported == freezed ? _value.isSupported : isSupported as bool,
      language: language == freezed ? _value.language : language as String,
      currencyType: currencyType == freezed
          ? _value.currencyType
          : currencyType as CurrencyType,
      prefix: prefix == freezed ? _value.prefix : prefix as String,
      hintText: hintText == freezed ? _value.hintText : hintText as String,
      digitsCount:
          digitsCount == freezed ? _value.digitsCount : digitsCount as int,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) then) =
      __$CountryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable CountryName name,
      @nullable String codeName,
      @nullable String dialCode,
      bool isSupported,
      String language,
      CurrencyType currencyType,
      String prefix,
      String hintText,
      int digitsCount,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});
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
    Object id = freezed,
    Object name = freezed,
    Object codeName = freezed,
    Object dialCode = freezed,
    Object isSupported = freezed,
    Object language = freezed,
    Object currencyType = freezed,
    Object prefix = freezed,
    Object hintText = freezed,
    Object digitsCount = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_Country(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      name: name == freezed ? _value.name : name as CountryName,
      codeName: codeName == freezed ? _value.codeName : codeName as String,
      dialCode: dialCode == freezed ? _value.dialCode : dialCode as String,
      isSupported:
          isSupported == freezed ? _value.isSupported : isSupported as bool,
      language: language == freezed ? _value.language : language as String,
      currencyType: currencyType == freezed
          ? _value.currencyType
          : currencyType as CurrencyType,
      prefix: prefix == freezed ? _value.prefix : prefix as String,
      hintText: hintText == freezed ? _value.hintText : hintText as String,
      digitsCount:
          digitsCount == freezed ? _value.digitsCount : digitsCount as int,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }
}

/// @nodoc
class _$_Country extends _Country {
  const _$_Country(
      {@nullable this.id,
      @nullable this.name,
      @nullable this.codeName,
      @nullable this.dialCode,
      this.isSupported = false,
      this.language = 'English - UK',
      this.currencyType = CurrencyType.NGN,
      this.prefix = Country.DEFAULT_PREFIX,
      this.hintText = Country.DEFAULT_HINT_TEXT,
      this.digitsCount = Country.DEFAULT_DIGITS_COUNT,
      @nullable this.createdAt,
      @nullable this.updatedAt,
      @nullable this.deletedAt})
      : assert(isSupported != null),
        assert(language != null),
        assert(currencyType != null),
        assert(prefix != null),
        assert(hintText != null),
        assert(digitsCount != null),
        super._();

  @override
  @nullable
  final UniqueId<int> id;
  @override
  @nullable
  final CountryName name;
  @override
  @nullable
  final String codeName;
  @override
  @nullable
  final String dialCode;
  @JsonKey(defaultValue: false)
  @override
  final bool isSupported;
  @JsonKey(defaultValue: 'English - UK')
  @override
  final String language;
  @JsonKey(defaultValue: CurrencyType.NGN)
  @override
  final CurrencyType currencyType;
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
  @nullable
  final DateTime createdAt;
  @override
  @nullable
  final DateTime updatedAt;
  @override
  @nullable
  final DateTime deletedAt;

  @override
  String toString() {
    return 'Country(id: $id, name: $name, codeName: $codeName, dialCode: $dialCode, isSupported: $isSupported, language: $language, currencyType: $currencyType, prefix: $prefix, hintText: $hintText, digitsCount: $digitsCount, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Country &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.codeName, codeName) ||
                const DeepCollectionEquality()
                    .equals(other.codeName, codeName)) &&
            (identical(other.dialCode, dialCode) ||
                const DeepCollectionEquality()
                    .equals(other.dialCode, dialCode)) &&
            (identical(other.isSupported, isSupported) ||
                const DeepCollectionEquality()
                    .equals(other.isSupported, isSupported)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.currencyType, currencyType) ||
                const DeepCollectionEquality()
                    .equals(other.currencyType, currencyType)) &&
            (identical(other.prefix, prefix) ||
                const DeepCollectionEquality().equals(other.prefix, prefix)) &&
            (identical(other.hintText, hintText) ||
                const DeepCollectionEquality()
                    .equals(other.hintText, hintText)) &&
            (identical(other.digitsCount, digitsCount) ||
                const DeepCollectionEquality()
                    .equals(other.digitsCount, digitsCount)) &&
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
      const DeepCollectionEquality().hash(codeName) ^
      const DeepCollectionEquality().hash(dialCode) ^
      const DeepCollectionEquality().hash(isSupported) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(currencyType) ^
      const DeepCollectionEquality().hash(prefix) ^
      const DeepCollectionEquality().hash(hintText) ^
      const DeepCollectionEquality().hash(digitsCount) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$CountryCopyWith<_Country> get copyWith =>
      __$CountryCopyWithImpl<_Country>(this, _$identity);
}

abstract class _Country extends Country {
  const _Country._() : super._();
  const factory _Country(
      {@nullable UniqueId<int> id,
      @nullable CountryName name,
      @nullable String codeName,
      @nullable String dialCode,
      bool isSupported,
      String language,
      CurrencyType currencyType,
      String prefix,
      String hintText,
      int digitsCount,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) = _$_Country;

  @override
  @nullable
  UniqueId<int> get id;
  @override
  @nullable
  CountryName get name;
  @override
  @nullable
  String get codeName;
  @override
  @nullable
  String get dialCode;
  @override
  bool get isSupported;
  @override
  String get language;
  @override
  CurrencyType get currencyType;
  @override
  String get prefix;
  @override
  String get hintText;
  @override
  int get digitsCount;
  @override
  @nullable
  DateTime get createdAt;
  @override
  @nullable
  DateTime get updatedAt;
  @override
  @nullable
  DateTime get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$CountryCopyWith<_Country> get copyWith;
}
