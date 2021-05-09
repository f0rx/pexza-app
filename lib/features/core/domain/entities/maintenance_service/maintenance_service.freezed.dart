// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of maintenance_service.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MaintenanceServiceTearOff {
  const _$MaintenanceServiceTearOff();

// ignore: unused_element
  _MaintenanceService call(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<String> name,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) {
    return _MaintenanceService(
      id: id,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MaintenanceService = _$MaintenanceServiceTearOff();

/// @nodoc
mixin _$MaintenanceService {
  @nullable
  UniqueId<int> get id;
  @nullable
  BasicTextField<String> get name;
  @nullable
  DateTime get createdAt;
  @nullable
  DateTime get updatedAt;
  @nullable
  DateTime get deletedAt;

  @JsonKey(ignore: true)
  $MaintenanceServiceCopyWith<MaintenanceService> get copyWith;
}

/// @nodoc
abstract class $MaintenanceServiceCopyWith<$Res> {
  factory $MaintenanceServiceCopyWith(
          MaintenanceService value, $Res Function(MaintenanceService) then) =
      _$MaintenanceServiceCopyWithImpl<$Res>;
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<String> name,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});
}

/// @nodoc
class _$MaintenanceServiceCopyWithImpl<$Res>
    implements $MaintenanceServiceCopyWith<$Res> {
  _$MaintenanceServiceCopyWithImpl(this._value, this._then);

  final MaintenanceService _value;
  // ignore: unused_field
  final $Res Function(MaintenanceService) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      name: name == freezed ? _value.name : name as BasicTextField<String>,
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
abstract class _$MaintenanceServiceCopyWith<$Res>
    implements $MaintenanceServiceCopyWith<$Res> {
  factory _$MaintenanceServiceCopyWith(
          _MaintenanceService value, $Res Function(_MaintenanceService) then) =
      __$MaintenanceServiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<String> name,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});
}

/// @nodoc
class __$MaintenanceServiceCopyWithImpl<$Res>
    extends _$MaintenanceServiceCopyWithImpl<$Res>
    implements _$MaintenanceServiceCopyWith<$Res> {
  __$MaintenanceServiceCopyWithImpl(
      _MaintenanceService _value, $Res Function(_MaintenanceService) _then)
      : super(_value, (v) => _then(v as _MaintenanceService));

  @override
  _MaintenanceService get _value => super._value as _MaintenanceService;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_MaintenanceService(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      name: name == freezed ? _value.name : name as BasicTextField<String>,
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
class _$_MaintenanceService extends _MaintenanceService {
  const _$_MaintenanceService(
      {@nullable this.id,
      @nullable this.name,
      @nullable this.createdAt,
      @nullable this.updatedAt,
      @nullable this.deletedAt})
      : super._();

  @override
  @nullable
  final UniqueId<int> id;
  @override
  @nullable
  final BasicTextField<String> name;
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
    return 'MaintenanceService(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MaintenanceService &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
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
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$MaintenanceServiceCopyWith<_MaintenanceService> get copyWith =>
      __$MaintenanceServiceCopyWithImpl<_MaintenanceService>(this, _$identity);
}

abstract class _MaintenanceService extends MaintenanceService {
  const _MaintenanceService._() : super._();
  const factory _MaintenanceService(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<String> name,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) = _$_MaintenanceService;

  @override
  @nullable
  UniqueId<int> get id;
  @override
  @nullable
  BasicTextField<String> get name;
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
  _$MaintenanceServiceCopyWith<_MaintenanceService> get copyWith;
}
