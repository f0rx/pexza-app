// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tenant_maintenance_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TenantMaintenanceStateTearOff {
  const _$TenantMaintenanceStateTearOff();

// ignore: unused_element
  _TenantMaintenanceState call(
      {bool isLoading = false,
      bool validate = false,
      @required BasicTextField<String> comment,
      @required BasicTextField<int> urgency,
      @nullable MaintenanceService service,
      @nullable Maintenance maintenance,
      @nullable Assignment assignment,
      KtList<Assignment> assignments = const KtList.empty(),
      KtList<MaintenanceService> services = const KtList.empty(),
      KtList<Maintenance> maintenances = const KtList.empty(),
      Option<Either<Failure, Success>> response = const None()}) {
    return _TenantMaintenanceState(
      isLoading: isLoading,
      validate: validate,
      comment: comment,
      urgency: urgency,
      service: service,
      maintenance: maintenance,
      assignment: assignment,
      assignments: assignments,
      services: services,
      maintenances: maintenances,
      response: response,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TenantMaintenanceState = _$TenantMaintenanceStateTearOff();

/// @nodoc
mixin _$TenantMaintenanceState {
  bool get isLoading;
  bool get validate;
  BasicTextField<String> get comment;
  BasicTextField<int> get urgency;
  @nullable
  MaintenanceService get service;
  @nullable
  Maintenance get maintenance;
  @nullable
  Assignment get assignment;
  KtList<Assignment> get assignments;
  KtList<MaintenanceService> get services;
  KtList<Maintenance> get maintenances;
  Option<Either<Failure, Success>> get response;

  @JsonKey(ignore: true)
  $TenantMaintenanceStateCopyWith<TenantMaintenanceState> get copyWith;
}

/// @nodoc
abstract class $TenantMaintenanceStateCopyWith<$Res> {
  factory $TenantMaintenanceStateCopyWith(TenantMaintenanceState value,
          $Res Function(TenantMaintenanceState) then) =
      _$TenantMaintenanceStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool validate,
      BasicTextField<String> comment,
      BasicTextField<int> urgency,
      @nullable MaintenanceService service,
      @nullable Maintenance maintenance,
      @nullable Assignment assignment,
      KtList<Assignment> assignments,
      KtList<MaintenanceService> services,
      KtList<Maintenance> maintenances,
      Option<Either<Failure, Success>> response});

  $MaintenanceServiceCopyWith<$Res> get service;
  $MaintenanceCopyWith<$Res> get maintenance;
  $AssignmentCopyWith<$Res> get assignment;
}

/// @nodoc
class _$TenantMaintenanceStateCopyWithImpl<$Res>
    implements $TenantMaintenanceStateCopyWith<$Res> {
  _$TenantMaintenanceStateCopyWithImpl(this._value, this._then);

  final TenantMaintenanceState _value;
  // ignore: unused_field
  final $Res Function(TenantMaintenanceState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object comment = freezed,
    Object urgency = freezed,
    Object service = freezed,
    Object maintenance = freezed,
    Object assignment = freezed,
    Object assignments = freezed,
    Object services = freezed,
    Object maintenances = freezed,
    Object response = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      comment: comment == freezed
          ? _value.comment
          : comment as BasicTextField<String>,
      urgency:
          urgency == freezed ? _value.urgency : urgency as BasicTextField<int>,
      service:
          service == freezed ? _value.service : service as MaintenanceService,
      maintenance: maintenance == freezed
          ? _value.maintenance
          : maintenance as Maintenance,
      assignment:
          assignment == freezed ? _value.assignment : assignment as Assignment,
      assignments: assignments == freezed
          ? _value.assignments
          : assignments as KtList<Assignment>,
      services: services == freezed
          ? _value.services
          : services as KtList<MaintenanceService>,
      maintenances: maintenances == freezed
          ? _value.maintenances
          : maintenances as KtList<Maintenance>,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Success>>,
    ));
  }

  @override
  $MaintenanceServiceCopyWith<$Res> get service {
    if (_value.service == null) {
      return null;
    }
    return $MaintenanceServiceCopyWith<$Res>(_value.service, (value) {
      return _then(_value.copyWith(service: value));
    });
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

  @override
  $AssignmentCopyWith<$Res> get assignment {
    if (_value.assignment == null) {
      return null;
    }
    return $AssignmentCopyWith<$Res>(_value.assignment, (value) {
      return _then(_value.copyWith(assignment: value));
    });
  }
}

/// @nodoc
abstract class _$TenantMaintenanceStateCopyWith<$Res>
    implements $TenantMaintenanceStateCopyWith<$Res> {
  factory _$TenantMaintenanceStateCopyWith(_TenantMaintenanceState value,
          $Res Function(_TenantMaintenanceState) then) =
      __$TenantMaintenanceStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool validate,
      BasicTextField<String> comment,
      BasicTextField<int> urgency,
      @nullable MaintenanceService service,
      @nullable Maintenance maintenance,
      @nullable Assignment assignment,
      KtList<Assignment> assignments,
      KtList<MaintenanceService> services,
      KtList<Maintenance> maintenances,
      Option<Either<Failure, Success>> response});

  @override
  $MaintenanceServiceCopyWith<$Res> get service;
  @override
  $MaintenanceCopyWith<$Res> get maintenance;
  @override
  $AssignmentCopyWith<$Res> get assignment;
}

