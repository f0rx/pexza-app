// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of rent_payment_history_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RentPaymentHistoryDTO _$RentPaymentHistoryDTOFromJson(
    Map<String, dynamic> json) {
  return _RentPaymentHistoryDTO.fromJson(json);
}

/// @nodoc
class _$RentPaymentHistoryDTOTearOff {
  const _$RentPaymentHistoryDTOTearOff();

// ignore: unused_element
  _RentPaymentHistoryDTO call(
      {@nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int id,
      @nullable
      @JsonKey(includeIfNull: false, name: 'user_id')
      @IntegerSerializer()
          int userId,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int duration,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int currency,
      @nullable
      @JsonKey(includeIfNull: false, name: 'amount')
      @DoubleSerializer()
          double totalAmount,
      @nullable
      @JsonKey(includeIfNull: false, name: 'base_amount')
      @IntegerSerializer()
          int amount,
      @nullable
      @JsonKey(includeIfNull: false)
      @DoubleSerializer()
          double charges,
      @nullable
      @JsonKey(includeIfNull: false, name: 'assignment_id')
      @IntegerSerializer()
          int assignmentId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'invoice_id')
      @IntegerSerializer()
          int invoiceId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'chargeable_id')
      @IntegerSerializer()
          int chargeableId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'invoice_no', defaultValue: '')
      @IntegerSerializer()
          String invoiceNumber,
      @nullable
      @JsonKey(includeIfNull: false)
          InvoiceDTO invoice,
      @nullable
      @JsonKey(includeIfNull: false, name: 'effective_from')
      @TimestampConverter()
          DateTime effeciveFrom,
      @nullable
      @JsonKey(includeIfNull: false, name: 'expire_at')
      @TimestampConverter()
          DateTime expiresAt,
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
    return _RentPaymentHistoryDTO(
      id: id,
      userId: userId,
      duration: duration,
      currency: currency,
      totalAmount: totalAmount,
      amount: amount,
      charges: charges,
      assignmentId: assignmentId,
      invoiceId: invoiceId,
      chargeableId: chargeableId,
      invoiceNumber: invoiceNumber,
      invoice: invoice,
      effeciveFrom: effeciveFrom,
      expiresAt: expiresAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

// ignore: unused_element
  RentPaymentHistoryDTO fromJson(Map<String, Object> json) {
    return RentPaymentHistoryDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RentPaymentHistoryDTO = _$RentPaymentHistoryDTOTearOff();

/// @nodoc
mixin _$RentPaymentHistoryDTO {
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  int get id;
  @nullable
  @JsonKey(includeIfNull: false, name: 'user_id')
  @IntegerSerializer()
  int get userId;
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  int get duration;
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  int get currency;
  @nullable
  @JsonKey(includeIfNull: false, name: 'amount')
  @DoubleSerializer()
  double get totalAmount;
  @nullable
  @JsonKey(includeIfNull: false, name: 'base_amount')
  @IntegerSerializer()
  int get amount;
  @nullable
  @JsonKey(includeIfNull: false)
  @DoubleSerializer()
  double get charges;
  @nullable
  @JsonKey(includeIfNull: false, name: 'assignment_id')
  @IntegerSerializer()
  int get assignmentId;
  @nullable
  @JsonKey(includeIfNull: false, name: 'invoice_id')
  @IntegerSerializer()
  int get invoiceId;
  @nullable
  @JsonKey(includeIfNull: false, name: 'chargeable_id')
  @IntegerSerializer()
  int get chargeableId;
  @nullable
  @JsonKey(includeIfNull: false, name: 'invoice_no', defaultValue: '')
  @IntegerSerializer()
  String get invoiceNumber;
  @nullable
  @JsonKey(includeIfNull: false)
  InvoiceDTO get invoice;
  @nullable
  @JsonKey(includeIfNull: false, name: 'effective_from')
  @TimestampConverter()
  DateTime get effeciveFrom;
  @nullable
  @JsonKey(includeIfNull: false, name: 'expire_at')
  @TimestampConverter()
  DateTime get expiresAt;
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
  $RentPaymentHistoryDTOCopyWith<RentPaymentHistoryDTO> get copyWith;
}

/// @nodoc
abstract class $RentPaymentHistoryDTOCopyWith<$Res> {
  factory $RentPaymentHistoryDTOCopyWith(RentPaymentHistoryDTO value,
          $Res Function(RentPaymentHistoryDTO) then) =
      _$RentPaymentHistoryDTOCopyWithImpl<$Res>;
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
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int duration,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int currency,
      @nullable
      @JsonKey(includeIfNull: false, name: 'amount')
      @DoubleSerializer()
          double totalAmount,
      @nullable
      @JsonKey(includeIfNull: false, name: 'base_amount')
      @IntegerSerializer()
          int amount,
      @nullable
      @JsonKey(includeIfNull: false)
      @DoubleSerializer()
          double charges,
      @nullable
      @JsonKey(includeIfNull: false, name: 'assignment_id')
      @IntegerSerializer()
          int assignmentId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'invoice_id')
      @IntegerSerializer()
          int invoiceId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'chargeable_id')
      @IntegerSerializer()
          int chargeableId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'invoice_no', defaultValue: '')
      @IntegerSerializer()
          String invoiceNumber,
      @nullable
      @JsonKey(includeIfNull: false)
          InvoiceDTO invoice,
      @nullable
      @JsonKey(includeIfNull: false, name: 'effective_from')
      @TimestampConverter()
          DateTime effeciveFrom,
      @nullable
      @JsonKey(includeIfNull: false, name: 'expire_at')
      @TimestampConverter()
          DateTime expiresAt,
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

  $InvoiceDTOCopyWith<$Res> get invoice;
}

