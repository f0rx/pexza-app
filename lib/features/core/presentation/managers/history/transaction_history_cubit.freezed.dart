// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TransactionHistoryStateTearOff {
  const _$TransactionHistoryStateTearOff();

// ignore: unused_element
  _TransactionHistoryState call(
      {bool isLoadingWithdrawalHistory = false,
      bool isLoadingProperties = false,
      bool isLoadingRentHistory = false,
      bool validate = false,
      @nullable LandlordProperty currentProperty,
      KtList<WithdrawalHistory> withdrawalHistory = const KtList.empty(),
      KtList<PropertyRentHistory> propertyRentHistory = const KtList.empty(),
      KtList<LandlordProperty> properties = const KtList.empty(),
      Option<Either<Failure, Response>> response = const None()}) {
    return _TransactionHistoryState(
      isLoadingWithdrawalHistory: isLoadingWithdrawalHistory,
      isLoadingProperties: isLoadingProperties,
      isLoadingRentHistory: isLoadingRentHistory,
      validate: validate,
      currentProperty: currentProperty,
      withdrawalHistory: withdrawalHistory,
      propertyRentHistory: propertyRentHistory,
      properties: properties,
      response: response,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionHistoryState = _$TransactionHistoryStateTearOff();

/// @nodoc
mixin _$TransactionHistoryState {
  bool get isLoadingWithdrawalHistory;
  bool get isLoadingProperties;
  bool get isLoadingRentHistory;
  bool get validate;
  @nullable
  LandlordProperty get currentProperty;
  KtList<WithdrawalHistory> get withdrawalHistory;
  KtList<PropertyRentHistory> get propertyRentHistory;
  KtList<LandlordProperty> get properties;
  Option<Either<Failure, Response>> get response;

  @JsonKey(ignore: true)
  $TransactionHistoryStateCopyWith<TransactionHistoryState> get copyWith;
}

/// @nodoc
abstract class $TransactionHistoryStateCopyWith<$Res> {
  factory $TransactionHistoryStateCopyWith(TransactionHistoryState value,
          $Res Function(TransactionHistoryState) then) =
      _$TransactionHistoryStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoadingWithdrawalHistory,
      bool isLoadingProperties,
      bool isLoadingRentHistory,
      bool validate,
      @nullable LandlordProperty currentProperty,
      KtList<WithdrawalHistory> withdrawalHistory,
      KtList<PropertyRentHistory> propertyRentHistory,
      KtList<LandlordProperty> properties,
      Option<Either<Failure, Response>> response});

  $LandlordPropertyCopyWith<$Res> get currentProperty;
}

/// @nodoc
class _$TransactionHistoryStateCopyWithImpl<$Res>
    implements $TransactionHistoryStateCopyWith<$Res> {
  _$TransactionHistoryStateCopyWithImpl(this._value, this._then);

  final TransactionHistoryState _value;
  // ignore: unused_field
  final $Res Function(TransactionHistoryState) _then;

  @override
  $Res call({
    Object isLoadingWithdrawalHistory = freezed,
    Object isLoadingProperties = freezed,
    Object isLoadingRentHistory = freezed,
    Object validate = freezed,
    Object currentProperty = freezed,
    Object withdrawalHistory = freezed,
    Object propertyRentHistory = freezed,
    Object properties = freezed,
    Object response = freezed,
  }) {
    return _then(_value.copyWith(
      isLoadingWithdrawalHistory: isLoadingWithdrawalHistory == freezed
          ? _value.isLoadingWithdrawalHistory
          : isLoadingWithdrawalHistory as bool,
      isLoadingProperties: isLoadingProperties == freezed
          ? _value.isLoadingProperties
          : isLoadingProperties as bool,
      isLoadingRentHistory: isLoadingRentHistory == freezed
          ? _value.isLoadingRentHistory
          : isLoadingRentHistory as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      currentProperty: currentProperty == freezed
          ? _value.currentProperty
          : currentProperty as LandlordProperty,
      withdrawalHistory: withdrawalHistory == freezed
          ? _value.withdrawalHistory
          : withdrawalHistory as KtList<WithdrawalHistory>,
      propertyRentHistory: propertyRentHistory == freezed
          ? _value.propertyRentHistory
          : propertyRentHistory as KtList<PropertyRentHistory>,
      properties: properties == freezed
          ? _value.properties
          : properties as KtList<LandlordProperty>,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Response>>,
    ));
  }

  @override
  $LandlordPropertyCopyWith<$Res> get currentProperty {
    if (_value.currentProperty == null) {
      return null;
    }
    return $LandlordPropertyCopyWith<$Res>(_value.currentProperty, (value) {
      return _then(_value.copyWith(currentProperty: value));
    });
  }
}

