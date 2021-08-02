// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of landlord_wallet.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LandlordWalletTearOff {
  const _$LandlordWalletTearOff();

// ignore: unused_element
  _LandlordWallet call(
      {@nullable BasicTextField<int> payableId,
      @nullable BasicTextField<int> amount,
      @nullable BasicTextField<int> balance,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) {
    return _LandlordWallet(
      payableId: payableId,
      amount: amount,
      balance: balance,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LandlordWallet = _$LandlordWalletTearOff();

/// @nodoc
mixin _$LandlordWallet {
  @nullable
  BasicTextField<int> get payableId;
  @nullable
  BasicTextField<int> get amount;
  @nullable
  BasicTextField<int> get balance;
  @nullable
  DateTime get updatedAt;
  @nullable
  DateTime get deletedAt;

  @JsonKey(ignore: true)
  $LandlordWalletCopyWith<LandlordWallet> get copyWith;
}

/// @nodoc
abstract class $LandlordWalletCopyWith<$Res> {
  factory $LandlordWalletCopyWith(
          LandlordWallet value, $Res Function(LandlordWallet) then) =
      _$LandlordWalletCopyWithImpl<$Res>;
  $Res call(
      {@nullable BasicTextField<int> payableId,
      @nullable BasicTextField<int> amount,
      @nullable BasicTextField<int> balance,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});
}

/// @nodoc
class _$LandlordWalletCopyWithImpl<$Res>
    implements $LandlordWalletCopyWith<$Res> {
  _$LandlordWalletCopyWithImpl(this._value, this._then);

  final LandlordWallet _value;
  // ignore: unused_field
  final $Res Function(LandlordWallet) _then;

  @override
  $Res call({
    Object payableId = freezed,
    Object amount = freezed,
    Object balance = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      payableId: payableId == freezed
          ? _value.payableId
          : payableId as BasicTextField<int>,
      amount: amount == freezed ? _value.amount : amount as BasicTextField<int>,
      balance:
          balance == freezed ? _value.balance : balance as BasicTextField<int>,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$LandlordWalletCopyWith<$Res>
    implements $LandlordWalletCopyWith<$Res> {
  factory _$LandlordWalletCopyWith(
          _LandlordWallet value, $Res Function(_LandlordWallet) then) =
      __$LandlordWalletCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable BasicTextField<int> payableId,
      @nullable BasicTextField<int> amount,
      @nullable BasicTextField<int> balance,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});
}

/// @nodoc
class __$LandlordWalletCopyWithImpl<$Res>
    extends _$LandlordWalletCopyWithImpl<$Res>
    implements _$LandlordWalletCopyWith<$Res> {
  __$LandlordWalletCopyWithImpl(
      _LandlordWallet _value, $Res Function(_LandlordWallet) _then)
      : super(_value, (v) => _then(v as _LandlordWallet));

  @override
  _LandlordWallet get _value => super._value as _LandlordWallet;

  @override
  $Res call({
    Object payableId = freezed,
    Object amount = freezed,
    Object balance = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_LandlordWallet(
      payableId: payableId == freezed
          ? _value.payableId
          : payableId as BasicTextField<int>,
      amount: amount == freezed ? _value.amount : amount as BasicTextField<int>,
      balance:
          balance == freezed ? _value.balance : balance as BasicTextField<int>,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }
}

/// @nodoc
class _$_LandlordWallet extends _LandlordWallet {
  const _$_LandlordWallet(
      {@nullable this.payableId,
      @nullable this.amount,
      @nullable this.balance,
      @nullable this.updatedAt,
      @nullable this.deletedAt})
      : super._();

  @override
  @nullable
  final BasicTextField<int> payableId;
  @override
  @nullable
  final BasicTextField<int> amount;
  @override
  @nullable
  final BasicTextField<int> balance;
  @override
  @nullable
  final DateTime updatedAt;
  @override
  @nullable
  final DateTime deletedAt;

  @override
  String toString() {
    return 'LandlordWallet(payableId: $payableId, amount: $amount, balance: $balance, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LandlordWallet &&
            (identical(other.payableId, payableId) ||
                const DeepCollectionEquality()
                    .equals(other.payableId, payableId)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality()
                    .equals(other.balance, balance)) &&
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
      const DeepCollectionEquality().hash(payableId) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$LandlordWalletCopyWith<_LandlordWallet> get copyWith =>
      __$LandlordWalletCopyWithImpl<_LandlordWallet>(this, _$identity);
}

abstract class _LandlordWallet extends LandlordWallet {
  const _LandlordWallet._() : super._();
  const factory _LandlordWallet(
      {@nullable BasicTextField<int> payableId,
      @nullable BasicTextField<int> amount,
      @nullable BasicTextField<int> balance,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) = _$_LandlordWallet;

  @override
  @nullable
  BasicTextField<int> get payableId;
  @override
  @nullable
  BasicTextField<int> get amount;
  @override
  @nullable
  BasicTextField<int> get balance;
  @override
  @nullable
  DateTime get updatedAt;
  @override
  @nullable
  DateTime get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$LandlordWalletCopyWith<_LandlordWallet> get copyWith;
}