/// @nodoc
class _$RentPaymentHistoryDTOCopyWithImpl<$Res>
    implements $RentPaymentHistoryDTOCopyWith<$Res> {
  _$RentPaymentHistoryDTOCopyWithImpl(this._value, this._then);

  final RentPaymentHistoryDTO _value;
  // ignore: unused_field
  final $Res Function(RentPaymentHistoryDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object duration = freezed,
    Object currency = freezed,
    Object totalAmount = freezed,
    Object amount = freezed,
    Object charges = freezed,
    Object assignmentId = freezed,
    Object invoiceId = freezed,
    Object chargeableId = freezed,
    Object invoiceNumber = freezed,
    Object invoice = freezed,
    Object effeciveFrom = freezed,
    Object expiresAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      userId: userId == freezed ? _value.userId : userId as int,
      duration: duration == freezed ? _value.duration : duration as int,
      currency: currency == freezed ? _value.currency : currency as int,
      totalAmount:
          totalAmount == freezed ? _value.totalAmount : totalAmount as double,
      amount: amount == freezed ? _value.amount : amount as int,
      charges: charges == freezed ? _value.charges : charges as double,
      assignmentId:
          assignmentId == freezed ? _value.assignmentId : assignmentId as int,
      invoiceId: invoiceId == freezed ? _value.invoiceId : invoiceId as int,
      chargeableId:
          chargeableId == freezed ? _value.chargeableId : chargeableId as int,
      invoiceNumber: invoiceNumber == freezed
          ? _value.invoiceNumber
          : invoiceNumber as String,
      invoice: invoice == freezed ? _value.invoice : invoice as InvoiceDTO,
      effeciveFrom: effeciveFrom == freezed
          ? _value.effeciveFrom
          : effeciveFrom as DateTime,
      expiresAt:
          expiresAt == freezed ? _value.expiresAt : expiresAt as DateTime,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }

  @override
  $InvoiceDTOCopyWith<$Res> get invoice {
    if (_value.invoice == null) {
      return null;
    }
    return $InvoiceDTOCopyWith<$Res>(_value.invoice, (value) {
      return _then(_value.copyWith(invoice: value));
    });
  }
}

/// @nodoc
abstract class _$RentPaymentHistoryDTOCopyWith<$Res>
    implements $RentPaymentHistoryDTOCopyWith<$Res> {
  factory _$RentPaymentHistoryDTOCopyWith(_RentPaymentHistoryDTO value,
          $Res Function(_RentPaymentHistoryDTO) then) =
      __$RentPaymentHistoryDTOCopyWithImpl<$Res>;
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
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int duration,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int currency,
      @nullable
      @JsonKey(includeIfNull: false, name: 'amount')
      @DoubleSerializer()
          double totalAmount,
      @nullable
      @JsonKey(includeIfNull: false, name: 'base_amount')
      @IntegerSerializer()
          int amount,
      @nullable
      @JsonKey(includeIfNull: false)
      @DoubleSerializer()
          double charges,
      @nullable
      @JsonKey(includeIfNull: false, name: 'assignment_id')
      @IntegerSerializer()
          int assignmentId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'invoice_id')
      @IntegerSerializer()
          int invoiceId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'chargeable_id')
      @IntegerSerializer()
          int chargeableId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'invoice_no', defaultValue: '')
      @IntegerSerializer()
          String invoiceNumber,
      @nullable
      @JsonKey(includeIfNull: false)
          InvoiceDTO invoice,
      @nullable
      @JsonKey(includeIfNull: false, name: 'effective_from')
      @TimestampConverter()
          DateTime effeciveFrom,
      @nullable
      @JsonKey(includeIfNull: false, name: 'expire_at')
      @TimestampConverter()
          DateTime expiresAt,
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

  @override
  $InvoiceDTOCopyWith<$Res> get invoice;
}

