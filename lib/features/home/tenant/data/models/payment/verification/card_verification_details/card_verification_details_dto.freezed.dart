// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of card_verification_details_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CardVerificationDetailsDTO _$CardVerificationDetailsDTOFromJson(
    Map<String, dynamic> json) {
  return _CardVerificationDetailsDTO.fromJson(json);
}

/// @nodoc
class _$CardVerificationDetailsDTOTearOff {
  const _$CardVerificationDetailsDTOTearOff();

// ignore: unused_element
  _CardVerificationDetailsDTO call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String bin,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String brand,
      @nullable
      @JsonKey(includeIfNull: false, name: 'sub_brand')
          String subBrand,
      @nullable
      @JsonKey(includeIfNull: false, name: 'country_code', defaultValue: '')
          String countryCode,
      @nullable
      @JsonKey(includeIfNull: false, name: 'country_name', defaultValue: '')
          String countryName,
      @nullable
      @JsonKey(includeIfNull: false, name: 'card_type', defaultValue: '')
          String cardType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String bank,
      @nullable
      @JsonKey(includeIfNull: false, name: 'linked_bank_id')
          int bankId}) {
    return _CardVerificationDetailsDTO(
      bin: bin,
      brand: brand,
      subBrand: subBrand,
      countryCode: countryCode,
      countryName: countryName,
      cardType: cardType,
      bank: bank,
      bankId: bankId,
    );
  }

// ignore: unused_element
  CardVerificationDetailsDTO fromJson(Map<String, Object> json) {
    return CardVerificationDetailsDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CardVerificationDetailsDTO = _$CardVerificationDetailsDTOTearOff();

/// @nodoc
mixin _$CardVerificationDetailsDTO {
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get bin;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get brand;
  @nullable
  @JsonKey(includeIfNull: false, name: 'sub_brand')
  String get subBrand;
  @nullable
  @JsonKey(includeIfNull: false, name: 'country_code', defaultValue: '')
  String get countryCode;
  @nullable
  @JsonKey(includeIfNull: false, name: 'country_name', defaultValue: '')
  String get countryName;
  @nullable
  @JsonKey(includeIfNull: false, name: 'card_type', defaultValue: '')
  String get cardType;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get bank;
  @nullable
  @JsonKey(includeIfNull: false, name: 'linked_bank_id')
  int get bankId;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CardVerificationDetailsDTOCopyWith<CardVerificationDetailsDTO> get copyWith;
}

/// @nodoc
abstract class $CardVerificationDetailsDTOCopyWith<$Res> {
  factory $CardVerificationDetailsDTOCopyWith(CardVerificationDetailsDTO value,
          $Res Function(CardVerificationDetailsDTO) then) =
      _$CardVerificationDetailsDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String bin,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String brand,
      @nullable
      @JsonKey(includeIfNull: false, name: 'sub_brand')
          String subBrand,
      @nullable
      @JsonKey(includeIfNull: false, name: 'country_code', defaultValue: '')
          String countryCode,
      @nullable
      @JsonKey(includeIfNull: false, name: 'country_name', defaultValue: '')
          String countryName,
      @nullable
      @JsonKey(includeIfNull: false, name: 'card_type', defaultValue: '')
          String cardType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String bank,
      @nullable
      @JsonKey(includeIfNull: false, name: 'linked_bank_id')
          int bankId});
}

/// @nodoc
class _$CardVerificationDetailsDTOCopyWithImpl<$Res>
    implements $CardVerificationDetailsDTOCopyWith<$Res> {
  _$CardVerificationDetailsDTOCopyWithImpl(this._value, this._then);

  final CardVerificationDetailsDTO _value;
  // ignore: unused_field
  final $Res Function(CardVerificationDetailsDTO) _then;

  @override
  $Res call({
    Object bin = freezed,
    Object brand = freezed,
    Object subBrand = freezed,
    Object countryCode = freezed,
    Object countryName = freezed,
    Object cardType = freezed,
    Object bank = freezed,
    Object bankId = freezed,
  }) {
    return _then(_value.copyWith(
      bin: bin == freezed ? _value.bin : bin as String,
      brand: brand == freezed ? _value.brand : brand as String,
      subBrand: subBrand == freezed ? _value.subBrand : subBrand as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      countryName:
          countryName == freezed ? _value.countryName : countryName as String,
      cardType: cardType == freezed ? _value.cardType : cardType as String,
      bank: bank == freezed ? _value.bank : bank as String,
      bankId: bankId == freezed ? _value.bankId : bankId as int,
    ));
  }
}

/// @nodoc
abstract class _$CardVerificationDetailsDTOCopyWith<$Res>
    implements $CardVerificationDetailsDTOCopyWith<$Res> {
  factory _$CardVerificationDetailsDTOCopyWith(
          _CardVerificationDetailsDTO value,
          $Res Function(_CardVerificationDetailsDTO) then) =
      __$CardVerificationDetailsDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String bin,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String brand,
      @nullable
      @JsonKey(includeIfNull: false, name: 'sub_brand')
          String subBrand,
      @nullable
      @JsonKey(includeIfNull: false, name: 'country_code', defaultValue: '')
          String countryCode,
      @nullable
      @JsonKey(includeIfNull: false, name: 'country_name', defaultValue: '')
          String countryName,
      @nullable
      @JsonKey(includeIfNull: false, name: 'card_type', defaultValue: '')
          String cardType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String bank,
      @nullable
      @JsonKey(includeIfNull: false, name: 'linked_bank_id')
          int bankId});
}

