// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of invoice_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
InvoiceDTO _$InvoiceDTOFromJson(Map<String, dynamic> json) {
  return _InvoiceDTO.fromJson(json);
}

/// @nodoc
class _$InvoiceDTOTearOff {
  const _$InvoiceDTOTearOff();

// ignore: unused_element
  _InvoiceDTO call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false)
          PaymentMetaDTO meta,
      @nullable
      @JsonKey(includeIfNull: false, name: 'assignment_id')
      @IntegerSerializer()
          int assignmentId,
      @nullable
      @JsonKey(includeIfNull: false)
      @NumSerializer()
          num amount,
      @nullable
      @JsonKey(includeIfNull: false, name: 'base_amount')
      @IntegerSerializer()
          int baseAmount,
      @nullable
      @JsonKey(includeIfNull: false)
      @DoubleSerializer()
          double charges,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int duration,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'invoice_no')
          String invoiceNumber,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt}) {
    return _InvoiceDTO(
      id: id,
      meta: meta,
      assignmentId: assignmentId,
      amount: amount,
      baseAmount: baseAmount,
      charges: charges,
      duration: duration,
      status: status,
      invoiceNumber: invoiceNumber,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

// ignore: unused_element
  InvoiceDTO fromJson(Map<String, Object> json) {
    return InvoiceDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $InvoiceDTO = _$InvoiceDTOTearOff();

/// @nodoc
mixin _$InvoiceDTO {
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  @nullable
  @JsonKey(includeIfNull: false)
  PaymentMetaDTO get meta;
  @nullable
  @JsonKey(includeIfNull: false, name: 'assignment_id')
  @IntegerSerializer()
  int get assignmentId;
  @nullable
  @JsonKey(includeIfNull: false)
  @NumSerializer()
  num get amount;
  @nullable
  @JsonKey(includeIfNull: false, name: 'base_amount')
  @IntegerSerializer()
  int get baseAmount;
  @nullable
  @JsonKey(includeIfNull: false)
  @DoubleSerializer()
  double get charges;
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  int get duration;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get status;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'invoice_no')
  String get invoiceNumber;
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  String get createdAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  String get updatedAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  String get deletedAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $InvoiceDTOCopyWith<InvoiceDTO> get copyWith;
}

/// @nodoc
abstract class $InvoiceDTOCopyWith<$Res> {
  factory $InvoiceDTOCopyWith(
          InvoiceDTO value, $Res Function(InvoiceDTO) then) =
      _$InvoiceDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false)
          PaymentMetaDTO meta,
      @nullable
      @JsonKey(includeIfNull: false, name: 'assignment_id')
      @IntegerSerializer()
          int assignmentId,
      @nullable
      @JsonKey(includeIfNull: false)
      @NumSerializer()
          num amount,
      @nullable
      @JsonKey(includeIfNull: false, name: 'base_amount')
      @IntegerSerializer()
          int baseAmount,
      @nullable
      @JsonKey(includeIfNull: false)
      @DoubleSerializer()
          double charges,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int duration,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'invoice_no')
          String invoiceNumber,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt});

  $PaymentMetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class _$InvoiceDTOCopyWithImpl<$Res> implements $InvoiceDTOCopyWith<$Res> {
  _$InvoiceDTOCopyWithImpl(this._value, this._then);

  final InvoiceDTO _value;
  // ignore: unused_field
  final $Res Function(InvoiceDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object meta = freezed,
    Object assignmentId = freezed,
    Object amount = freezed,
    Object baseAmount = freezed,
    Object charges = freezed,
    Object duration = freezed,
    Object status = freezed,
    Object invoiceNumber = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      meta: meta == freezed ? _value.meta : meta as PaymentMetaDTO,
      assignmentId:
          assignmentId == freezed ? _value.assignmentId : assignmentId as int,
      amount: amount == freezed ? _value.amount : amount as num,
      baseAmount: baseAmount == freezed ? _value.baseAmount : baseAmount as int,
      charges: charges == freezed ? _value.charges : charges as double,
      duration: duration == freezed ? _value.duration : duration as int,
      status: status == freezed ? _value.status : status as String,
      invoiceNumber: invoiceNumber == freezed
          ? _value.invoiceNumber
          : invoiceNumber as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }

  @override
  $PaymentMetaDTOCopyWith<$Res> get meta {
    if (_value.meta == null) {
      return null;
    }
    return $PaymentMetaDTOCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$InvoiceDTOCopyWith<$Res> implements $InvoiceDTOCopyWith<$Res> {
  factory _$InvoiceDTOCopyWith(
          _InvoiceDTO value, $Res Function(_InvoiceDTO) then) =
      __$InvoiceDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false)
          PaymentMetaDTO meta,
      @nullable
      @JsonKey(includeIfNull: false, name: 'assignment_id')
      @IntegerSerializer()
          int assignmentId,
      @nullable
      @JsonKey(includeIfNull: false)
      @NumSerializer()
          num amount,
      @nullable
      @JsonKey(includeIfNull: false, name: 'base_amount')
      @IntegerSerializer()
          int baseAmount,
      @nullable
      @JsonKey(includeIfNull: false)
      @DoubleSerializer()
          double charges,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int duration,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'invoice_no')
          String invoiceNumber,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt});

  @override
  $PaymentMetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class __$InvoiceDTOCopyWithImpl<$Res> extends _$InvoiceDTOCopyWithImpl<$Res>
    implements _$InvoiceDTOCopyWith<$Res> {
  __$InvoiceDTOCopyWithImpl(
      _InvoiceDTO _value, $Res Function(_InvoiceDTO) _then)
      : super(_value, (v) => _then(v as _InvoiceDTO));

  @override
  _InvoiceDTO get _value => super._value as _InvoiceDTO;

  @override
  $Res call({
    Object id = freezed,
    Object meta = freezed,
    Object assignmentId = freezed,
    Object amount = freezed,
    Object baseAmount = freezed,
    Object charges = freezed,
    Object duration = freezed,
    Object status = freezed,
    Object invoiceNumber = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_InvoiceDTO(
      id: id == freezed ? _value.id : id as int,
      meta: meta == freezed ? _value.meta : meta as PaymentMetaDTO,
      assignmentId:
          assignmentId == freezed ? _value.assignmentId : assignmentId as int,
      amount: amount == freezed ? _value.amount : amount as num,
      baseAmount: baseAmount == freezed ? _value.baseAmount : baseAmount as int,
      charges: charges == freezed ? _value.charges : charges as double,
      duration: duration == freezed ? _value.duration : duration as int,
      status: status == freezed ? _value.status : status as String,
      invoiceNumber: invoiceNumber == freezed
          ? _value.invoiceNumber
          : invoiceNumber as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_InvoiceDTO extends _InvoiceDTO {
  const _$_InvoiceDTO(
      {@nullable
      @JsonKey(includeIfNull: false)
          this.id,
      @nullable
      @JsonKey(includeIfNull: false)
          this.meta,
      @nullable
      @JsonKey(includeIfNull: false, name: 'assignment_id')
      @IntegerSerializer()
          this.assignmentId,
      @nullable
      @JsonKey(includeIfNull: false)
      @NumSerializer()
          this.amount,
      @nullable
      @JsonKey(includeIfNull: false, name: 'base_amount')
      @IntegerSerializer()
          this.baseAmount,
      @nullable
      @JsonKey(includeIfNull: false)
      @DoubleSerializer()
          this.charges,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          this.duration,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.status,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'invoice_no')
          this.invoiceNumber,
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

  factory _$_InvoiceDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_InvoiceDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final int id;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final PaymentMetaDTO meta;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'assignment_id')
  @IntegerSerializer()
  final int assignmentId;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @NumSerializer()
  final num amount;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'base_amount')
  @IntegerSerializer()
  final int baseAmount;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @DoubleSerializer()
  final double charges;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  final int duration;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String status;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'invoice_no')
  final String invoiceNumber;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  final String createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  final String updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  final String deletedAt;

  @override
  String toString() {
    return 'InvoiceDTO(id: $id, meta: $meta, assignmentId: $assignmentId, amount: $amount, baseAmount: $baseAmount, charges: $charges, duration: $duration, status: $status, invoiceNumber: $invoiceNumber, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvoiceDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)) &&
            (identical(other.assignmentId, assignmentId) ||
                const DeepCollectionEquality()
                    .equals(other.assignmentId, assignmentId)) &&
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
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceNumber, invoiceNumber)) &&
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
      const DeepCollectionEquality().hash(assignmentId) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(baseAmount) ^
      const DeepCollectionEquality().hash(charges) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(invoiceNumber) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$InvoiceDTOCopyWith<_InvoiceDTO> get copyWith =>
      __$InvoiceDTOCopyWithImpl<_InvoiceDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InvoiceDTOToJson(this);
  }
}

