// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of invoice_meta.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$InvoiceMetaTearOff {
  const _$InvoiceMetaTearOff();

// ignore: unused_element
  _InvoiceMeta call(
      {@nullable bool isSamplePayment,
      @nullable UniqueId<int> chargeableId,
      @nullable BasicTextField<String> description,
      @nullable DebitCardNumber cardNumber,
      @nullable UniqueId<String> invoiceNo}) {
    return _InvoiceMeta(
      isSamplePayment: isSamplePayment,
      chargeableId: chargeableId,
      description: description,
      cardNumber: cardNumber,
      invoiceNo: invoiceNo,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $InvoiceMeta = _$InvoiceMetaTearOff();

/// @nodoc
mixin _$InvoiceMeta {
  @nullable
  bool get isSamplePayment;
  @nullable
  UniqueId<int> get chargeableId;
  @nullable
  BasicTextField<String> get description;
  @nullable
  DebitCardNumber get cardNumber;
  @nullable
  UniqueId<String> get invoiceNo;

  @JsonKey(ignore: true)
  $InvoiceMetaCopyWith<InvoiceMeta> get copyWith;
}

/// @nodoc
abstract class $InvoiceMetaCopyWith<$Res> {
  factory $InvoiceMetaCopyWith(
          InvoiceMeta value, $Res Function(InvoiceMeta) then) =
      _$InvoiceMetaCopyWithImpl<$Res>;
  $Res call(
      {@nullable bool isSamplePayment,
      @nullable UniqueId<int> chargeableId,
      @nullable BasicTextField<String> description,
      @nullable DebitCardNumber cardNumber,
      @nullable UniqueId<String> invoiceNo});
}

/// @nodoc
class _$InvoiceMetaCopyWithImpl<$Res> implements $InvoiceMetaCopyWith<$Res> {
  _$InvoiceMetaCopyWithImpl(this._value, this._then);

  final InvoiceMeta _value;
  // ignore: unused_field
  final $Res Function(InvoiceMeta) _then;

  @override
  $Res call({
    Object isSamplePayment = freezed,
    Object chargeableId = freezed,
    Object description = freezed,
    Object cardNumber = freezed,
    Object invoiceNo = freezed,
  }) {
    return _then(_value.copyWith(
      isSamplePayment: isSamplePayment == freezed
          ? _value.isSamplePayment
          : isSamplePayment as bool,
      chargeableId: chargeableId == freezed
          ? _value.chargeableId
          : chargeableId as UniqueId<int>,
      description: description == freezed
          ? _value.description
          : description as BasicTextField<String>,
      cardNumber: cardNumber == freezed
          ? _value.cardNumber
          : cardNumber as DebitCardNumber,
      invoiceNo: invoiceNo == freezed
          ? _value.invoiceNo
          : invoiceNo as UniqueId<String>,
    ));
  }
}

/// @nodoc
abstract class _$InvoiceMetaCopyWith<$Res>
    implements $InvoiceMetaCopyWith<$Res> {
  factory _$InvoiceMetaCopyWith(
          _InvoiceMeta value, $Res Function(_InvoiceMeta) then) =
      __$InvoiceMetaCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable bool isSamplePayment,
      @nullable UniqueId<int> chargeableId,
      @nullable BasicTextField<String> description,
      @nullable DebitCardNumber cardNumber,
      @nullable UniqueId<String> invoiceNo});
}

/// @nodoc
class __$InvoiceMetaCopyWithImpl<$Res> extends _$InvoiceMetaCopyWithImpl<$Res>
    implements _$InvoiceMetaCopyWith<$Res> {
  __$InvoiceMetaCopyWithImpl(
      _InvoiceMeta _value, $Res Function(_InvoiceMeta) _then)
      : super(_value, (v) => _then(v as _InvoiceMeta));

  @override
  _InvoiceMeta get _value => super._value as _InvoiceMeta;

  @override
  $Res call({
    Object isSamplePayment = freezed,
    Object chargeableId = freezed,
    Object description = freezed,
    Object cardNumber = freezed,
    Object invoiceNo = freezed,
  }) {
    return _then(_InvoiceMeta(
      isSamplePayment: isSamplePayment == freezed
          ? _value.isSamplePayment
          : isSamplePayment as bool,
      chargeableId: chargeableId == freezed
          ? _value.chargeableId
          : chargeableId as UniqueId<int>,
      description: description == freezed
          ? _value.description
          : description as BasicTextField<String>,
      cardNumber: cardNumber == freezed
          ? _value.cardNumber
          : cardNumber as DebitCardNumber,
      invoiceNo: invoiceNo == freezed
          ? _value.invoiceNo
          : invoiceNo as UniqueId<String>,
    ));
  }
}

/// @nodoc
class _$_InvoiceMeta extends _InvoiceMeta {
  const _$_InvoiceMeta(
      {@nullable this.isSamplePayment,
      @nullable this.chargeableId,
      @nullable this.description,
      @nullable this.cardNumber,
      @nullable this.invoiceNo})
      : super._();

  @override
  @nullable
  final bool isSamplePayment;
  @override
  @nullable
  final UniqueId<int> chargeableId;
  @override
  @nullable
  final BasicTextField<String> description;
  @override
  @nullable
  final DebitCardNumber cardNumber;
  @override
  @nullable
  final UniqueId<String> invoiceNo;

  @override
  String toString() {
    return 'InvoiceMeta(isSamplePayment: $isSamplePayment, chargeableId: $chargeableId, description: $description, cardNumber: $cardNumber, invoiceNo: $invoiceNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvoiceMeta &&
            (identical(other.isSamplePayment, isSamplePayment) ||
                const DeepCollectionEquality()
                    .equals(other.isSamplePayment, isSamplePayment)) &&
            (identical(other.chargeableId, chargeableId) ||
                const DeepCollectionEquality()
                    .equals(other.chargeableId, chargeableId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.cardNumber, cardNumber) ||
                const DeepCollectionEquality()
                    .equals(other.cardNumber, cardNumber)) &&
            (identical(other.invoiceNo, invoiceNo) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceNo, invoiceNo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSamplePayment) ^
      const DeepCollectionEquality().hash(chargeableId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(cardNumber) ^
      const DeepCollectionEquality().hash(invoiceNo);

  @JsonKey(ignore: true)
  @override
  _$InvoiceMetaCopyWith<_InvoiceMeta> get copyWith =>
      __$InvoiceMetaCopyWithImpl<_InvoiceMeta>(this, _$identity);
}

abstract class _InvoiceMeta extends InvoiceMeta {
  const _InvoiceMeta._() : super._();
  const factory _InvoiceMeta(
      {@nullable bool isSamplePayment,
      @nullable UniqueId<int> chargeableId,
      @nullable BasicTextField<String> description,
      @nullable DebitCardNumber cardNumber,
      @nullable UniqueId<String> invoiceNo}) = _$_InvoiceMeta;

  @override
  @nullable
  bool get isSamplePayment;
  @override
  @nullable
  UniqueId<int> get chargeableId;
  @override
  @nullable
  BasicTextField<String> get description;
  @override
  @nullable
  DebitCardNumber get cardNumber;
  @override
  @nullable
  UniqueId<String> get invoiceNo;
  @override
  @JsonKey(ignore: true)
  _$InvoiceMetaCopyWith<_InvoiceMeta> get copyWith;
}
