// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of wallet_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WalletDTO _$WalletDTOFromJson(Map<String, dynamic> json) {
  return _WalletDTO.fromJson(json);
}

/// @nodoc
class _$WalletDTOTearOff {
  const _$WalletDTOTearOff();

// ignore: unused_element
  _WalletDTO call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payable_id')
          int payableId,
      @nullable
      @JsonKey(includeIfNull: false)
          int amount}) {
    return _WalletDTO(
      id: id,
      payableId: payableId,
      amount: amount,
    );
  }

// ignore: unused_element
  WalletDTO fromJson(Map<String, Object> json) {
    return WalletDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WalletDTO = _$WalletDTOTearOff();

/// @nodoc
mixin _$WalletDTO {
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  @nullable
  @JsonKey(includeIfNull: false, name: 'payable_id')
  int get payableId;
  @nullable
  @JsonKey(includeIfNull: false)
  int get amount;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WalletDTOCopyWith<WalletDTO> get copyWith;
}

/// @nodoc
abstract class $WalletDTOCopyWith<$Res> {
  factory $WalletDTOCopyWith(WalletDTO value, $Res Function(WalletDTO) then) =
      _$WalletDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payable_id')
          int payableId,
      @nullable
      @JsonKey(includeIfNull: false)
          int amount});
}

/// @nodoc
class _$WalletDTOCopyWithImpl<$Res> implements $WalletDTOCopyWith<$Res> {
  _$WalletDTOCopyWithImpl(this._value, this._then);

  final WalletDTO _value;
  // ignore: unused_field
  final $Res Function(WalletDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object payableId = freezed,
    Object amount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      payableId: payableId == freezed ? _value.payableId : payableId as int,
      amount: amount == freezed ? _value.amount : amount as int,
    ));
  }
}

/// @nodoc
abstract class _$WalletDTOCopyWith<$Res> implements $WalletDTOCopyWith<$Res> {
  factory _$WalletDTOCopyWith(
          _WalletDTO value, $Res Function(_WalletDTO) then) =
      __$WalletDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payable_id')
          int payableId,
      @nullable
      @JsonKey(includeIfNull: false)
          int amount});
}

/// @nodoc
class __$WalletDTOCopyWithImpl<$Res> extends _$WalletDTOCopyWithImpl<$Res>
    implements _$WalletDTOCopyWith<$Res> {
  __$WalletDTOCopyWithImpl(_WalletDTO _value, $Res Function(_WalletDTO) _then)
      : super(_value, (v) => _then(v as _WalletDTO));

  @override
  _WalletDTO get _value => super._value as _WalletDTO;

  @override
  $Res call({
    Object id = freezed,
    Object payableId = freezed,
    Object amount = freezed,
  }) {
    return _then(_WalletDTO(
      id: id == freezed ? _value.id : id as int,
      payableId: payableId == freezed ? _value.payableId : payableId as int,
      amount: amount == freezed ? _value.amount : amount as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WalletDTO extends _WalletDTO {
  const _$_WalletDTO(
      {@nullable
      @JsonKey(includeIfNull: false)
          this.id,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payable_id')
          this.payableId,
      @nullable
      @JsonKey(includeIfNull: false)
          this.amount})
      : super._();

  factory _$_WalletDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_WalletDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final int id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'payable_id')
  final int payableId;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final int amount;

  @override
  String toString() {
    return 'WalletDTO(id: $id, payableId: $payableId, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WalletDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.payableId, payableId) ||
                const DeepCollectionEquality()
                    .equals(other.payableId, payableId)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(payableId) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$WalletDTOCopyWith<_WalletDTO> get copyWith =>
      __$WalletDTOCopyWithImpl<_WalletDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WalletDTOToJson(this);
  }
}

abstract class _WalletDTO extends WalletDTO {
  const _WalletDTO._() : super._();
  const factory _WalletDTO(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payable_id')
          int payableId,
      @nullable
      @JsonKey(includeIfNull: false)
          int amount}) = _$_WalletDTO;

  factory _WalletDTO.fromJson(Map<String, dynamic> json) =
      _$_WalletDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'payable_id')
  int get payableId;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$WalletDTOCopyWith<_WalletDTO> get copyWith;
}