/// @nodoc
abstract class _$TransactionHistoryStateCopyWith<$Res>
    implements $TransactionHistoryStateCopyWith<$Res> {
  factory _$TransactionHistoryStateCopyWith(_TransactionHistoryState value,
          $Res Function(_TransactionHistoryState) then) =
      __$TransactionHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoadingWithdrawalHistory,
      bool isLoadingProperties,
      bool isLoadingRentHistory,
      bool validate,
      @nullable LandlordProperty currentProperty,
      KtList<WithdrawalHistory> withdrawalHistory,
      KtList<PropertyRentHistory> propertyRentHistory,
      KtList<LandlordProperty> properties,
      Option<Either<Failure, Response>> response});

  @override
  $LandlordPropertyCopyWith<$Res> get currentProperty;
}

/// @nodoc
class __$TransactionHistoryStateCopyWithImpl<$Res>
    extends _$TransactionHistoryStateCopyWithImpl<$Res>
    implements _$TransactionHistoryStateCopyWith<$Res> {
  __$TransactionHistoryStateCopyWithImpl(_TransactionHistoryState _value,
      $Res Function(_TransactionHistoryState) _then)
      : super(_value, (v) => _then(v as _TransactionHistoryState));

  @override
  _TransactionHistoryState get _value =>
      super._value as _TransactionHistoryState;

  @override
  $Res call({
    Object isLoadingWithdrawalHistory = freezed,
    Object isLoadingProperties = freezed,
    Object isLoadingRentHistory = freezed,
    Object validate = freezed,
    Object currentProperty = freezed,
    Object withdrawalHistory = freezed,
    Object propertyRentHistory = freezed,
    Object properties = freezed,
    Object response = freezed,
  }) {
    return _then(_TransactionHistoryState(
      isLoadingWithdrawalHistory: isLoadingWithdrawalHistory == freezed
          ? _value.isLoadingWithdrawalHistory
          : isLoadingWithdrawalHistory as bool,
      isLoadingProperties: isLoadingProperties == freezed
          ? _value.isLoadingProperties
          : isLoadingProperties as bool,
      isLoadingRentHistory: isLoadingRentHistory == freezed
          ? _value.isLoadingRentHistory
          : isLoadingRentHistory as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      currentProperty: currentProperty == freezed
          ? _value.currentProperty
          : currentProperty as LandlordProperty,
      withdrawalHistory: withdrawalHistory == freezed
          ? _value.withdrawalHistory
          : withdrawalHistory as KtList<WithdrawalHistory>,
      propertyRentHistory: propertyRentHistory == freezed
          ? _value.propertyRentHistory
          : propertyRentHistory as KtList<PropertyRentHistory>,
      properties: properties == freezed
          ? _value.properties
          : properties as KtList<LandlordProperty>,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Response>>,
    ));
  }
}

