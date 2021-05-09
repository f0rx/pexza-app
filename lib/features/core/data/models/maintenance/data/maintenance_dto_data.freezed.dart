// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of maintenance_dto_data.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MaintenanceDTOData _$MaintenanceDTODataFromJson(Map<String, dynamic> json) {
  return _MaintenanceDTOData.fromJson(json);
}

/// @nodoc
class _$MaintenanceDTODataTearOff {
  const _$MaintenanceDTODataTearOff();

// ignore: unused_element
  _MaintenanceDTOData call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String comment,
      @nullable
      @JsonKey(includeIfNull: false)
          MaintenanceServiceDTO service,
      @nullable
      @JsonKey(includeIfNull: false, name: 'service_id')
          int serviceId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'assignment_id')
          int assignmentId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
      @IntegerSerializer()
          int urgency,
      @nullable
      @JsonKey(includeIfNull: false)
          String status,
      @nullable
      @JsonKey(includeIfNull: false)
          AssignmentDTOData assignment,
      @nullable
      @JsonKey(includeIfNull: false, name: "fixed_at")
      @TimestampConverter()
          String fixedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          String deletedAt}) {
    return _MaintenanceDTOData(
      id: id,
      comment: comment,
      service: service,
      serviceId: serviceId,
      assignmentId: assignmentId,
      urgency: urgency,
      status: status,
      assignment: assignment,
      fixedAt: fixedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

// ignore: unused_element
  MaintenanceDTOData fromJson(Map<String, Object> json) {
    return MaintenanceDTOData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MaintenanceDTOData = _$MaintenanceDTODataTearOff();

/// @nodoc
mixin _$MaintenanceDTOData {
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  int get id;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get comment;
  @nullable
  @JsonKey(includeIfNull: false)
  MaintenanceServiceDTO get service;
  @nullable
  @JsonKey(includeIfNull: false, name: 'service_id')
  int get serviceId;
  @nullable
  @JsonKey(includeIfNull: false, name: 'assignment_id')
  int get assignmentId;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  @IntegerSerializer()
  int get urgency;
  @nullable
  @JsonKey(includeIfNull: false)
  String get status;
  @nullable
  @JsonKey(includeIfNull: false)
  AssignmentDTOData get assignment;
  @nullable
  @JsonKey(includeIfNull: false, name: "fixed_at")
  @TimestampConverter()
  String get fixedAt;
  @nullable
  @JsonKey(includeIfNull: false, name: "created_at")
  @TimestampConverter()
  String get createdAt;
  @nullable
  @JsonKey(includeIfNull: false, name: "updated_at")
  @TimestampConverter()
  String get updatedAt;
  @nullable
  @JsonKey(includeIfNull: false, name: "deleted_at")
  @TimestampConverter()
  String get deletedAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MaintenanceDTODataCopyWith<MaintenanceDTOData> get copyWith;
}

/// @nodoc
abstract class $MaintenanceDTODataCopyWith<$Res> {
  factory $MaintenanceDTODataCopyWith(
          MaintenanceDTOData value, $Res Function(MaintenanceDTOData) then) =
      _$MaintenanceDTODataCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String comment,
      @nullable
      @JsonKey(includeIfNull: false)
          MaintenanceServiceDTO service,
      @nullable
      @JsonKey(includeIfNull: false, name: 'service_id')
          int serviceId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'assignment_id')
          int assignmentId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
      @IntegerSerializer()
          int urgency,
      @nullable
      @JsonKey(includeIfNull: false)
          String status,
      @nullable
      @JsonKey(includeIfNull: false)
          AssignmentDTOData assignment,
      @nullable
      @JsonKey(includeIfNull: false, name: "fixed_at")
      @TimestampConverter()
          String fixedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          String deletedAt});

  $MaintenanceServiceDTOCopyWith<$Res> get service;
  $AssignmentDTODataCopyWith<$Res> get assignment;
}

