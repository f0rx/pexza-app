// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of withdrawal_history_dto_data.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WithdrawalHistoryDTOData _$WithdrawalHistoryDTODataFromJson(
    Map<String, dynamic> json) {
  return _WithdrawalHistoryDTOData.fromJson(json);
}

/// @nodoc
class _$WithdrawalHistoryDTODataTearOff {
  const _$WithdrawalHistoryDTODataTearOff();

// ignore: unused_element
  _WithdrawalHistoryDTOData call(
      {@nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int id,
      @nullable
      @JsonKey(includeIfNull: false, name: 'user_id')
      @IntegerSerializer()
          int userId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'amount')
      @DoubleSerializer()
          double totalCharges,
      @nullable
      @JsonKey(includeIfNull: false, name: 'base_amount')
      @IntegerSerializer()
          int amount,
      @JsonKey(includeIfNull: false)
      @DoubleSerializer()
          double charges,
      @nullable
      @JsonKey(includeIfNull: false)
      @WithdrawalStatusConverter()
          WithdrawalStatus status,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payable_id')
      @IntegerSerializer()
          int payableId,
      @nullable
      @JsonKey(includeIfNull: false)
          String reference,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime deletedAt}) {
    return _WithdrawalHistoryDTOData(
      id: id,
      userId: userId,
      totalCharges: totalCharges,
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

// ignore: unused_element
  WithdrawalHistoryDTOData fromJson(Map<String, Object> json) {
    return WithdrawalHistoryDTOData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WithdrawalHistoryDTOData = _$WithdrawalHistoryDTODataTearOff();

/// @nodoc
mixin _$WithdrawalHistoryDTOData {
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  int get id;
  @nullable
  @JsonKey(includeIfNull: false, name: 'user_id')
  @IntegerSerializer()
  int get userId;
  @nullable
  @JsonKey(includeIfNull: false, name: 'amount')
  @DoubleSerializer()
  double get totalCharges;
  @nullable
  @JsonKey(includeIfNull: false, name: 'base_amount')
  @IntegerSerializer()
  int get amount;
  @JsonKey(includeIfNull: false)
  @DoubleSerializer()
  double get charges;
  @nullable
  @JsonKey(includeIfNull: false)
  @WithdrawalStatusConverter()
  WithdrawalStatus get status;
  @nullable
  @JsonKey(includeIfNull: false, name: 'payable_id')
  @IntegerSerializer()
  int get payableId;
  @nullable
  @JsonKey(includeIfNull: false)
  String get reference;
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  DateTime get createdAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  DateTime get updatedAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  DateTime get deletedAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WithdrawalHistoryDTODataCopyWith<WithdrawalHistoryDTOData> get copyWith;
}

/// @nodoc
abstract class $WithdrawalHistoryDTODataCopyWith<$Res> {
  factory $WithdrawalHistoryDTODataCopyWith(WithdrawalHistoryDTOData value,
          $Res Function(WithdrawalHistoryDTOData) then) =
      _$WithdrawalHistoryDTODataCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int id,
      @nullable
      @JsonKey(includeIfNull: false, name: 'user_id')
      @IntegerSerializer()
          int userId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'amount')
      @DoubleSerializer()
          double totalCharges,
      @nullable
      @JsonKey(includeIfNull: false, name: 'base_amount')
      @IntegerSerializer()
          int amount,
      @JsonKey(includeIfNull: false)
      @DoubleSerializer()
          double charges,
      @nullable
      @JsonKey(includeIfNull: false)
      @WithdrawalStatusConverter()
          WithdrawalStatus status,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payable_id')
      @IntegerSerializer()
          int payableId,
      @nullable
      @JsonKey(includeIfNull: false)
          String reference,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime deletedAt});
}

/// @nodoc
class _$WithdrawalHistoryDTODataCopyWithImpl<$Res>
    implements $WithdrawalHistoryDTODataCopyWith<$Res> {
  _$WithdrawalHistoryDTODataCopyWithImpl(this._value, this._then);

  final WithdrawalHistoryDTOData _value;
  // ignore: unused_field
  final $Res Function(WithdrawalHistoryDTOData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object totalCharges = freezed,
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
      id: id == freezed ? _value.id : id as int,
      userId: userId == freezed ? _value.userId : userId as int,
      totalCharges: totalCharges == freezed
          ? _value.totalCharges
          : totalCharges as double,
      amount: amount == freezed ? _value.amount : amount as int,
      charges: charges == freezed ? _value.charges : charges as double,
      status: status == freezed ? _value.status : status as WithdrawalStatus,
      payableId: payableId == freezed ? _value.payableId : payableId as int,
      reference: reference == freezed ? _value.reference : reference as String,
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
abstract class _$WithdrawalHistoryDTODataCopyWith<$Res>
    implements $WithdrawalHistoryDTODataCopyWith<$Res> {
  factory _$WithdrawalHistoryDTODataCopyWith(_WithdrawalHistoryDTOData value,
          $Res Function(_WithdrawalHistoryDTOData) then) =
      __$WithdrawalHistoryDTODataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int id,
      @nullable
      @JsonKey(includeIfNull: false, name: 'user_id')
      @IntegerSerializer()
          int userId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'amount')
      @DoubleSerializer()
          double totalCharges,
      @nullable
      @JsonKey(includeIfNull: false, name: 'base_amount')
      @IntegerSerializer()
          int amount,
      @JsonKey(includeIfNull: false)
      @DoubleSerializer()
          double charges,
      @nullable
      @JsonKey(includeIfNull: false)
      @WithdrawalStatusConverter()
          WithdrawalStatus status,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payable_id')
      @IntegerSerializer()
          int payableId,
      @nullable
      @JsonKey(includeIfNull: false)
          String reference,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime deletedAt});
}

