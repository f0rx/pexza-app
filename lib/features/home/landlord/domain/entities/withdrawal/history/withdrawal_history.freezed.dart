// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of withdrawal_history.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WithdrawalHistoryTearOff {
  const _$WithdrawalHistoryTearOff();

// ignore: unused_element
  _WithdrawalHistory call(
      {@nullable UniqueId<int> id,
      @nullable UniqueId<int> userId,
      @nullable BasicTextField<double> totalCharged,
      @nullable BasicTextField<int> amount,
      @nullable BasicTextField<double> charges,
      @nullable WithdrawalStatus status,
      @nullable UniqueId<int> payableId,
      @nullable UniqueId<String> reference,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) {
    return _WithdrawalHistory(
      id: id,
      userId: userId,
      totalCharged: totalCharged,
      amount: amount,
      charges: charges,
      status: status,
      payableId: payableId,
      reference: reference,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WithdrawalHistory = _$WithdrawalHistoryTearOff();

/// @nodoc
mixin _$WithdrawalHistory {
  /// The unique id of this history
  @nullable
  UniqueId<int> get id;

  /// The user id associated with this model
  @nullable
  UniqueId<int> get userId;

  /// The TOTAL CHARGE = amount + charges
  @nullable
  BasicTextField<double> get totalCharged;

  /// The actual amount the user applied for withdrawal
  @nullable
  BasicTextField<int> get amount;

  /// The charges for witdrawal
  @nullable
  BasicTextField<double> get charges;

  /// The status of the withdrawal
  @nullable
  WithdrawalStatus get status;

  /// The payable id associated with this withdrawal
  @nullable
  UniqueId<int> get payableId;

  /// The withdrawal reference
  @nullable
  UniqueId<String> get reference;

  /// When the model was created
  @nullable
  DateTime get createdAt;

  /// When the model was updated
  @nullable
  DateTime get updatedAt;

  /// When the model was soft-deleted
  @nullable
  DateTime get deletedAt;

  @JsonKey(ignore: true)
  $WithdrawalHistoryCopyWith<WithdrawalHistory> get copyWith;
}

/// @nodoc
abstract class $WithdrawalHistoryCopyWith<$Res> {
  factory $WithdrawalHistoryCopyWith(
          WithdrawalHistory value, $Res Function(WithdrawalHistory) then) =
      _$WithdrawalHistoryCopyWithImpl<$Res>;
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable UniqueId<int> userId,
      @nullable BasicTextField<double> totalCharged,
      @nullable BasicTextField<int> amount,
      @nullable BasicTextField<double> charges,
      @nullable WithdrawalStatus status,
      @nullable UniqueId<int> payableId,
      @nullable UniqueId<String> reference,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});
}

/// @nodoc
class _$WithdrawalHistoryCopyWithImpl<$Res>
    implements $WithdrawalHistoryCopyWith<$Res> {
  _$WithdrawalHistoryCopyWithImpl(this._value, this._then);

  final WithdrawalHistory _value;
  // ignore: unused_field
  final $Res Function(WithdrawalHistory) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object totalCharged = freezed,
    Object amount = freezed,
    Object charges = freezed,
    Object status = freezed,
    Object payableId = freezed,
    Object reference = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      userId: userId == freezed ? _value.userId : userId as UniqueId<int>,
      totalCharged: totalCharged == freezed
          ? _value.totalCharged
          : totalCharged as BasicTextField<double>,
      amount: amount == freezed ? _value.amount : amount as BasicTextField<int>,
      charges: charges == freezed
          ? _value.charges
          : charges as BasicTextField<double>,
      status: status == freezed ? _value.status : status as WithdrawalStatus,
      payableId:
          payableId == freezed ? _value.payableId : payableId as UniqueId<int>,
      reference: reference == freezed
          ? _value.reference
          : reference as UniqueId<String>,
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
abstract class _$WithdrawalHistoryCopyWith<$Res>
    implements $WithdrawalHistoryCopyWith<$Res> {
  factory _$WithdrawalHistoryCopyWith(
          _WithdrawalHistory value, $Res Function(_WithdrawalHistory) then) =
      __$WithdrawalHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable UniqueId<int> userId,
      @nullable BasicTextField<double> totalCharged,
      @nullable BasicTextField<int> amount,
      @nullable BasicTextField<double> charges,
      @nullable WithdrawalStatus status,
      @nullable UniqueId<int> payableId,
      @nullable UniqueId<String> reference,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});
}

