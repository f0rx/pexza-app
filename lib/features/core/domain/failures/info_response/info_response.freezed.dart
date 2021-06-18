// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of info_response.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$InfoResponseTearOff {
  const _$InfoResponseTearOff();

// ignore: unused_element
  _InfoResponse call(
      {@required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String message,
      @nullable
      @JsonKey(ignore: true)
          String details,
      @JsonKey(ignore: true)
          BottomAlertDialogPosition position}) {
    return _InfoResponse(
      message: message,
      details: details,
      position: position,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $InfoResponse = _$InfoResponseTearOff();

/// @nodoc
mixin _$InfoResponse {
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get message;
  @nullable
  @JsonKey(ignore: true)
  String get details;
  @JsonKey(ignore: true)
  BottomAlertDialogPosition get position;

  @JsonKey(ignore: true)
  $InfoResponseCopyWith<InfoResponse> get copyWith;
}

/// @nodoc
abstract class $InfoResponseCopyWith<$Res> {
  factory $InfoResponseCopyWith(
          InfoResponse value, $Res Function(InfoResponse) then) =
      _$InfoResponseCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String message,
      @nullable
      @JsonKey(ignore: true)
          String details,
      @JsonKey(ignore: true)
          BottomAlertDialogPosition position});
}

/// @nodoc
class _$InfoResponseCopyWithImpl<$Res> implements $InfoResponseCopyWith<$Res> {
  _$InfoResponseCopyWithImpl(this._value, this._then);

  final InfoResponse _value;
  // ignore: unused_field
  final $Res Function(InfoResponse) _then;

  @override
  $Res call({
    Object message = freezed,
    Object details = freezed,
    Object position = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
      details: details == freezed ? _value.details : details as String,
      position: position == freezed
          ? _value.position
          : position as BottomAlertDialogPosition,
    ));
  }
}

/// @nodoc
abstract class _$InfoResponseCopyWith<$Res>
    implements $InfoResponseCopyWith<$Res> {
  factory _$InfoResponseCopyWith(
          _InfoResponse value, $Res Function(_InfoResponse) then) =
      __$InfoResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String message,
      @nullable
      @JsonKey(ignore: true)
          String details,
      @JsonKey(ignore: true)
          BottomAlertDialogPosition position});
}

/// @nodoc
class __$InfoResponseCopyWithImpl<$Res> extends _$InfoResponseCopyWithImpl<$Res>
    implements _$InfoResponseCopyWith<$Res> {
  __$InfoResponseCopyWithImpl(
      _InfoResponse _value, $Res Function(_InfoResponse) _then)
      : super(_value, (v) => _then(v as _InfoResponse));

  @override
  _InfoResponse get _value => super._value as _InfoResponse;

  @override
  $Res call({
    Object message = freezed,
    Object details = freezed,
    Object position = freezed,
  }) {
    return _then(_InfoResponse(
      message: message == freezed ? _value.message : message as String,
      details: details == freezed ? _value.details : details as String,
      position: position == freezed
          ? _value.position
          : position as BottomAlertDialogPosition,
    ));
  }
}

/// @nodoc
class _$_InfoResponse extends _InfoResponse {
  const _$_InfoResponse(
      {@required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.message,
      @nullable
      @JsonKey(ignore: true)
          this.details,
      @JsonKey(ignore: true)
          this.position})
      : super._();

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
  final BottomAlertDialogPosition position;

  @override
  String toString() {
    return 'InfoResponse(message: $message, details: $details, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InfoResponse &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  _$InfoResponseCopyWith<_InfoResponse> get copyWith =>
      __$InfoResponseCopyWithImpl<_InfoResponse>(this, _$identity);
}

abstract class _InfoResponse extends InfoResponse {
  const _InfoResponse._() : super._();
  const factory _InfoResponse(
      {@required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String message,
      @nullable
      @JsonKey(ignore: true)
          String details,
      @JsonKey(ignore: true)
          BottomAlertDialogPosition position}) = _$_InfoResponse;

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
  BottomAlertDialogPosition get position;
  @override
  @JsonKey(ignore: true)
  _$InfoResponseCopyWith<_InfoResponse> get copyWith;
}
