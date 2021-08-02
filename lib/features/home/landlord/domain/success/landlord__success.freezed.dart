// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of landlord__success.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LandlordSuccess _$LandlordSuccessFromJson(Map<String, dynamic> json) {
  return _LandlordSuccess.fromJson(json);
}

/// @nodoc
class _$LandlordSuccessTearOff {
  const _$LandlordSuccessTearOff();

// ignore: unused_element
  _LandlordSuccess call(
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
    return _LandlordSuccess(
      uuid: uuid,
      status: status,
      message: message,
      details: details,
      popRoute: popRoute,
      position: position,
    );
  }

// ignore: unused_element
  LandlordSuccess fromJson(Map<String, Object> json) {
    return LandlordSuccess.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LandlordSuccess = _$LandlordSuccessTearOff();

/// @nodoc
mixin _$LandlordSuccess {
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
  $LandlordSuccessCopyWith<LandlordSuccess> get copyWith;
}

/// @nodoc
abstract class $LandlordSuccessCopyWith<$Res> {
  factory $LandlordSuccessCopyWith(
          LandlordSuccess value, $Res Function(LandlordSuccess) then) =
      _$LandlordSuccessCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String uuid,
      @nullable String status,
      @nullable @JsonKey(includeIfNull: false, defaultValue: '') String message,
      @nullable @JsonKey(ignore: true) String details,
      @JsonKey(ignore: true) bool popRoute,
      @JsonKey(ignore: true) BottomAlertDialogPosition position});
}

/// @nodoc
class _$LandlordSuccessCopyWithImpl<$Res>
    implements $LandlordSuccessCopyWith<$Res> {
  _$LandlordSuccessCopyWithImpl(this._value, this._then);

  final LandlordSuccess _value;
  // ignore: unused_field
  final $Res Function(LandlordSuccess) _then;

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
abstract class _$LandlordSuccessCopyWith<$Res>
    implements $LandlordSuccessCopyWith<$Res> {
  factory _$LandlordSuccessCopyWith(
          _LandlordSuccess value, $Res Function(_LandlordSuccess) then) =
      __$LandlordSuccessCopyWithImpl<$Res>;
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
class __$LandlordSuccessCopyWithImpl<$Res>
    extends _$LandlordSuccessCopyWithImpl<$Res>
    implements _$LandlordSuccessCopyWith<$Res> {
  __$LandlordSuccessCopyWithImpl(
      _LandlordSuccess _value, $Res Function(_LandlordSuccess) _then)
      : super(_value, (v) => _then(v as _LandlordSuccess));

  @override
  _LandlordSuccess get _value => super._value as _LandlordSuccess;

  @override
  $Res call({
    Object uuid = freezed,
    Object status = freezed,
    Object message = freezed,
    Object details = freezed,
    Object popRoute = freezed,
    Object position = freezed,
  }) {
    return _then(_LandlordSuccess(
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
class _$_LandlordSuccess extends _LandlordSuccess {
  const _$_LandlordSuccess(
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

  factory _$_LandlordSuccess.fromJson(Map<String, dynamic> json) =>
      _$_$_LandlordSuccessFromJson(json);

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
    return 'LandlordSuccess(uuid: $uuid, status: $status, message: $message, details: $details, popRoute: $popRoute, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LandlordSuccess &&
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
  _$LandlordSuccessCopyWith<_LandlordSuccess> get copyWith =>
      __$LandlordSuccessCopyWithImpl<_LandlordSuccess>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LandlordSuccessToJson(this);
  }
}

abstract class _LandlordSuccess extends LandlordSuccess {
  const _LandlordSuccess._() : super._();
  const factory _LandlordSuccess(
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
          BottomAlertDialogPosition position}) = _$_LandlordSuccess;

  factory _LandlordSuccess.fromJson(Map<String, dynamic> json) =
      _$_LandlordSuccess.fromJson;

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
  _$LandlordSuccessCopyWith<_LandlordSuccess> get copyWith;
}
