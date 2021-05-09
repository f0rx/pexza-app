// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of currency_dto_list.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CurrencyListDTO _$CurrencyListDTOFromJson(Map<String, dynamic> json) {
  return _CurrencyListDTO.fromJson(json);
}

/// @nodoc
class _$CurrencyListDTOTearOff {
  const _$CurrencyListDTOTearOff();

// ignore: unused_element
  _CurrencyListDTO call(
      {@nullable @JsonKey(includeIfNull: false) List<CurrencyDTO> currencies}) {
    return _CurrencyListDTO(
      currencies: currencies,
    );
  }

// ignore: unused_element
  CurrencyListDTO fromJson(Map<String, Object> json) {
    return CurrencyListDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CurrencyListDTO = _$CurrencyListDTOTearOff();

/// @nodoc
mixin _$CurrencyListDTO {
  @nullable
  @JsonKey(includeIfNull: false)
  List<CurrencyDTO> get currencies;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CurrencyListDTOCopyWith<CurrencyListDTO> get copyWith;
}

/// @nodoc
abstract class $CurrencyListDTOCopyWith<$Res> {
  factory $CurrencyListDTOCopyWith(
          CurrencyListDTO value, $Res Function(CurrencyListDTO) then) =
      _$CurrencyListDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable @JsonKey(includeIfNull: false) List<CurrencyDTO> currencies});
}

/// @nodoc
class _$CurrencyListDTOCopyWithImpl<$Res>
    implements $CurrencyListDTOCopyWith<$Res> {
  _$CurrencyListDTOCopyWithImpl(this._value, this._then);

  final CurrencyListDTO _value;
  // ignore: unused_field
  final $Res Function(CurrencyListDTO) _then;

  @override
  $Res call({
    Object currencies = freezed,
  }) {
    return _then(_value.copyWith(
      currencies: currencies == freezed
          ? _value.currencies
          : currencies as List<CurrencyDTO>,
    ));
  }
}

/// @nodoc
abstract class _$CurrencyListDTOCopyWith<$Res>
    implements $CurrencyListDTOCopyWith<$Res> {
  factory _$CurrencyListDTOCopyWith(
          _CurrencyListDTO value, $Res Function(_CurrencyListDTO) then) =
      __$CurrencyListDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable @JsonKey(includeIfNull: false) List<CurrencyDTO> currencies});
}

/// @nodoc
class __$CurrencyListDTOCopyWithImpl<$Res>
    extends _$CurrencyListDTOCopyWithImpl<$Res>
    implements _$CurrencyListDTOCopyWith<$Res> {
  __$CurrencyListDTOCopyWithImpl(
      _CurrencyListDTO _value, $Res Function(_CurrencyListDTO) _then)
      : super(_value, (v) => _then(v as _CurrencyListDTO));

  @override
  _CurrencyListDTO get _value => super._value as _CurrencyListDTO;

  @override
  $Res call({
    Object currencies = freezed,
  }) {
    return _then(_CurrencyListDTO(
      currencies: currencies == freezed
          ? _value.currencies
          : currencies as List<CurrencyDTO>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CurrencyListDTO extends _CurrencyListDTO {
  const _$_CurrencyListDTO(
      {@nullable @JsonKey(includeIfNull: false) this.currencies})
      : super._();

  factory _$_CurrencyListDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CurrencyListDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final List<CurrencyDTO> currencies;

  @override
  String toString() {
    return 'CurrencyListDTO(currencies: $currencies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurrencyListDTO &&
            (identical(other.currencies, currencies) ||
                const DeepCollectionEquality()
                    .equals(other.currencies, currencies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currencies);

  @JsonKey(ignore: true)
  @override
  _$CurrencyListDTOCopyWith<_CurrencyListDTO> get copyWith =>
      __$CurrencyListDTOCopyWithImpl<_CurrencyListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CurrencyListDTOToJson(this);
  }
}

abstract class _CurrencyListDTO extends CurrencyListDTO {
  const _CurrencyListDTO._() : super._();
  const factory _CurrencyListDTO(
      {@nullable
      @JsonKey(includeIfNull: false)
          List<CurrencyDTO> currencies}) = _$_CurrencyListDTO;

  factory _CurrencyListDTO.fromJson(Map<String, dynamic> json) =
      _$_CurrencyListDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  List<CurrencyDTO> get currencies;
  @override
  @JsonKey(ignore: true)
  _$CurrencyListDTOCopyWith<_CurrencyListDTO> get copyWith;
}
