// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of maintenance.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MaintenanceTearOff {
  const _$MaintenanceTearOff();

// ignore: unused_element
  _Maintenance call(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<String> comment,
      @nullable MaintenanceService service,
      @nullable BasicTextField<int> urgency,
      @nullable Assignment assignment,
      @nullable MaintenanceStatus status,
      @nullable DateTime fixedAt,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) {
    return _Maintenance(
      id: id,
      comment: comment,
      service: service,
      urgency: urgency,
      assignment: assignment,
      status: status,
      fixedAt: fixedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Maintenance = _$MaintenanceTearOff();

/// @nodoc
mixin _$Maintenance {
  @nullable
  UniqueId<int> get id;
  @nullable
  BasicTextField<String> get comment;
  @nullable
  MaintenanceService get service;
  @nullable
  BasicTextField<int> get urgency;
  @nullable
  Assignment get assignment;
  @nullable
  MaintenanceStatus get status;
  @nullable
  DateTime get fixedAt;
  @nullable
  DateTime get createdAt;
  @nullable
  DateTime get updatedAt;
  @nullable
  DateTime get deletedAt;

  @JsonKey(ignore: true)
  $MaintenanceCopyWith<Maintenance> get copyWith;
}

/// @nodoc
abstract class $MaintenanceCopyWith<$Res> {
  factory $MaintenanceCopyWith(
          Maintenance value, $Res Function(Maintenance) then) =
      _$MaintenanceCopyWithImpl<$Res>;
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<String> comment,
      @nullable MaintenanceService service,
      @nullable BasicTextField<int> urgency,
      @nullable Assignment assignment,
      @nullable MaintenanceStatus status,
      @nullable DateTime fixedAt,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});

  $MaintenanceServiceCopyWith<$Res> get service;
  $AssignmentCopyWith<$Res> get assignment;
}

/// @nodoc
class _$MaintenanceCopyWithImpl<$Res> implements $MaintenanceCopyWith<$Res> {
  _$MaintenanceCopyWithImpl(this._value, this._then);

  final Maintenance _value;
  // ignore: unused_field
  final $Res Function(Maintenance) _then;

  @override
  $Res call({
    Object id = freezed,
    Object comment = freezed,
    Object service = freezed,
    Object urgency = freezed,
    Object assignment = freezed,
    Object status = freezed,
    Object fixedAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      comment: comment == freezed
          ? _value.comment
          : comment as BasicTextField<String>,
      service:
          service == freezed ? _value.service : service as MaintenanceService,
      urgency:
          urgency == freezed ? _value.urgency : urgency as BasicTextField<int>,
      assignment:
          assignment == freezed ? _value.assignment : assignment as Assignment,
      status: status == freezed ? _value.status : status as MaintenanceStatus,
      fixedAt: fixedAt == freezed ? _value.fixedAt : fixedAt as DateTime,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
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
abstract class _$MaintenanceCopyWith<$Res>
    implements $MaintenanceCopyWith<$Res> {
  factory _$MaintenanceCopyWith(
          _Maintenance value, $Res Function(_Maintenance) then) =
      __$MaintenanceCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<String> comment,
      @nullable MaintenanceService service,
      @nullable BasicTextField<int> urgency,
      @nullable Assignment assignment,
      @nullable MaintenanceStatus status,
      @nullable DateTime fixedAt,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});

  @override
  $MaintenanceServiceCopyWith<$Res> get service;
  @override
  $AssignmentCopyWith<$Res> get assignment;
}

/// @nodoc
class __$MaintenanceCopyWithImpl<$Res> extends _$MaintenanceCopyWithImpl<$Res>
    implements _$MaintenanceCopyWith<$Res> {
  __$MaintenanceCopyWithImpl(
      _Maintenance _value, $Res Function(_Maintenance) _then)
      : super(_value, (v) => _then(v as _Maintenance));

  @override
  _Maintenance get _value => super._value as _Maintenance;

  @override
  $Res call({
    Object id = freezed,
    Object comment = freezed,
    Object service = freezed,
    Object urgency = freezed,
    Object assignment = freezed,
    Object status = freezed,
    Object fixedAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_Maintenance(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      comment: comment == freezed
          ? _value.comment
          : comment as BasicTextField<String>,
      service:
          service == freezed ? _value.service : service as MaintenanceService,
      urgency:
          urgency == freezed ? _value.urgency : urgency as BasicTextField<int>,
      assignment:
          assignment == freezed ? _value.assignment : assignment as Assignment,
      status: status == freezed ? _value.status : status as MaintenanceStatus,
      fixedAt: fixedAt == freezed ? _value.fixedAt : fixedAt as DateTime,
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
class _$_Maintenance extends _Maintenance {
  const _$_Maintenance(
      {@nullable this.id,
      @nullable this.comment,
      @nullable this.service,
      @nullable this.urgency,
      @nullable this.assignment,
      @nullable this.status,
      @nullable this.fixedAt,
      @nullable this.createdAt,
      @nullable this.updatedAt,
      @nullable this.deletedAt})
      : super._();

  @override
  @nullable
  final UniqueId<int> id;
  @override
  @nullable
  final BasicTextField<String> comment;
  @override
  @nullable
  final MaintenanceService service;
  @override
  @nullable
  final BasicTextField<int> urgency;
  @override
  @nullable
  final Assignment assignment;
  @override
  @nullable
  final MaintenanceStatus status;
  @override
  @nullable
  final DateTime fixedAt;
  @override
  @nullable
  final DateTime createdAt;
  @override
  @nullable
  final DateTime updatedAt;
  @override
  @nullable
  final DateTime deletedAt;

  @override
  String toString() {
    return 'Maintenance(id: $id, comment: $comment, service: $service, urgency: $urgency, assignment: $assignment, status: $status, fixedAt: $fixedAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Maintenance &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.service, service) ||
                const DeepCollectionEquality()
                    .equals(other.service, service)) &&
            (identical(other.urgency, urgency) ||
                const DeepCollectionEquality()
                    .equals(other.urgency, urgency)) &&
            (identical(other.assignment, assignment) ||
                const DeepCollectionEquality()
                    .equals(other.assignment, assignment)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.fixedAt, fixedAt) ||
                const DeepCollectionEquality()
                    .equals(other.fixedAt, fixedAt)) &&
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
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(service) ^
      const DeepCollectionEquality().hash(urgency) ^
      const DeepCollectionEquality().hash(assignment) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(fixedAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$MaintenanceCopyWith<_Maintenance> get copyWith =>
      __$MaintenanceCopyWithImpl<_Maintenance>(this, _$identity);
}

abstract class _Maintenance extends Maintenance {
  const _Maintenance._() : super._();
  const factory _Maintenance(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<String> comment,
      @nullable MaintenanceService service,
      @nullable BasicTextField<int> urgency,
      @nullable Assignment assignment,
      @nullable MaintenanceStatus status,
      @nullable DateTime fixedAt,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) = _$_Maintenance;

  @override
  @nullable
  UniqueId<int> get id;
  @override
  @nullable
  BasicTextField<String> get comment;
  @override
  @nullable
  MaintenanceService get service;
  @override
  @nullable
  BasicTextField<int> get urgency;
  @override
  @nullable
  Assignment get assignment;
  @override
  @nullable
  MaintenanceStatus get status;
  @override
  @nullable
  DateTime get fixedAt;
  @override
  @nullable
  DateTime get createdAt;
  @override
  @nullable
  DateTime get updatedAt;
  @override
  @nullable
  DateTime get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$MaintenanceCopyWith<_Maintenance> get copyWith;
}