/// @nodoc
class _$MaintenanceDTODataCopyWithImpl<$Res>
    implements $MaintenanceDTODataCopyWith<$Res> {
  _$MaintenanceDTODataCopyWithImpl(this._value, this._then);

  final MaintenanceDTOData _value;
  // ignore: unused_field
  final $Res Function(MaintenanceDTOData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object comment = freezed,
    Object service = freezed,
    Object serviceId = freezed,
    Object assignmentId = freezed,
    Object urgency = freezed,
    Object status = freezed,
    Object assignment = freezed,
    Object fixedAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      comment: comment == freezed ? _value.comment : comment as String,
      service: service == freezed
          ? _value.service
          : service as MaintenanceServiceDTO,
      serviceId: serviceId == freezed ? _value.serviceId : serviceId as int,
      assignmentId:
          assignmentId == freezed ? _value.assignmentId : assignmentId as int,
      urgency: urgency == freezed ? _value.urgency : urgency as int,
      status: status == freezed ? _value.status : status as String,
      assignment: assignment == freezed
          ? _value.assignment
          : assignment as AssignmentDTOData,
      fixedAt: fixedAt == freezed ? _value.fixedAt : fixedAt as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }

  @override
  $MaintenanceServiceDTOCopyWith<$Res> get service {
    if (_value.service == null) {
      return null;
    }
    return $MaintenanceServiceDTOCopyWith<$Res>(_value.service, (value) {
      return _then(_value.copyWith(service: value));
    });
  }

  @override
  $AssignmentDTODataCopyWith<$Res> get assignment {
    if (_value.assignment == null) {
      return null;
    }
    return $AssignmentDTODataCopyWith<$Res>(_value.assignment, (value) {
      return _then(_value.copyWith(assignment: value));
    });
  }
}

/// @nodoc
abstract class _$MaintenanceDTODataCopyWith<$Res>
    implements $MaintenanceDTODataCopyWith<$Res> {
  factory _$MaintenanceDTODataCopyWith(
          _MaintenanceDTOData value, $Res Function(_MaintenanceDTOData) then) =
      __$MaintenanceDTODataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String comment,
      @nullable
      @JsonKey(includeIfNull: false)
          MaintenanceServiceDTO service,
      @nullable
      @JsonKey(includeIfNull: false, name: 'service_id')
          int serviceId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'assignment_id')
          int assignmentId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
      @IntegerSerializer()
          int urgency,
      @nullable
      @JsonKey(includeIfNull: false)
          String status,
      @nullable
      @JsonKey(includeIfNull: false)
          AssignmentDTOData assignment,
      @nullable
      @JsonKey(includeIfNull: false, name: "fixed_at")
      @TimestampConverter()
          String fixedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          String deletedAt});

  @override
  $MaintenanceServiceDTOCopyWith<$Res> get service;
  @override
  $AssignmentDTODataCopyWith<$Res> get assignment;
}