abstract class _InvoiceDTO extends InvoiceDTO {
  const _InvoiceDTO._() : super._();
  const factory _InvoiceDTO(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false)
          PaymentMetaDTO meta,
      @nullable
      @JsonKey(includeIfNull: false, name: 'assignment_id')
      @IntegerSerializer()
          int assignmentId,
      @nullable
      @JsonKey(includeIfNull: false)
      @NumSerializer()
          num amount,
      @nullable
      @JsonKey(includeIfNull: false, name: 'base_amount')
      @IntegerSerializer()
          int baseAmount,
      @nullable
      @JsonKey(includeIfNull: false)
      @DoubleSerializer()
          double charges,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int duration,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'invoice_no')
          String invoiceNumber,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt}) = _$_InvoiceDTO;

  factory _InvoiceDTO.fromJson(Map<String, dynamic> json) =
      _$_InvoiceDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  PaymentMetaDTO get meta;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'assignment_id')
  @IntegerSerializer()
  int get assignmentId;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @NumSerializer()
  num get amount;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'base_amount')
  @IntegerSerializer()
  int get baseAmount;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @DoubleSerializer()
  double get charges;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  int get duration;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get status;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'invoice_no')
  String get invoiceNumber;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  String get createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  String get updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  String get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$InvoiceDTOCopyWith<_InvoiceDTO> get copyWith;
}
