// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of currency.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CurrencyDTO _$CurrencyDTOFromJson(Map<String, dynamic> json) {
  return _CurrencyDTO.fromJson(json);
}

/// @nodoc
class _$CurrencyDTOTearOff {
  const _$CurrencyDTOTearOff();

// ignore: unused_element
  _CurrencyDTO call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: "")
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: "")
          String currency,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: "", name: "currency_name")
          String currencyName}) {
    return _CurrencyDTO(
      id: id,
      currency: currency,
      currencyName: currencyName,
    );
  }

// ignore: unused_element
  CurrencyDTO fromJson(Map<String, Object> json) {
    return CurrencyDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CurrencyDTO = _$CurrencyDTOTearOff();

/// @nodoc
mixin _$CurrencyDTO {
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: "")
  int get id;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: "")
  String get currency;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: "", name: "currency_name")
  String get currencyName;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CurrencyDTOCopyWith<CurrencyDTO> get copyWith;
}

/// @nodoc
abstract class $CurrencyDTOCopyWith<$Res> {
  factory $CurrencyDTOCopyWith(
          CurrencyDTO value, $Res Function(CurrencyDTO) then) =
      _$CurrencyDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: "")
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: "")
          String currency,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: "", name: "currency_name")
          String currencyName});
}

/// @nodoc
class _$CurrencyDTOCopyWithImpl<$Res> implements $CurrencyDTOCopyWith<$Res> {
  _$CurrencyDTOCopyWithImpl(this._value, this._then);

  final CurrencyDTO _value;
  // ignore: unused_field
  final $Res Function(CurrencyDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object currency = freezed,
    Object currencyName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      currency: currency == freezed ? _value.currency : currency as String,
      currencyName: currencyName == freezed
          ? _value.currencyName
          : currencyName as String,
    ));
  }
}

/// @nodoc
abstract class _$CurrencyDTOCopyWith<$Res>
    implements $CurrencyDTOCopyWith<$Res> {
  factory _$CurrencyDTOCopyWith(
          _CurrencyDTO value, $Res Function(_CurrencyDTO) then) =
      __$CurrencyDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: "")
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: "")
          String currency,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: "", name: "currency_name")
          String currencyName});
}

/// @nodoc
class __$CurrencyDTOCopyWithImpl<$Res> extends _$CurrencyDTOCopyWithImpl<$Res>
    implements _$CurrencyDTOCopyWith<$Res> {
  __$CurrencyDTOCopyWithImpl(
      _CurrencyDTO _value, $Res Function(_CurrencyDTO) _then)
      : super(_value, (v) => _then(v as _CurrencyDTO));

  @override
  _CurrencyDTO get _value => super._value as _CurrencyDTO;

  @override
  $Res call({
    Object id = freezed,
    Object currency = freezed,
    Object currencyName = freezed,
  }) {
    return _then(_CurrencyDTO(
      id: id == freezed ? _value.id : id as int,
      currency: currency == freezed ? _value.currency : currency as String,
      currencyName: currencyName == freezed
          ? _value.currencyName
          : currencyName as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CurrencyDTO extends _CurrencyDTO {
  const _$_CurrencyDTO(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: "")
          this.id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: "")
          this.currency,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: "", name: "currency_name")
          this.currencyName})
      : super._();

  factory _$_CurrencyDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CurrencyDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: "")
  final int id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: "")
  final String currency;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: "", name: "currency_name")
  final String currencyName;

  @override
  String toString() {
    return 'CurrencyDTO(id: $id, currency: $currency, currencyName: $currencyName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurrencyDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.currencyName, currencyName) ||
                const DeepCollectionEquality()
                    .equals(other.currencyName, currencyName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(currencyName);

  @JsonKey(ignore: true)
  @override
  _$CurrencyDTOCopyWith<_CurrencyDTO> get copyWith =>
      __$CurrencyDTOCopyWithImpl<_CurrencyDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CurrencyDTOToJson(this);
  }
}

abstract class _CurrencyDTO extends CurrencyDTO {
  const _CurrencyDTO._() : super._();
  const factory _CurrencyDTO(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: "")
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: "")
          String currency,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: "", name: "currency_name")
          String currencyName}) = _$_CurrencyDTO;

  factory _CurrencyDTO.fromJson(Map<String, dynamic> json) =
      _$_CurrencyDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: "")
  int get id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: "")
  String get currency;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: "", name: "currency_name")
  String get currencyName;
  @override
  @JsonKey(ignore: true)
  _$CurrencyDTOCopyWith<_CurrencyDTO> get copyWith;
}