/// @nodoc
class __$MaintenanceDTODataCopyWithImpl<$Res>
    extends _$MaintenanceDTODataCopyWithImpl<$Res>
    implements _$MaintenanceDTODataCopyWith<$Res> {
  __$MaintenanceDTODataCopyWithImpl(
      _MaintenanceDTOData _value, $Res Function(_MaintenanceDTOData) _then)
      : super(_value, (v) => _then(v as _MaintenanceDTOData));

  @override
  _MaintenanceDTOData get _value => super._value as _MaintenanceDTOData;

  @override
  $Res call({
    Object id = freezed,
    Object comment = freezed,
    Object service = freezed,
    Object serviceId = freezed,
    Object assignmentId = freezed,
    Object urgency = freezed,
    Object status = freezed,
    Object assignment = freezed,
    Object fixedAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_MaintenanceDTOData(
      id: id == freezed ? _value.id : id as int,
      comment: comment == freezed ? _value.comment : comment as String,
      service: service == freezed
          ? _value.service
          : service as MaintenanceServiceDTO,
      serviceId: serviceId == freezed ? _value.serviceId : serviceId as int,
      assignmentId:
          assignmentId == freezed ? _value.assignmentId : assignmentId as int,
      urgency: urgency == freezed ? _value.urgency : urgency as int,
      status: status == freezed ? _value.status : status as String,
      assignment: assignment == freezed
          ? _value.assignment
          : assignment as AssignmentDTOData,
      fixedAt: fixedAt == freezed ? _value.fixedAt : fixedAt as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MaintenanceDTOData extends _MaintenanceDTOData {
  const _$_MaintenanceDTOData(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          this.id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.comment,
      @nullable
      @JsonKey(includeIfNull: false)
          this.service,
      @nullable
      @JsonKey(includeIfNull: false, name: 'service_id')
          this.serviceId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'assignment_id')
          this.assignmentId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
      @IntegerSerializer()
          this.urgency,
      @nullable
      @JsonKey(includeIfNull: false)
          this.status,
      @nullable
      @JsonKey(includeIfNull: false)
          this.assignment,
      @nullable
      @JsonKey(includeIfNull: false, name: "fixed_at")
      @TimestampConverter()
          this.fixedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          this.createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          this.updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          this.deletedAt})
      : super._();

  factory _$_MaintenanceDTOData.fromJson(Map<String, dynamic> json) =>
      _$_$_MaintenanceDTODataFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  final int id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String comment;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final MaintenanceServiceDTO service;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'service_id')
  final int serviceId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'assignment_id')
  final int assignmentId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  @IntegerSerializer()
  final int urgency;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final String status;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final AssignmentDTOData assignment;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "fixed_at")
  @TimestampConverter()
  final String fixedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "created_at")
  @TimestampConverter()
  final String createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "updated_at")
  @TimestampConverter()
  final String updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "deleted_at")
  @TimestampConverter()
  final String deletedAt;

  @override
  String toString() {
    return 'MaintenanceDTOData(id: $id, comment: $comment, service: $service, serviceId: $serviceId, assignmentId: $assignmentId, urgency: $urgency, status: $status, assignment: $assignment, fixedAt: $fixedAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MaintenanceDTOData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.service, service) ||
                const DeepCollectionEquality()
                    .equals(other.service, service)) &&
            (identical(other.serviceId, serviceId) ||
                const DeepCollectionEquality()
                    .equals(other.serviceId, serviceId)) &&
            (identical(other.assignmentId, assignmentId) ||
                const DeepCollectionEquality()
                    .equals(other.assignmentId, assignmentId)) &&
            (identical(other.urgency, urgency) ||
                const DeepCollectionEquality()
                    .equals(other.urgency, urgency)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.assignment, assignment) ||
                const DeepCollectionEquality()
                    .equals(other.assignment, assignment)) &&
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
      const DeepCollectionEquality().hash(serviceId) ^
      const DeepCollectionEquality().hash(assignmentId) ^
      const DeepCollectionEquality().hash(urgency) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(assignment) ^
      const DeepCollectionEquality().hash(fixedAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$MaintenanceDTODataCopyWith<_MaintenanceDTOData> get copyWith =>
      __$MaintenanceDTODataCopyWithImpl<_MaintenanceDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MaintenanceDTODataToJson(this);
  }
}

abstract class _MaintenanceDTOData extends MaintenanceDTOData {
  const _MaintenanceDTOData._() : super._();
  const factory _MaintenanceDTOData(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String comment,
      @nullable
      @JsonKey(includeIfNull: false)
          MaintenanceServiceDTO service,
      @nullable
      @JsonKey(includeIfNull: false, name: 'service_id')
          int serviceId,
      @nullable
      @JsonKey(includeIfNull: false, name: 'assignment_id')
          int assignmentId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
      @IntegerSerializer()
          int urgency,
      @nullable
      @JsonKey(includeIfNull: false)
          String status,
      @nullable
      @JsonKey(includeIfNull: false)
          AssignmentDTOData assignment,
      @nullable
      @JsonKey(includeIfNull: false, name: "fixed_at")
      @TimestampConverter()
          String fixedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          String deletedAt}) = _$_MaintenanceDTOData;

  factory _MaintenanceDTOData.fromJson(Map<String, dynamic> json) =
      _$_MaintenanceDTOData.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  int get id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get comment;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  MaintenanceServiceDTO get service;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'service_id')
  int get serviceId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'assignment_id')
  int get assignmentId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  @IntegerSerializer()
  int get urgency;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  String get status;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  AssignmentDTOData get assignment;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "fixed_at")
  @TimestampConverter()
  String get fixedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "created_at")
  @TimestampConverter()
  String get createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "updated_at")
  @TimestampConverter()
  String get updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "deleted_at")
  @TimestampConverter()
  String get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$MaintenanceDTODataCopyWith<_MaintenanceDTOData> get copyWith;
}