/// @nodoc
class __$WithdrawalHistoryDTODataCopyWithImpl<$Res>
    extends _$WithdrawalHistoryDTODataCopyWithImpl<$Res>
    implements _$WithdrawalHistoryDTODataCopyWith<$Res> {
  __$WithdrawalHistoryDTODataCopyWithImpl(_WithdrawalHistoryDTOData _value,
      $Res Function(_WithdrawalHistoryDTOData) _then)
      : super(_value, (v) => _then(v as _WithdrawalHistoryDTOData));

  @override
  _WithdrawalHistoryDTOData get _value =>
      super._value as _WithdrawalHistoryDTOData;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object totalCharges = freezed,
    Object amount = freezed,
    Object charges = freezed,
    Object status = freezed,
    Object payableId = freezed,
    Object reference = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_WithdrawalHistoryDTOData(
      id: id == freezed ? _value.id : id as int,
      userId: userId == freezed ? _value.userId : userId as int,
      totalCharges: totalCharges == freezed
          ? _value.totalCharges
          : totalCharges as double,
      amount: amount == freezed ? _value.amount : amount as int,
      charges: charges == freezed ? _value.charges : charges as double,
      status: status == freezed ? _value.status : status as WithdrawalStatus,
      payableId: payableId == freezed ? _value.payableId : payableId as int,
      reference: reference == freezed ? _value.reference : reference as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WithdrawalHistoryDTOData extends _WithdrawalHistoryDTOData {
  const _$_WithdrawalHistoryDTOData(
      {@nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          this.id,
      @nullable
      @JsonKey(includeIfNull: false, name: 'user_id')
      @IntegerSerializer()
          this.userId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'amount')
      @DoubleSerializer()
          this.totalCharges,
      @nullable
      @JsonKey(includeIfNull: false, name: 'base_amount')
      @IntegerSerializer()
          this.amount,
      @JsonKey(includeIfNull: false)
      @DoubleSerializer()
          this.charges,
      @nullable
      @JsonKey(includeIfNull: false)
      @WithdrawalStatusConverter()
          this.status,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payable_id')
      @IntegerSerializer()
          this.payableId,
      @nullable
      @JsonKey(includeIfNull: false)
          this.reference,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          this.createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          this.updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          this.deletedAt})
      : super._();

  factory _$_WithdrawalHistoryDTOData.fromJson(Map<String, dynamic> json) =>
      _$_$_WithdrawalHistoryDTODataFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  final int id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'user_id')
  @IntegerSerializer()
  final int userId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'amount')
  @DoubleSerializer()
  final double totalCharges;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'base_amount')
  @IntegerSerializer()
  final int amount;
  @override
  @JsonKey(includeIfNull: false)
  @DoubleSerializer()
  final double charges;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @WithdrawalStatusConverter()
  final WithdrawalStatus status;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'payable_id')
  @IntegerSerializer()
  final int payableId;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final String reference;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  final DateTime createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  final DateTime updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  final DateTime deletedAt;

  @override
  String toString() {
    return 'WithdrawalHistoryDTOData(id: $id, userId: $userId, totalCharges: $totalCharges, amount: $amount, charges: $charges, status: $status, payableId: $payableId, reference: $reference, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WithdrawalHistoryDTOData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.totalCharges, totalCharges) ||
                const DeepCollectionEquality()
                    .equals(other.totalCharges, totalCharges)) &&
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
      const DeepCollectionEquality().hash(totalCharges) ^
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
  _$WithdrawalHistoryDTODataCopyWith<_WithdrawalHistoryDTOData> get copyWith =>
      __$WithdrawalHistoryDTODataCopyWithImpl<_WithdrawalHistoryDTOData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WithdrawalHistoryDTODataToJson(this);
  }
}

abstract class _WithdrawalHistoryDTOData extends WithdrawalHistoryDTOData {
  const _WithdrawalHistoryDTOData._() : super._();
  const factory _WithdrawalHistoryDTOData(
      {@nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int id,
      @nullable
      @JsonKey(includeIfNull: false, name: 'user_id')
      @IntegerSerializer()
          int userId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'amount')
      @DoubleSerializer()
          double totalCharges,
      @nullable
      @JsonKey(includeIfNull: false, name: 'base_amount')
      @IntegerSerializer()
          int amount,
      @JsonKey(includeIfNull: false)
      @DoubleSerializer()
          double charges,
      @nullable
      @JsonKey(includeIfNull: false)
      @WithdrawalStatusConverter()
          WithdrawalStatus status,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payable_id')
      @IntegerSerializer()
          int payableId,
      @nullable
      @JsonKey(includeIfNull: false)
          String reference,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime deletedAt}) = _$_WithdrawalHistoryDTOData;

  factory _WithdrawalHistoryDTOData.fromJson(Map<String, dynamic> json) =
      _$_WithdrawalHistoryDTOData.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  int get id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'user_id')
  @IntegerSerializer()
  int get userId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'amount')
  @DoubleSerializer()
  double get totalCharges;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'base_amount')
  @IntegerSerializer()
  int get amount;
  @override
  @JsonKey(includeIfNull: false)
  @DoubleSerializer()
  double get charges;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @WithdrawalStatusConverter()
  WithdrawalStatus get status;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'payable_id')
  @IntegerSerializer()
  int get payableId;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  String get reference;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  DateTime get updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  DateTime get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$WithdrawalHistoryDTODataCopyWith<_WithdrawalHistoryDTOData> get copyWith;
}
