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
      @required BasicTextField<String> code,
      KtList<Assignment> assignments = const KtList.empty(),
      @nullable Assignment assignment,
      Option<Either<Failure, Success>> response = const None()}) {
    return _TenantAssignmentState(
      isLoading: isLoading,
      validate: validate,
      code: code,
      assignments: assignments,
      assignment: assignment,
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
  BasicTextField<String> get code;
  KtList<Assignment> get assignments;
  @nullable
  Assignment get assignment;
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
      BasicTextField<String> code,
      KtList<Assignment> assignments,
      @nullable Assignment assignment,
      Option<Either<Failure, Success>> response});

  $AssignmentCopyWith<$Res> get assignment;
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
    Object code = freezed,
    Object assignments = freezed,
    Object assignment = freezed,
    Object response = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      code: code == freezed ? _value.code : code as BasicTextField<String>,
      assignments: assignments == freezed
          ? _value.assignments
          : assignments as KtList<Assignment>,
      assignment:
          assignment == freezed ? _value.assignment : assignment as Assignment,
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
      BasicTextField<String> code,
      KtList<Assignment> assignments,
      @nullable Assignment assignment,
      Option<Either<Failure, Success>> response});

  @override
  $AssignmentCopyWith<$Res> get assignment;
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
    Object code = freezed,
    Object assignments = freezed,
    Object assignment = freezed,
    Object response = freezed,
  }) {
    return _then(_TenantAssignmentState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      code: code == freezed ? _value.code : code as BasicTextField<String>,
      assignments: assignments == freezed
          ? _value.assignments
          : assignments as KtList<Assignment>,
      assignment:
          assignment == freezed ? _value.assignment : assignment as Assignment,
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
      @required this.code,
      this.assignments = const KtList.empty(),
      @nullable this.assignment,
      this.response = const None()})
      : assert(isLoading != null),
        assert(validate != null),
        assert(code != null),
        assert(assignments != null),
        assert(response != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @override
  final BasicTextField<String> code;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<Assignment> assignments;
  @override
  @nullable
  final Assignment assignment;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<Failure, Success>> response;

  @override
  String toString() {
    return 'TenantAssignmentState(isLoading: $isLoading, validate: $validate, code: $code, assignments: $assignments, assignment: $assignment, response: $response)';
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
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.assignments, assignments) ||
                const DeepCollectionEquality()
                    .equals(other.assignments, assignments)) &&
            (identical(other.assignment, assignment) ||
                const DeepCollectionEquality()
                    .equals(other.assignment, assignment)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(assignments) ^
      const DeepCollectionEquality().hash(assignment) ^
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
      @required BasicTextField<String> code,
      KtList<Assignment> assignments,
      @nullable Assignment assignment,
      Option<Either<Failure, Success>> response}) = _$_TenantAssignmentState;

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  BasicTextField<String> get code;
  @override
  KtList<Assignment> get assignments;
  @override
  @nullable
  Assignment get assignment;
  @override
  Option<Either<Failure, Success>> get response;
  @override
  @JsonKey(ignore: true)
  _$TenantAssignmentStateCopyWith<_TenantAssignmentState> get copyWith;
}