/// @nodoc
class __$TenantMaintenanceStateCopyWithImpl<$Res>
    extends _$TenantMaintenanceStateCopyWithImpl<$Res>
    implements _$TenantMaintenanceStateCopyWith<$Res> {
  __$TenantMaintenanceStateCopyWithImpl(_TenantMaintenanceState _value,
      $Res Function(_TenantMaintenanceState) _then)
      : super(_value, (v) => _then(v as _TenantMaintenanceState));

  @override
  _TenantMaintenanceState get _value => super._value as _TenantMaintenanceState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object comment = freezed,
    Object urgency = freezed,
    Object service = freezed,
    Object maintenance = freezed,
    Object assignment = freezed,
    Object assignments = freezed,
    Object services = freezed,
    Object maintenances = freezed,
    Object response = freezed,
  }) {
    return _then(_TenantMaintenanceState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      comment: comment == freezed
          ? _value.comment
          : comment as BasicTextField<String>,
      urgency:
          urgency == freezed ? _value.urgency : urgency as BasicTextField<int>,
      service:
          service == freezed ? _value.service : service as MaintenanceService,
      maintenance: maintenance == freezed
          ? _value.maintenance
          : maintenance as Maintenance,
      assignment:
          assignment == freezed ? _value.assignment : assignment as Assignment,
      assignments: assignments == freezed
          ? _value.assignments
          : assignments as KtList<Assignment>,
      services: services == freezed
          ? _value.services
          : services as KtList<MaintenanceService>,
      maintenances: maintenances == freezed
          ? _value.maintenances
          : maintenances as KtList<Maintenance>,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Success>>,
    ));
  }
}

/// @nodoc
class _$_TenantMaintenanceState extends _TenantMaintenanceState {
  const _$_TenantMaintenanceState(
      {this.isLoading = false,
      this.validate = false,
      @required this.comment,
      @required this.urgency,
      @nullable this.service,
      @nullable this.maintenance,
      @nullable this.assignment,
      this.assignments = const KtList.empty(),
      this.services = const KtList.empty(),
      this.maintenances = const KtList.empty(),
      this.response = const None()})
      : assert(isLoading != null),
        assert(validate != null),
        assert(comment != null),
        assert(urgency != null),
        assert(assignments != null),
        assert(services != null),
        assert(maintenances != null),
        assert(response != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @override
  final BasicTextField<String> comment;
  @override
  final BasicTextField<int> urgency;
  @override
  @nullable
  final MaintenanceService service;
  @override
  @nullable
  final Maintenance maintenance;
  @override
  @nullable
  final Assignment assignment;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<Assignment> assignments;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<MaintenanceService> services;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<Maintenance> maintenances;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<Failure, Success>> response;

  @override
  String toString() {
    return 'TenantMaintenanceState(isLoading: $isLoading, validate: $validate, comment: $comment, urgency: $urgency, service: $service, maintenance: $maintenance, assignment: $assignment, assignments: $assignments, services: $services, maintenances: $maintenances, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TenantMaintenanceState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.urgency, urgency) ||
                const DeepCollectionEquality()
                    .equals(other.urgency, urgency)) &&
            (identical(other.service, service) ||
                const DeepCollectionEquality()
                    .equals(other.service, service)) &&
            (identical(other.maintenance, maintenance) ||
                const DeepCollectionEquality()
                    .equals(other.maintenance, maintenance)) &&
            (identical(other.assignment, assignment) ||
                const DeepCollectionEquality()
                    .equals(other.assignment, assignment)) &&
            (identical(other.assignments, assignments) ||
                const DeepCollectionEquality()
                    .equals(other.assignments, assignments)) &&
            (identical(other.services, services) ||
                const DeepCollectionEquality()
                    .equals(other.services, services)) &&
            (identical(other.maintenances, maintenances) ||
                const DeepCollectionEquality()
                    .equals(other.maintenances, maintenances)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(urgency) ^
      const DeepCollectionEquality().hash(service) ^
      const DeepCollectionEquality().hash(maintenance) ^
      const DeepCollectionEquality().hash(assignment) ^
      const DeepCollectionEquality().hash(assignments) ^
      const DeepCollectionEquality().hash(services) ^
      const DeepCollectionEquality().hash(maintenances) ^
      const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$TenantMaintenanceStateCopyWith<_TenantMaintenanceState> get copyWith =>
      __$TenantMaintenanceStateCopyWithImpl<_TenantMaintenanceState>(
          this, _$identity);
}

abstract class _TenantMaintenanceState extends TenantMaintenanceState {
  const _TenantMaintenanceState._() : super._();
  const factory _TenantMaintenanceState(
      {bool isLoading,
      bool validate,
      @required BasicTextField<String> comment,
      @required BasicTextField<int> urgency,
      @nullable MaintenanceService service,
      @nullable Maintenance maintenance,
      @nullable Assignment assignment,
      KtList<Assignment> assignments,
      KtList<MaintenanceService> services,
      KtList<Maintenance> maintenances,
      Option<Either<Failure, Success>> response}) = _$_TenantMaintenanceState;

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  BasicTextField<String> get comment;
  @override
  BasicTextField<int> get urgency;
  @override
  @nullable
  MaintenanceService get service;
  @override
  @nullable
  Maintenance get maintenance;
  @override
  @nullable
  Assignment get assignment;
  @override
  KtList<Assignment> get assignments;
  @override
  KtList<MaintenanceService> get services;
  @override
  KtList<Maintenance> get maintenances;
  @override
  Option<Either<Failure, Success>> get response;
  @override
  @JsonKey(ignore: true)
  _$TenantMaintenanceStateCopyWith<_TenantMaintenanceState> get copyWith;
}
