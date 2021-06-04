// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tenant_assignment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TenantAssignmentStateTearOff {
  const _$TenantAssignmentStateTearOff();

// ignore: unused_element
  _TenantAssignmentState call(
      {bool isLoading = false,
      bool validate = false,
      KtList<Assignment> unaccepted = const KtList.empty(),
      KtList<Assignment> paired = const KtList.empty(),
      @nullable Assignment assignment,
      KtList<TenantApartment> apartments = const KtList.empty(),
      @nullable TenantApartment apartment,
      Option<Either<Failure, Success>> response = const None()}) {
    return _TenantAssignmentState(
      isLoading: isLoading,
      validate: validate,
      unaccepted: unaccepted,
      paired: paired,
      assignment: assignment,
      apartments: apartments,
      apartment: apartment,
      response: response,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TenantAssignmentState = _$TenantAssignmentStateTearOff();

/// @nodoc
mixin _$TenantAssignmentState {
  bool get isLoading;
  bool get validate;
  KtList<Assignment> get unaccepted;
  KtList<Assignment> get paired;
  @nullable
  Assignment get assignment;
  KtList<TenantApartment> get apartments;
  @nullable
  TenantApartment get apartment;
  Option<Either<Failure, Success>> get response;

  @JsonKey(ignore: true)
  $TenantAssignmentStateCopyWith<TenantAssignmentState> get copyWith;
}

/// @nodoc
abstract class $TenantAssignmentStateCopyWith<$Res> {
  factory $TenantAssignmentStateCopyWith(TenantAssignmentState value,
          $Res Function(TenantAssignmentState) then) =
      _$TenantAssignmentStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool validate,
      KtList<Assignment> unaccepted,
      KtList<Assignment> paired,
      @nullable Assignment assignment,
      KtList<TenantApartment> apartments,
      @nullable TenantApartment apartment,
      Option<Either<Failure, Success>> response});

  $AssignmentCopyWith<$Res> get assignment;
  $TenantApartmentCopyWith<$Res> get apartment;
}

/// @nodoc
class _$TenantAssignmentStateCopyWithImpl<$Res>
    implements $TenantAssignmentStateCopyWith<$Res> {
  _$TenantAssignmentStateCopyWithImpl(this._value, this._then);

  final TenantAssignmentState _value;
  // ignore: unused_field
  final $Res Function(TenantAssignmentState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object unaccepted = freezed,
    Object paired = freezed,
    Object assignment = freezed,
    Object apartments = freezed,
    Object apartment = freezed,
    Object response = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      unaccepted: unaccepted == freezed
          ? _value.unaccepted
          : unaccepted as KtList<Assignment>,
      paired: paired == freezed ? _value.paired : paired as KtList<Assignment>,
      assignment:
          assignment == freezed ? _value.assignment : assignment as Assignment,
      apartments: apartments == freezed
          ? _value.apartments
          : apartments as KtList<TenantApartment>,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as TenantApartment,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Success>>,
    ));
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

  @override
  $TenantApartmentCopyWith<$Res> get apartment {
    if (_value.apartment == null) {
      return null;
    }
    return $TenantApartmentCopyWith<$Res>(_value.apartment, (value) {
      return _then(_value.copyWith(apartment: value));
    });
  }
}

/// @nodoc
abstract class _$TenantAssignmentStateCopyWith<$Res>
    implements $TenantAssignmentStateCopyWith<$Res> {
  factory _$TenantAssignmentStateCopyWith(_TenantAssignmentState value,
          $Res Function(_TenantAssignmentState) then) =
      __$TenantAssignmentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool validate,
      KtList<Assignment> unaccepted,
      KtList<Assignment> paired,
      @nullable Assignment assignment,
      KtList<TenantApartment> apartments,
      @nullable TenantApartment apartment,
      Option<Either<Failure, Success>> response});

  @override
  $AssignmentCopyWith<$Res> get assignment;
  @override
  $TenantApartmentCopyWith<$Res> get apartment;
}