/// @nodoc
class __$RentPaymentHistoryDTOCopyWithImpl<$Res>
    extends _$RentPaymentHistoryDTOCopyWithImpl<$Res>
    implements _$RentPaymentHistoryDTOCopyWith<$Res> {
  __$RentPaymentHistoryDTOCopyWithImpl(_RentPaymentHistoryDTO _value,
      $Res Function(_RentPaymentHistoryDTO) _then)
      : super(_value, (v) => _then(v as _RentPaymentHistoryDTO));

  @override
  _RentPaymentHistoryDTO get _value => super._value as _RentPaymentHistoryDTO;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object duration = freezed,
    Object currency = freezed,
    Object totalAmount = freezed,
    Object amount = freezed,
    Object charges = freezed,
    Object assignmentId = freezed,
    Object invoiceId = freezed,
    Object chargeableId = freezed,
    Object invoiceNumber = freezed,
    Object invoice = freezed,
    Object effeciveFrom = freezed,
    Object expiresAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_RentPaymentHistoryDTO(
      id: id == freezed ? _value.id : id as int,
      userId: userId == freezed ? _value.userId : userId as int,
      duration: duration == freezed ? _value.duration : duration as int,
      currency: currency == freezed ? _value.currency : currency as int,
      totalAmount:
          totalAmount == freezed ? _value.totalAmount : totalAmount as double,
      amount: amount == freezed ? _value.amount : amount as int,
      charges: charges == freezed ? _value.charges : charges as double,
      assignmentId:
          assignmentId == freezed ? _value.assignmentId : assignmentId as int,
      invoiceId: invoiceId == freezed ? _value.invoiceId : invoiceId as int,
      chargeableId:
          chargeableId == freezed ? _value.chargeableId : chargeableId as int,
      invoiceNumber: invoiceNumber == freezed
          ? _value.invoiceNumber
          : invoiceNumber as String,
      invoice: invoice == freezed ? _value.invoice : invoice as InvoiceDTO,
      effeciveFrom: effeciveFrom == freezed
          ? _value.effeciveFrom
          : effeciveFrom as DateTime,
      expiresAt:
          expiresAt == freezed ? _value.expiresAt : expiresAt as DateTime,
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
class _$_RentPaymentHistoryDTO extends _RentPaymentHistoryDTO {
  const _$_RentPaymentHistoryDTO(
      {@nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          this.id,
      @nullable
      @JsonKey(includeIfNull: false, name: 'user_id')
      @IntegerSerializer()
          this.userId,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          this.duration,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          this.currency,
      @nullable
      @JsonKey(includeIfNull: false, name: 'amount')
      @DoubleSerializer()
          this.totalAmount,
      @nullable
      @JsonKey(includeIfNull: false, name: 'base_amount')
      @IntegerSerializer()
          this.amount,
      @nullable
      @JsonKey(includeIfNull: false)
      @DoubleSerializer()
          this.charges,
      @nullable
      @JsonKey(includeIfNull: false, name: 'assignment_id')
      @IntegerSerializer()
          this.assignmentId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'invoice_id')
      @IntegerSerializer()
          this.invoiceId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'chargeable_id')
      @IntegerSerializer()
          this.chargeableId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'invoice_no', defaultValue: '')
      @IntegerSerializer()
          this.invoiceNumber,
      @nullable
      @JsonKey(includeIfNull: false)
          this.invoice,
      @nullable
      @JsonKey(includeIfNull: false, name: 'effective_from')
      @TimestampConverter()
          this.effeciveFrom,
      @nullable
      @JsonKey(includeIfNull: false, name: 'expire_at')
      @TimestampConverter()
          this.expiresAt,
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

  factory _$_RentPaymentHistoryDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_RentPaymentHistoryDTOFromJson(json);

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
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  final int duration;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  final int currency;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'amount')
  @DoubleSerializer()
  final double totalAmount;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'base_amount')
  @IntegerSerializer()
  final int amount;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @DoubleSerializer()
  final double charges;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'assignment_id')
  @IntegerSerializer()
  final int assignmentId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'invoice_id')
  @IntegerSerializer()
  final int invoiceId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'chargeable_id')
  @IntegerSerializer()
  final int chargeableId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'invoice_no', defaultValue: '')
  @IntegerSerializer()
  final String invoiceNumber;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final InvoiceDTO invoice;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'effective_from')
  @TimestampConverter()
  final DateTime effeciveFrom;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'expire_at')
  @TimestampConverter()
  final DateTime expiresAt;
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
    return 'RentPaymentHistoryDTO(id: $id, userId: $userId, duration: $duration, currency: $currency, totalAmount: $totalAmount, amount: $amount, charges: $charges, assignmentId: $assignmentId, invoiceId: $invoiceId, chargeableId: $chargeableId, invoiceNumber: $invoiceNumber, invoice: $invoice, effeciveFrom: $effeciveFrom, expiresAt: $expiresAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RentPaymentHistoryDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAmount, totalAmount)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.charges, charges) ||
                const DeepCollectionEquality()
                    .equals(other.charges, charges)) &&
            (identical(other.assignmentId, assignmentId) ||
                const DeepCollectionEquality()
                    .equals(other.assignmentId, assignmentId)) &&
            (identical(other.invoiceId, invoiceId) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceId, invoiceId)) &&
            (identical(other.chargeableId, chargeableId) ||
                const DeepCollectionEquality()
                    .equals(other.chargeableId, chargeableId)) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceNumber, invoiceNumber)) &&
            (identical(other.invoice, invoice) ||
                const DeepCollectionEquality()
                    .equals(other.invoice, invoice)) &&
            (identical(other.effeciveFrom, effeciveFrom) ||
                const DeepCollectionEquality()
                    .equals(other.effeciveFrom, effeciveFrom)) &&
            (identical(other.expiresAt, expiresAt) ||
                const DeepCollectionEquality()
                    .equals(other.expiresAt, expiresAt)) &&
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
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(totalAmount) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(charges) ^
      const DeepCollectionEquality().hash(assignmentId) ^
      const DeepCollectionEquality().hash(invoiceId) ^
      const DeepCollectionEquality().hash(chargeableId) ^
      const DeepCollectionEquality().hash(invoiceNumber) ^
      const DeepCollectionEquality().hash(invoice) ^
      const DeepCollectionEquality().hash(effeciveFrom) ^
      const DeepCollectionEquality().hash(expiresAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$RentPaymentHistoryDTOCopyWith<_RentPaymentHistoryDTO> get copyWith =>
      __$RentPaymentHistoryDTOCopyWithImpl<_RentPaymentHistoryDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RentPaymentHistoryDTOToJson(this);
  }
}