/// @nodoc
class __$WithdrawalHistoryCopyWithImpl<$Res>
    extends _$WithdrawalHistoryCopyWithImpl<$Res>
    implements _$WithdrawalHistoryCopyWith<$Res> {
  __$WithdrawalHistoryCopyWithImpl(
      _WithdrawalHistory _value, $Res Function(_WithdrawalHistory) _then)
      : super(_value, (v) => _then(v as _WithdrawalHistory));

  @override
  _WithdrawalHistory get _value => super._value as _WithdrawalHistory;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object totalCharged = freezed,
    Object amount = freezed,
    Object charges = freezed,
    Object status = freezed,
    Object payableId = freezed,
    Object reference = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_WithdrawalHistory(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      userId: userId == freezed ? _value.userId : userId as UniqueId<int>,
      totalCharged: totalCharged == freezed
          ? _value.totalCharged
          : totalCharged as BasicTextField<double>,
      amount: amount == freezed ? _value.amount : amount as BasicTextField<int>,
      charges: charges == freezed
          ? _value.charges
          : charges as BasicTextField<double>,
      status: status == freezed ? _value.status : status as WithdrawalStatus,
      payableId:
          payableId == freezed ? _value.payableId : payableId as UniqueId<int>,
      reference: reference == freezed
          ? _value.reference
          : reference as UniqueId<String>,
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
class _$_WithdrawalHistory extends _WithdrawalHistory {
  const _$_WithdrawalHistory(
      {@nullable this.id,
      @nullable this.userId,
      @nullable this.totalCharged,
      @nullable this.amount,
      @nullable this.charges,
      @nullable this.status,
      @nullable this.payableId,
      @nullable this.reference,
      @nullable this.createdAt,
      @nullable this.updatedAt,
      @nullable this.deletedAt})
      : super._();

  @override

  /// The unique id of this history
  @nullable
  final UniqueId<int> id;
  @override

  /// The user id associated with this model
  @nullable
  final UniqueId<int> userId;
  @override

  /// The TOTAL CHARGE = amount + charges
  @nullable
  final BasicTextField<double> totalCharged;
  @override

  /// The actual amount the user applied for withdrawal
  @nullable
  final BasicTextField<int> amount;
  @override

  /// The charges for witdrawal
  @nullable
  final BasicTextField<double> charges;
  @override

  /// The status of the withdrawal
  @nullable
  final WithdrawalStatus status;
  @override

  /// The payable id associated with this withdrawal
  @nullable
  final UniqueId<int> payableId;
  @override

  /// The withdrawal reference
  @nullable
  final UniqueId<String> reference;
  @override

  /// When the model was created
  @nullable
  final DateTime createdAt;
  @override

  /// When the model was updated
  @nullable
  final DateTime updatedAt;
  @override

  /// When the model was soft-deleted
  @nullable
  final DateTime deletedAt;

  @override
  String toString() {
    return 'WithdrawalHistory(id: $id, userId: $userId, totalCharged: $totalCharged, amount: $amount, charges: $charges, status: $status, payableId: $payableId, reference: $reference, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WithdrawalHistory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.totalCharged, totalCharged) ||
                const DeepCollectionEquality()
                    .equals(other.totalCharged, totalCharged)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.charges, charges) ||
                const DeepCollectionEquality()
                    .equals(other.charges, charges)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.payableId, payableId) ||
                const DeepCollectionEquality()
                    .equals(other.payableId, payableId)) &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)) &&
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
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(totalCharged) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(charges) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(payableId) ^
      const DeepCollectionEquality().hash(reference) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$WithdrawalHistoryCopyWith<_WithdrawalHistory> get copyWith =>
      __$WithdrawalHistoryCopyWithImpl<_WithdrawalHistory>(this, _$identity);
}

abstract class _WithdrawalHistory extends WithdrawalHistory {
  const _WithdrawalHistory._() : super._();
  const factory _WithdrawalHistory(
      {@nullable UniqueId<int> id,
      @nullable UniqueId<int> userId,
      @nullable BasicTextField<double> totalCharged,
      @nullable BasicTextField<int> amount,
      @nullable BasicTextField<double> charges,
      @nullable WithdrawalStatus status,
      @nullable UniqueId<int> payableId,
      @nullable UniqueId<String> reference,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) = _$_WithdrawalHistory;

  @override

  /// The unique id of this history
  @nullable
  UniqueId<int> get id;
  @override

  /// The user id associated with this model
  @nullable
  UniqueId<int> get userId;
  @override

  /// The TOTAL CHARGE = amount + charges
  @nullable
  BasicTextField<double> get totalCharged;
  @override

  /// The actual amount the user applied for withdrawal
  @nullable
  BasicTextField<int> get amount;
  @override

  /// The charges for witdrawal
  @nullable
  BasicTextField<double> get charges;
  @override

  /// The status of the withdrawal
  @nullable
  WithdrawalStatus get status;
  @override

  /// The payable id associated with this withdrawal
  @nullable
  UniqueId<int> get payableId;
  @override

  /// The withdrawal reference
  @nullable
  UniqueId<String> get reference;
  @override

  /// When the model was created
  @nullable
  DateTime get createdAt;
  @override

  /// When the model was updated
  @nullable
  DateTime get updatedAt;
  @override

  /// When the model was soft-deleted
  @nullable
  DateTime get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$WithdrawalHistoryCopyWith<_WithdrawalHistory> get copyWith;
}
