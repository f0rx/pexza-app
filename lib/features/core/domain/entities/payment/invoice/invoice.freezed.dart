// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of invoice.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$InvoiceTearOff {
  const _$InvoiceTearOff();

// ignore: unused_element
  _Invoice call(
      {@nullable UniqueId<int> id,
      @nullable InvoiceMeta meta,
      @nullable EmailAddress email,
      @nullable AmountField<num> amount,
      @nullable AmountField<int> baseAmount,
      @nullable BasicTextField<double> charges,
      @nullable UniqueId<int> duration,
      @nullable UniqueId<int> assignmentId,
      @nullable InvoiceStatus invoiceStatus,
      @nullable UniqueId<String> invoiceNo,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) {
    return _Invoice(
      id: id,
      meta: meta,
      email: email,
      amount: amount,
      baseAmount: baseAmount,
      charges: charges,
      duration: duration,
      assignmentId: assignmentId,
      invoiceStatus: invoiceStatus,
      invoiceNo: invoiceNo,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Invoice = _$InvoiceTearOff();

/// @nodoc
mixin _$Invoice {
  /// Invoice ID
  @nullable
  UniqueId<int> get id;

  /// Metadata assoc. with invoice
  @nullable
  InvoiceMeta get meta;

  /// User e-mail address that owns this card
  @nullable
  EmailAddress get email;

  /// Amount to charge for invoice
  @nullable
  AmountField<num> get amount;

  /// The actual amount paid for this invoice
  @nullable
  AmountField<int> get baseAmount;

  /// Charges for this invoice
  @nullable
  BasicTextField<double> get charges;

  /// Assignment duration
  @nullable
  UniqueId<int> get duration;

  /// Assignment ID
  @nullable
  UniqueId<int> get assignmentId;

  /// Invoice status [generated, failed...]
  @nullable
  InvoiceStatus get invoiceStatus;

  /// Invoice Number
  @nullable
  UniqueId<String> get invoiceNo;

  /// Date model was created
  @nullable
  DateTime get createdAt;

  /// Date model was updated
  @nullable
  DateTime get updatedAt;

  /// Date model was deleted
  @nullable
  DateTime get deletedAt;

  @JsonKey(ignore: true)
  $InvoiceCopyWith<Invoice> get copyWith;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res>;
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable InvoiceMeta meta,
      @nullable EmailAddress email,
      @nullable AmountField<num> amount,
      @nullable AmountField<int> baseAmount,
      @nullable BasicTextField<double> charges,
      @nullable UniqueId<int> duration,
      @nullable UniqueId<int> assignmentId,
      @nullable InvoiceStatus invoiceStatus,
      @nullable UniqueId<String> invoiceNo,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});

  $InvoiceMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res> implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  final Invoice _value;
  // ignore: unused_field
  final $Res Function(Invoice) _then;

  @override
  $Res call({
    Object id = freezed,
    Object meta = freezed,
    Object email = freezed,
    Object amount = freezed,
    Object baseAmount = freezed,
    Object charges = freezed,
    Object duration = freezed,
    Object assignmentId = freezed,
    Object invoiceStatus = freezed,
    Object invoiceNo = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      meta: meta == freezed ? _value.meta : meta as InvoiceMeta,
      email: email == freezed ? _value.email : email as EmailAddress,
      amount: amount == freezed ? _value.amount : amount as AmountField<num>,
      baseAmount: baseAmount == freezed
          ? _value.baseAmount
          : baseAmount as AmountField<int>,
      charges: charges == freezed
          ? _value.charges
          : charges as BasicTextField<double>,
      duration:
          duration == freezed ? _value.duration : duration as UniqueId<int>,
      assignmentId: assignmentId == freezed
          ? _value.assignmentId
          : assignmentId as UniqueId<int>,
      invoiceStatus: invoiceStatus == freezed
          ? _value.invoiceStatus
          : invoiceStatus as InvoiceStatus,
      invoiceNo: invoiceNo == freezed
          ? _value.invoiceNo
          : invoiceNo as UniqueId<String>,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }

  @override
  $InvoiceMetaCopyWith<$Res> get meta {
    if (_value.meta == null) {
      return null;
    }
    return $InvoiceMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$InvoiceCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$InvoiceCopyWith(_Invoice value, $Res Function(_Invoice) then) =
      __$InvoiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable InvoiceMeta meta,
      @nullable EmailAddress email,
      @nullable AmountField<num> amount,
      @nullable AmountField<int> baseAmount,
      @nullable BasicTextField<double> charges,
      @nullable UniqueId<int> duration,
      @nullable UniqueId<int> assignmentId,
      @nullable InvoiceStatus invoiceStatus,
      @nullable UniqueId<String> invoiceNo,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});

  @override
  $InvoiceMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$InvoiceCopyWithImpl<$Res> extends _$InvoiceCopyWithImpl<$Res>
    implements _$InvoiceCopyWith<$Res> {
  __$InvoiceCopyWithImpl(_Invoice _value, $Res Function(_Invoice) _then)
      : super(_value, (v) => _then(v as _Invoice));

  @override
  _Invoice get _value => super._value as _Invoice;

  @override
  $Res call({
    Object id = freezed,
    Object meta = freezed,
    Object email = freezed,
    Object amount = freezed,
    Object baseAmount = freezed,
    Object charges = freezed,
    Object duration = freezed,
    Object assignmentId = freezed,
    Object invoiceStatus = freezed,
    Object invoiceNo = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_Invoice(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      meta: meta == freezed ? _value.meta : meta as InvoiceMeta,
      email: email == freezed ? _value.email : email as EmailAddress,
      amount: amount == freezed ? _value.amount : amount as AmountField<num>,
      baseAmount: baseAmount == freezed
          ? _value.baseAmount
          : baseAmount as AmountField<int>,
      charges: charges == freezed
          ? _value.charges
          : charges as BasicTextField<double>,
      duration:
          duration == freezed ? _value.duration : duration as UniqueId<int>,
      assignmentId: assignmentId == freezed
          ? _value.assignmentId
          : assignmentId as UniqueId<int>,
      invoiceStatus: invoiceStatus == freezed
          ? _value.invoiceStatus
          : invoiceStatus as InvoiceStatus,
      invoiceNo: invoiceNo == freezed
          ? _value.invoiceNo
          : invoiceNo as UniqueId<String>,
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
class _$_Invoice extends _Invoice {
  const _$_Invoice(
      {@nullable this.id,
      @nullable this.meta,
      @nullable this.email,
      @nullable this.amount,
      @nullable this.baseAmount,
      @nullable this.charges,
      @nullable this.duration,
      @nullable this.assignmentId,
      @nullable this.invoiceStatus,
      @nullable this.invoiceNo,
      @nullable this.createdAt,
      @nullable this.updatedAt,
      @nullable this.deletedAt})
      : super._();

  @override

  /// Invoice ID
  @nullable
  final UniqueId<int> id;
  @override

  /// Metadata assoc. with invoice
  @nullable
  final InvoiceMeta meta;
  @override

  /// User e-mail address that owns this card
  @nullable
  final EmailAddress email;
  @override

  /// Amount to charge for invoice
  @nullable
  final AmountField<num> amount;
  @override

  /// The actual amount paid for this invoice
  @nullable
  final AmountField<int> baseAmount;
  @override

  /// Charges for this invoice
  @nullable
  final BasicTextField<double> charges;
  @override

  /// Assignment duration
  @nullable
  final UniqueId<int> duration;
  @override

  /// Assignment ID
  @nullable
  final UniqueId<int> assignmentId;
  @override

  /// Invoice status [generated, failed...]
  @nullable
  final InvoiceStatus invoiceStatus;
  @override

  /// Invoice Number
  @nullable
  final UniqueId<String> invoiceNo;
  @override

  /// Date model was created
  @nullable
  final DateTime createdAt;
  @override

  /// Date model was updated
  @nullable
  final DateTime updatedAt;
  @override

  /// Date model was deleted
  @nullable
  final DateTime deletedAt;

  @override
  String toString() {
    return 'Invoice(id: $id, meta: $meta, email: $email, amount: $amount, baseAmount: $baseAmount, charges: $charges, duration: $duration, assignmentId: $assignmentId, invoiceStatus: $invoiceStatus, invoiceNo: $invoiceNo, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Invoice &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.baseAmount, baseAmount) ||
                const DeepCollectionEquality()
                    .equals(other.baseAmount, baseAmount)) &&
            (identical(other.charges, charges) ||
                const DeepCollectionEquality()
                    .equals(other.charges, charges)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.assignmentId, assignmentId) ||
                const DeepCollectionEquality()
                    .equals(other.assignmentId, assignmentId)) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceStatus, invoiceStatus)) &&
            (identical(other.invoiceNo, invoiceNo) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceNo, invoiceNo)) &&
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
      const DeepCollectionEquality().hash(meta) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(baseAmount) ^
      const DeepCollectionEquality().hash(charges) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(assignmentId) ^
      const DeepCollectionEquality().hash(invoiceStatus) ^
      const DeepCollectionEquality().hash(invoiceNo) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$InvoiceCopyWith<_Invoice> get copyWith =>
      __$InvoiceCopyWithImpl<_Invoice>(this, _$identity);
}

abstract class _Invoice extends Invoice {
  const _Invoice._() : super._();
  const factory _Invoice(
      {@nullable UniqueId<int> id,
      @nullable InvoiceMeta meta,
      @nullable EmailAddress email,
      @nullable AmountField<num> amount,
      @nullable AmountField<int> baseAmount,
      @nullable BasicTextField<double> charges,
      @nullable UniqueId<int> duration,
      @nullable UniqueId<int> assignmentId,
      @nullable InvoiceStatus invoiceStatus,
      @nullable UniqueId<String> invoiceNo,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) = _$_Invoice;

  @override

  /// Invoice ID
  @nullable
  UniqueId<int> get id;
  @override

  /// Metadata assoc. with invoice
  @nullable
  InvoiceMeta get meta;
  @override

  /// User e-mail address that owns this card
  @nullable
  EmailAddress get email;
  @override

  /// Amount to charge for invoice
  @nullable
  AmountField<num> get amount;
  @override

  /// The actual amount paid for this invoice
  @nullable
  AmountField<int> get baseAmount;
  @override

  /// Charges for this invoice
  @nullable
  BasicTextField<double> get charges;
  @override

  /// Assignment duration
  @nullable
  UniqueId<int> get duration;
  @override

  /// Assignment ID
  @nullable
  UniqueId<int> get assignmentId;
  @override

  /// Invoice status [generated, failed...]
  @nullable
  InvoiceStatus get invoiceStatus;
  @override

  /// Invoice Number
  @nullable
  UniqueId<String> get invoiceNo;
  @override

  /// Date model was created
  @nullable
  DateTime get createdAt;
  @override

  /// Date model was updated
  @nullable
  DateTime get updatedAt;
  @override

  /// Date model was deleted
  @nullable
  DateTime get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$InvoiceCopyWith<_Invoice> get copyWith;
}