/// @nodoc
class _$_TransactionHistoryState extends _TransactionHistoryState {
  const _$_TransactionHistoryState(
      {this.isLoadingWithdrawalHistory = false,
      this.isLoadingProperties = false,
      this.isLoadingRentHistory = false,
      this.validate = false,
      @nullable this.currentProperty,
      this.withdrawalHistory = const KtList.empty(),
      this.propertyRentHistory = const KtList.empty(),
      this.properties = const KtList.empty(),
      this.response = const None()})
      : assert(isLoadingWithdrawalHistory != null),
        assert(isLoadingProperties != null),
        assert(isLoadingRentHistory != null),
        assert(validate != null),
        assert(withdrawalHistory != null),
        assert(propertyRentHistory != null),
        assert(properties != null),
        assert(response != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingWithdrawalHistory;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingProperties;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingRentHistory;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @override
  @nullable
  final LandlordProperty currentProperty;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<WithdrawalHistory> withdrawalHistory;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<PropertyRentHistory> propertyRentHistory;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<LandlordProperty> properties;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<Failure, Response>> response;

  @override
  String toString() {
    return 'TransactionHistoryState(isLoadingWithdrawalHistory: $isLoadingWithdrawalHistory, isLoadingProperties: $isLoadingProperties, isLoadingRentHistory: $isLoadingRentHistory, validate: $validate, currentProperty: $currentProperty, withdrawalHistory: $withdrawalHistory, propertyRentHistory: $propertyRentHistory, properties: $properties, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionHistoryState &&
            (identical(other.isLoadingWithdrawalHistory,
                    isLoadingWithdrawalHistory) ||
                const DeepCollectionEquality().equals(
                    other.isLoadingWithdrawalHistory,
                    isLoadingWithdrawalHistory)) &&
            (identical(other.isLoadingProperties, isLoadingProperties) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingProperties, isLoadingProperties)) &&
            (identical(other.isLoadingRentHistory, isLoadingRentHistory) ||
                const DeepCollectionEquality().equals(
                    other.isLoadingRentHistory, isLoadingRentHistory)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.currentProperty, currentProperty) ||
                const DeepCollectionEquality()
                    .equals(other.currentProperty, currentProperty)) &&
            (identical(other.withdrawalHistory, withdrawalHistory) ||
                const DeepCollectionEquality()
                    .equals(other.withdrawalHistory, withdrawalHistory)) &&
            (identical(other.propertyRentHistory, propertyRentHistory) ||
                const DeepCollectionEquality()
                    .equals(other.propertyRentHistory, propertyRentHistory)) &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality()
                    .equals(other.properties, properties)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoadingWithdrawalHistory) ^
      const DeepCollectionEquality().hash(isLoadingProperties) ^
      const DeepCollectionEquality().hash(isLoadingRentHistory) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(currentProperty) ^
      const DeepCollectionEquality().hash(withdrawalHistory) ^
      const DeepCollectionEquality().hash(propertyRentHistory) ^
      const DeepCollectionEquality().hash(properties) ^
      const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$TransactionHistoryStateCopyWith<_TransactionHistoryState> get copyWith =>
      __$TransactionHistoryStateCopyWithImpl<_TransactionHistoryState>(
          this, _$identity);
}

abstract class _TransactionHistoryState extends TransactionHistoryState {
  const _TransactionHistoryState._() : super._();
  const factory _TransactionHistoryState(
      {bool isLoadingWithdrawalHistory,
      bool isLoadingProperties,
      bool isLoadingRentHistory,
      bool validate,
      @nullable LandlordProperty currentProperty,
      KtList<WithdrawalHistory> withdrawalHistory,
      KtList<PropertyRentHistory> propertyRentHistory,
      KtList<LandlordProperty> properties,
      Option<Either<Failure, Response>> response}) = _$_TransactionHistoryState;

  @override
  bool get isLoadingWithdrawalHistory;
  @override
  bool get isLoadingProperties;
  @override
  bool get isLoadingRentHistory;
  @override
  bool get validate;
  @override
  @nullable
  LandlordProperty get currentProperty;
  @override
  KtList<WithdrawalHistory> get withdrawalHistory;
  @override
  KtList<PropertyRentHistory> get propertyRentHistory;
  @override
  KtList<LandlordProperty> get properties;
  @override
  Option<Either<Failure, Response>> get response;
  @override
  @JsonKey(ignore: true)
  _$TransactionHistoryStateCopyWith<_TransactionHistoryState> get copyWith;
}