abstract class _RentPaymentHistoryDTO extends RentPaymentHistoryDTO {
  const _RentPaymentHistoryDTO._() : super._();
  const factory _RentPaymentHistoryDTO(
      {@nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int id,
      @nullable
      @JsonKey(includeIfNull: false, name: 'user_id')
      @IntegerSerializer()
          int userId,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int duration,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int currency,
      @nullable
      @JsonKey(includeIfNull: false, name: 'amount')
      @DoubleSerializer()
          double totalAmount,
      @nullable
      @JsonKey(includeIfNull: false, name: 'base_amount')
      @IntegerSerializer()
          int amount,
      @nullable
      @JsonKey(includeIfNull: false)
      @DoubleSerializer()
          double charges,
      @nullable
      @JsonKey(includeIfNull: false, name: 'assignment_id')
      @IntegerSerializer()
          int assignmentId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'invoice_id')
      @IntegerSerializer()
          int invoiceId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'chargeable_id')
      @IntegerSerializer()
          int chargeableId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'invoice_no', defaultValue: '')
      @IntegerSerializer()
          String invoiceNumber,
      @nullable
      @JsonKey(includeIfNull: false)
          InvoiceDTO invoice,
      @nullable
      @JsonKey(includeIfNull: false, name: 'effective_from')
      @TimestampConverter()
          DateTime effeciveFrom,
      @nullable
      @JsonKey(includeIfNull: false, name: 'expire_at')
      @TimestampConverter()
          DateTime expiresAt,
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
          DateTime deletedAt}) = _$_RentPaymentHistoryDTO;

  factory _RentPaymentHistoryDTO.fromJson(Map<String, dynamic> json) =
      _$_RentPaymentHistoryDTO.fromJson;

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
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  int get duration;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  int get currency;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'amount')
  @DoubleSerializer()
  double get totalAmount;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'base_amount')
  @IntegerSerializer()
  int get amount;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @DoubleSerializer()
  double get charges;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'assignment_id')
  @IntegerSerializer()
  int get assignmentId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'invoice_id')
  @IntegerSerializer()
  int get invoiceId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'chargeable_id')
  @IntegerSerializer()
  int get chargeableId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'invoice_no', defaultValue: '')
  @IntegerSerializer()
  String get invoiceNumber;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  InvoiceDTO get invoice;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'effective_from')
  @TimestampConverter()
  DateTime get effeciveFrom;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'expire_at')
  @TimestampConverter()
  DateTime get expiresAt;
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
  _$RentPaymentHistoryDTOCopyWith<_RentPaymentHistoryDTO> get copyWith;
}