/// @nodoc
class __$TenantAssignmentStateCopyWithImpl<$Res>
    extends _$TenantAssignmentStateCopyWithImpl<$Res>
    implements _$TenantAssignmentStateCopyWith<$Res> {
  __$TenantAssignmentStateCopyWithImpl(_TenantAssignmentState _value,
      $Res Function(_TenantAssignmentState) _then)
      : super(_value, (v) => _then(v as _TenantAssignmentState));

  @override
  _TenantAssignmentState get _value => super._value as _TenantAssignmentState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object unaccepted = freezed,
    Object paired = freezed,
    Object assignment = freezed,
    Object apartments = freezed,
    Object apartment = freezed,
    Object response = freezed,
  }) {
    return _then(_TenantAssignmentState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      unaccepted: unaccepted == freezed
          ? _value.unaccepted
          : unaccepted as KtList<Assignment>,
      paired: paired == freezed ? _value.paired : paired as KtList<Assignment>,
      assignment:
          assignment == freezed ? _value.assignment : assignment as Assignment,
      apartments: apartments == freezed
          ? _value.apartments
          : apartments as KtList<TenantApartment>,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as TenantApartment,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Success>>,
    ));
  }
}

/// @nodoc
class _$_TenantAssignmentState extends _TenantAssignmentState {
  const _$_TenantAssignmentState(
      {this.isLoading = false,
      this.validate = false,
      this.unaccepted = const KtList.empty(),
      this.paired = const KtList.empty(),
      @nullable this.assignment,
      this.apartments = const KtList.empty(),
      @nullable this.apartment,
      this.response = const None()})
      : assert(isLoading != null),
        assert(validate != null),
        assert(unaccepted != null),
        assert(paired != null),
        assert(apartments != null),
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
  final KtList<Assignment> unaccepted;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<Assignment> paired;
  @override
  @nullable
  final Assignment assignment;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<TenantApartment> apartments;
  @override
  @nullable
  final TenantApartment apartment;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<Failure, Success>> response;

  @override
  String toString() {
    return 'TenantAssignmentState(isLoading: $isLoading, validate: $validate, unaccepted: $unaccepted, paired: $paired, assignment: $assignment, apartments: $apartments, apartment: $apartment, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TenantAssignmentState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.unaccepted, unaccepted) ||
                const DeepCollectionEquality()
                    .equals(other.unaccepted, unaccepted)) &&
            (identical(other.paired, paired) ||
                const DeepCollectionEquality().equals(other.paired, paired)) &&
            (identical(other.assignment, assignment) ||
                const DeepCollectionEquality()
                    .equals(other.assignment, assignment)) &&
            (identical(other.apartments, apartments) ||
                const DeepCollectionEquality()
                    .equals(other.apartments, apartments)) &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality()
                    .equals(other.apartment, apartment)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(unaccepted) ^
      const DeepCollectionEquality().hash(paired) ^
      const DeepCollectionEquality().hash(assignment) ^
      const DeepCollectionEquality().hash(apartments) ^
      const DeepCollectionEquality().hash(apartment) ^
      const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$TenantAssignmentStateCopyWith<_TenantAssignmentState> get copyWith =>
      __$TenantAssignmentStateCopyWithImpl<_TenantAssignmentState>(
          this, _$identity);
}

abstract class _TenantAssignmentState extends TenantAssignmentState {
  const _TenantAssignmentState._() : super._();
  const factory _TenantAssignmentState(
      {bool isLoading,
      bool validate,
      KtList<Assignment> unaccepted,
      KtList<Assignment> paired,
      @nullable Assignment assignment,
      KtList<TenantApartment> apartments,
      @nullable TenantApartment apartment,
      Option<Either<Failure, Success>> response}) = _$_TenantAssignmentState;

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  KtList<Assignment> get unaccepted;
  @override
  KtList<Assignment> get paired;
  @override
  @nullable
  Assignment get assignment;
  @override
  KtList<TenantApartment> get apartments;
  @override
  @nullable
  TenantApartment get apartment;
  @override
  Option<Either<Failure, Success>> get response;
  @override
  @JsonKey(ignore: true)
  _$TenantAssignmentStateCopyWith<_TenantAssignmentState> get copyWith;
}
