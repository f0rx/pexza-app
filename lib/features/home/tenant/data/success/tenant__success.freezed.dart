// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of tenant__success.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TenantSuccess _$TenantSuccessFromJson(Map<String, dynamic> json) {
  return _TenantSuccess.fromJson(json);
}

/// @nodoc
class _$TenantSuccessTearOff {
  const _$TenantSuccessTearOff();

// ignore: unused_element
  _TenantSuccess call(
      {@JsonKey(ignore: true)
          String uuid,
      @nullable
          String status,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String message,
      @nullable
      @JsonKey(ignore: true)
          String details,
      @JsonKey(ignore: true)
          bool popRoute = true,
      @JsonKey(ignore: true)
          BottomAlertDialogPosition position}) {
    return _TenantSuccess(
      uuid: uuid,
      status: status,
      message: message,
      details: details,
      popRoute: popRoute,
      position: position,
    );
  }

// ignore: unused_element
  TenantSuccess fromJson(Map<String, Object> json) {
    return TenantSuccess.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TenantSuccess = _$TenantSuccessTearOff();

/// @nodoc
mixin _$TenantSuccess {
  @JsonKey(ignore: true)
  String get uuid;
  @nullable
  String get status;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get message;
  @nullable
  @JsonKey(ignore: true)
  String get details;
  @JsonKey(ignore: true)
  bool get popRoute;
  @JsonKey(ignore: true)
  BottomAlertDialogPosition get position;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TenantSuccessCopyWith<TenantSuccess> get copyWith;
}

/// @nodoc
abstract class $TenantSuccessCopyWith<$Res> {
  factory $TenantSuccessCopyWith(
          TenantSuccess value, $Res Function(TenantSuccess) then) =
      _$TenantSuccessCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String uuid,
      @nullable String status,
      @nullable @JsonKey(includeIfNull: false, defaultValue: '') String message,
      @nullable @JsonKey(ignore: true) String details,
      @JsonKey(ignore: true) bool popRoute,
      @JsonKey(ignore: true) BottomAlertDialogPosition position});
}

/// @nodoc
class _$TenantSuccessCopyWithImpl<$Res>
    implements $TenantSuccessCopyWith<$Res> {
  _$TenantSuccessCopyWithImpl(this._value, this._then);

  final TenantSuccess _value;
  // ignore: unused_field
  final $Res Function(TenantSuccess) _then;

  @override
  $Res call({
    Object uuid = freezed,
    Object status = freezed,
    Object message = freezed,
    Object details = freezed,
    Object popRoute = freezed,
    Object position = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed ? _value.uuid : uuid as String,
      status: status == freezed ? _value.status : status as String,
      message: message == freezed ? _value.message : message as String,
      details: details == freezed ? _value.details : details as String,
      popRoute: popRoute == freezed ? _value.popRoute : popRoute as bool,
      position: position == freezed
          ? _value.position
          : position as BottomAlertDialogPosition,
    ));
  }
}

/// @nodoc
abstract class _$TenantSuccessCopyWith<$Res>
    implements $TenantSuccessCopyWith<$Res> {
  factory _$TenantSuccessCopyWith(
          _TenantSuccess value, $Res Function(_TenantSuccess) then) =
      __$TenantSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String uuid,
      @nullable String status,
      @nullable @JsonKey(includeIfNull: false, defaultValue: '') String message,
      @nullable @JsonKey(ignore: true) String details,
      @JsonKey(ignore: true) bool popRoute,
      @JsonKey(ignore: true) BottomAlertDialogPosition position});
}

/// @nodoc
class __$TenantSuccessCopyWithImpl<$Res>
    extends _$TenantSuccessCopyWithImpl<$Res>
    implements _$TenantSuccessCopyWith<$Res> {
  __$TenantSuccessCopyWithImpl(
      _TenantSuccess _value, $Res Function(_TenantSuccess) _then)
      : super(_value, (v) => _then(v as _TenantSuccess));

  @override
  _TenantSuccess get _value => super._value as _TenantSuccess;

  @override
  $Res call({
    Object uuid = freezed,
    Object status = freezed,
    Object message = freezed,
    Object details = freezed,
    Object popRoute = freezed,
    Object position = freezed,
  }) {
    return _then(_TenantSuccess(
      uuid: uuid == freezed ? _value.uuid : uuid as String,
      status: status == freezed ? _value.status : status as String,
      message: message == freezed ? _value.message : message as String,
      details: details == freezed ? _value.details : details as String,
      popRoute: popRoute == freezed ? _value.popRoute : popRoute as bool,
      position: position == freezed
          ? _value.position
          : position as BottomAlertDialogPosition,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TenantSuccess extends _TenantSuccess {
  const _$_TenantSuccess(
      {@JsonKey(ignore: true)
          this.uuid,
      @nullable
          this.status,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.message,
      @nullable
      @JsonKey(ignore: true)
          this.details,
      @JsonKey(ignore: true)
          this.popRoute = true,
      @JsonKey(ignore: true)
          this.position})
      : assert(popRoute != null),
        super._();

  factory _$_TenantSuccess.fromJson(Map<String, dynamic> json) =>
      _$_$_TenantSuccessFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String uuid;
  @override
  @nullable
  final String status;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String message;
  @override
  @nullable
  @JsonKey(ignore: true)
  final String details;
  @override
  @JsonKey(ignore: true)
  final bool popRoute;
  @override
  @JsonKey(ignore: true)
  final BottomAlertDialogPosition position;

  @override
  String toString() {
    return 'TenantSuccess(uuid: $uuid, status: $status, message: $message, details: $details, popRoute: $popRoute, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TenantSuccess &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.popRoute, popRoute) ||
                const DeepCollectionEquality()
                    .equals(other.popRoute, popRoute)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(popRoute) ^
      const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  _$TenantSuccessCopyWith<_TenantSuccess> get copyWith =>
      __$TenantSuccessCopyWithImpl<_TenantSuccess>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TenantSuccessToJson(this);
  }
}

abstract class _TenantSuccess extends TenantSuccess {
  const _TenantSuccess._() : super._();
  const factory _TenantSuccess(
      {@JsonKey(ignore: true)
          String uuid,
      @nullable
          String status,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String message,
      @nullable
      @JsonKey(ignore: true)
          String details,
      @JsonKey(ignore: true)
          bool popRoute,
      @JsonKey(ignore: true)
          BottomAlertDialogPosition position}) = _$_TenantSuccess;

  factory _TenantSuccess.fromJson(Map<String, dynamic> json) =
      _$_TenantSuccess.fromJson;

  @override
  @JsonKey(ignore: true)
  String get uuid;
  @override
  @nullable
  String get status;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get message;
  @override
  @nullable
  @JsonKey(ignore: true)
  String get details;
  @override
  @JsonKey(ignore: true)
  bool get popRoute;
  @override
  @JsonKey(ignore: true)
  BottomAlertDialogPosition get position;
  @override
  @JsonKey(ignore: true)
  _$TenantSuccessCopyWith<_TenantSuccess> get copyWith;
}
