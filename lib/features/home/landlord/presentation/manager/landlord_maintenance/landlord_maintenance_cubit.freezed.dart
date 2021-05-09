// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'landlord_maintenance_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LandlordMaintenanceStateTearOff {
  const _$LandlordMaintenanceStateTearOff();

// ignore: unused_element
  _LandlordMaintenanceState call(
      {bool isLoading = false,
      bool validate = false,
      KtList<Maintenance> maintenances = const KtList.empty(),
      @nullable Maintenance maintenance,
      MaintenanceStatus status = MaintenanceStatus.unfixed,
      Option<Either<Failure, Success>> response = const None()}) {
    return _LandlordMaintenanceState(
      isLoading: isLoading,
      validate: validate,
      maintenances: maintenances,
      maintenance: maintenance,
      status: status,
      response: response,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LandlordMaintenanceState = _$LandlordMaintenanceStateTearOff();

/// @nodoc
mixin _$LandlordMaintenanceState {
  bool get isLoading;
  bool get validate;
  KtList<Maintenance> get maintenances;
  @nullable
  Maintenance get maintenance;
  MaintenanceStatus get status;
  Option<Either<Failure, Success>> get response;

  @JsonKey(ignore: true)
  $LandlordMaintenanceStateCopyWith<LandlordMaintenanceState> get copyWith;
}

/// @nodoc
abstract class $LandlordMaintenanceStateCopyWith<$Res> {
  factory $LandlordMaintenanceStateCopyWith(LandlordMaintenanceState value,
          $Res Function(LandlordMaintenanceState) then) =
      _$LandlordMaintenanceStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool validate,
      KtList<Maintenance> maintenances,
      @nullable Maintenance maintenance,
      MaintenanceStatus status,
      Option<Either<Failure, Success>> response});

  $MaintenanceCopyWith<$Res> get maintenance;
}

/// @nodoc
class _$LandlordMaintenanceStateCopyWithImpl<$Res>
    implements $LandlordMaintenanceStateCopyWith<$Res> {
  _$LandlordMaintenanceStateCopyWithImpl(this._value, this._then);

  final LandlordMaintenanceState _value;
  // ignore: unused_field
  final $Res Function(LandlordMaintenanceState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object maintenances = freezed,
    Object maintenance = freezed,
    Object status = freezed,
    Object response = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      maintenances: maintenances == freezed
          ? _value.maintenances
          : maintenances as KtList<Maintenance>,
      maintenance: maintenance == freezed
          ? _value.maintenance
          : maintenance as Maintenance,
      status: status == freezed ? _value.status : status as MaintenanceStatus,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Success>>,
    ));
  }

  @override
  $MaintenanceCopyWith<$Res> get maintenance {
    if (_value.maintenance == null) {
      return null;
    }
    return $MaintenanceCopyWith<$Res>(_value.maintenance, (value) {
      return _then(_value.copyWith(maintenance: value));
    });
  }
}

/// @nodoc
abstract class _$LandlordMaintenanceStateCopyWith<$Res>
    implements $LandlordMaintenanceStateCopyWith<$Res> {
  factory _$LandlordMaintenanceStateCopyWith(_LandlordMaintenanceState value,
          $Res Function(_LandlordMaintenanceState) then) =
      __$LandlordMaintenanceStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool validate,
      KtList<Maintenance> maintenances,
      @nullable Maintenance maintenance,
      MaintenanceStatus status,
      Option<Either<Failure, Success>> response});

  @override
  $MaintenanceCopyWith<$Res> get maintenance;
}

/// @nodoc
class __$LandlordMaintenanceStateCopyWithImpl<$Res>
    extends _$LandlordMaintenanceStateCopyWithImpl<$Res>
    implements _$LandlordMaintenanceStateCopyWith<$Res> {
  __$LandlordMaintenanceStateCopyWithImpl(_LandlordMaintenanceState _value,
      $Res Function(_LandlordMaintenanceState) _then)
      : super(_value, (v) => _then(v as _LandlordMaintenanceState));

  @override
  _LandlordMaintenanceState get _value =>
      super._value as _LandlordMaintenanceState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object maintenances = freezed,
    Object maintenance = freezed,
    Object status = freezed,
    Object response = freezed,
  }) {
    return _then(_LandlordMaintenanceState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      maintenances: maintenances == freezed
          ? _value.maintenances
          : maintenances as KtList<Maintenance>,
      maintenance: maintenance == freezed
          ? _value.maintenance
          : maintenance as Maintenance,
      status: status == freezed ? _value.status : status as MaintenanceStatus,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Success>>,
    ));
  }
}

/// @nodoc
class _$_LandlordMaintenanceState extends _LandlordMaintenanceState {
  const _$_LandlordMaintenanceState(
      {this.isLoading = false,
      this.validate = false,
      this.maintenances = const KtList.empty(),
      @nullable this.maintenance,
      this.status = MaintenanceStatus.unfixed,
      this.response = const None()})
      : assert(isLoading != null),
        assert(validate != null),
        assert(maintenances != null),
        assert(status != null),
        assert(response != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<Maintenance> maintenances;
  @override
  @nullable
  final Maintenance maintenance;
  @JsonKey(defaultValue: MaintenanceStatus.unfixed)
  @override
  final MaintenanceStatus status;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<Failure, Success>> response;

  @override
  String toString() {
    return 'LandlordMaintenanceState(isLoading: $isLoading, validate: $validate, maintenances: $maintenances, maintenance: $maintenance, status: $status, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LandlordMaintenanceState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.maintenances, maintenances) ||
                const DeepCollectionEquality()
                    .equals(other.maintenances, maintenances)) &&
            (identical(other.maintenance, maintenance) ||
                const DeepCollectionEquality()
                    .equals(other.maintenance, maintenance)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(maintenances) ^
      const DeepCollectionEquality().hash(maintenance) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$LandlordMaintenanceStateCopyWith<_LandlordMaintenanceState> get copyWith =>
      __$LandlordMaintenanceStateCopyWithImpl<_LandlordMaintenanceState>(
          this, _$identity);
}

abstract class _LandlordMaintenanceState extends LandlordMaintenanceState {
  const _LandlordMaintenanceState._() : super._();
  const factory _LandlordMaintenanceState(
      {bool isLoading,
      bool validate,
      KtList<Maintenance> maintenances,
      @nullable Maintenance maintenance,
      MaintenanceStatus status,
      Option<Either<Failure, Success>> response}) = _$_LandlordMaintenanceState;

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  KtList<Maintenance> get maintenances;
  @override
  @nullable
  Maintenance get maintenance;
  @override
  MaintenanceStatus get status;
  @override
  Option<Either<Failure, Success>> get response;
  @override
  @JsonKey(ignore: true)
  _$LandlordMaintenanceStateCopyWith<_LandlordMaintenanceState> get copyWith;
}