/// @nodoc
class __$CardVerificationDetailsDTOCopyWithImpl<$Res>
    extends _$CardVerificationDetailsDTOCopyWithImpl<$Res>
    implements _$CardVerificationDetailsDTOCopyWith<$Res> {
  __$CardVerificationDetailsDTOCopyWithImpl(_CardVerificationDetailsDTO _value,
      $Res Function(_CardVerificationDetailsDTO) _then)
      : super(_value, (v) => _then(v as _CardVerificationDetailsDTO));

  @override
  _CardVerificationDetailsDTO get _value =>
      super._value as _CardVerificationDetailsDTO;

  @override
  $Res call({
    Object bin = freezed,
    Object brand = freezed,
    Object subBrand = freezed,
    Object countryCode = freezed,
    Object countryName = freezed,
    Object cardType = freezed,
    Object bank = freezed,
    Object bankId = freezed,
  }) {
    return _then(_CardVerificationDetailsDTO(
      bin: bin == freezed ? _value.bin : bin as String,
      brand: brand == freezed ? _value.brand : brand as String,
      subBrand: subBrand == freezed ? _value.subBrand : subBrand as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      countryName:
          countryName == freezed ? _value.countryName : countryName as String,
      cardType: cardType == freezed ? _value.cardType : cardType as String,
      bank: bank == freezed ? _value.bank : bank as String,
      bankId: bankId == freezed ? _value.bankId : bankId as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CardVerificationDetailsDTO extends _CardVerificationDetailsDTO {
  const _$_CardVerificationDetailsDTO(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.bin,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.brand,
      @nullable
      @JsonKey(includeIfNull: false, name: 'sub_brand')
          this.subBrand,
      @nullable
      @JsonKey(includeIfNull: false, name: 'country_code', defaultValue: '')
          this.countryCode,
      @nullable
      @JsonKey(includeIfNull: false, name: 'country_name', defaultValue: '')
          this.countryName,
      @nullable
      @JsonKey(includeIfNull: false, name: 'card_type', defaultValue: '')
          this.cardType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.bank,
      @nullable
      @JsonKey(includeIfNull: false, name: 'linked_bank_id')
          this.bankId})
      : super._();

  factory _$_CardVerificationDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CardVerificationDetailsDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String bin;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String brand;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'sub_brand')
  final String subBrand;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'country_code', defaultValue: '')
  final String countryCode;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'country_name', defaultValue: '')
  final String countryName;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'card_type', defaultValue: '')
  final String cardType;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String bank;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'linked_bank_id')
  final int bankId;

  @override
  String toString() {
    return 'CardVerificationDetailsDTO(bin: $bin, brand: $brand, subBrand: $subBrand, countryCode: $countryCode, countryName: $countryName, cardType: $cardType, bank: $bank, bankId: $bankId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardVerificationDetailsDTO &&
            (identical(other.bin, bin) ||
                const DeepCollectionEquality().equals(other.bin, bin)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.subBrand, subBrand) ||
                const DeepCollectionEquality()
                    .equals(other.subBrand, subBrand)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality()
                    .equals(other.countryName, countryName)) &&
            (identical(other.cardType, cardType) ||
                const DeepCollectionEquality()
                    .equals(other.cardType, cardType)) &&
            (identical(other.bank, bank) ||
                const DeepCollectionEquality().equals(other.bank, bank)) &&
            (identical(other.bankId, bankId) ||
                const DeepCollectionEquality().equals(other.bankId, bankId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bin) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(subBrand) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(cardType) ^
      const DeepCollectionEquality().hash(bank) ^
      const DeepCollectionEquality().hash(bankId);

  @JsonKey(ignore: true)
  @override
  _$CardVerificationDetailsDTOCopyWith<_CardVerificationDetailsDTO>
      get copyWith => __$CardVerificationDetailsDTOCopyWithImpl<
          _CardVerificationDetailsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CardVerificationDetailsDTOToJson(this);
  }
}

abstract class _CardVerificationDetailsDTO extends CardVerificationDetailsDTO {
  const _CardVerificationDetailsDTO._() : super._();
  const factory _CardVerificationDetailsDTO(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String bin,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String brand,
      @nullable
      @JsonKey(includeIfNull: false, name: 'sub_brand')
          String subBrand,
      @nullable
      @JsonKey(includeIfNull: false, name: 'country_code', defaultValue: '')
          String countryCode,
      @nullable
      @JsonKey(includeIfNull: false, name: 'country_name', defaultValue: '')
          String countryName,
      @nullable
      @JsonKey(includeIfNull: false, name: 'card_type', defaultValue: '')
          String cardType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String bank,
      @nullable
      @JsonKey(includeIfNull: false, name: 'linked_bank_id')
          int bankId}) = _$_CardVerificationDetailsDTO;

  factory _CardVerificationDetailsDTO.fromJson(Map<String, dynamic> json) =
      _$_CardVerificationDetailsDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get bin;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get brand;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'sub_brand')
  String get subBrand;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'country_code', defaultValue: '')
  String get countryCode;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'country_name', defaultValue: '')
  String get countryName;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'card_type', defaultValue: '')
  String get cardType;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get bank;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'linked_bank_id')
  int get bankId;
  @override
  @JsonKey(ignore: true)
  _$CardVerificationDetailsDTOCopyWith<_CardVerificationDetailsDTO>
      get copyWith;
}
