// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'rent_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RentDetailTearOff {
  const _$RentDetailTearOff();

// ignore: unused_element
  _RentDetail call({@required String item, String detail}) {
    return _RentDetail(
      item: item,
      detail: detail,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RentDetail = _$RentDetailTearOff();

/// @nodoc
mixin _$RentDetail {
  String get item;
  String get detail;

  @JsonKey(ignore: true)
  $RentDetailCopyWith<RentDetail> get copyWith;
}

/// @nodoc
abstract class $RentDetailCopyWith<$Res> {
  factory $RentDetailCopyWith(
          RentDetail value, $Res Function(RentDetail) then) =
      _$RentDetailCopyWithImpl<$Res>;
  $Res call({String item, String detail});
}

/// @nodoc
class _$RentDetailCopyWithImpl<$Res> implements $RentDetailCopyWith<$Res> {
  _$RentDetailCopyWithImpl(this._value, this._then);

  final RentDetail _value;
  // ignore: unused_field
  final $Res Function(RentDetail) _then;

  @override
  $Res call({
    Object item = freezed,
    Object detail = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed ? _value.item : item as String,
      detail: detail == freezed ? _value.detail : detail as String,
    ));
  }
}

/// @nodoc
abstract class _$RentDetailCopyWith<$Res> implements $RentDetailCopyWith<$Res> {
  factory _$RentDetailCopyWith(
          _RentDetail value, $Res Function(_RentDetail) then) =
      __$RentDetailCopyWithImpl<$Res>;
  @override
  $Res call({String item, String detail});
}

/// @nodoc
class __$RentDetailCopyWithImpl<$Res> extends _$RentDetailCopyWithImpl<$Res>
    implements _$RentDetailCopyWith<$Res> {
  __$RentDetailCopyWithImpl(
      _RentDetail _value, $Res Function(_RentDetail) _then)
      : super(_value, (v) => _then(v as _RentDetail));

  @override
  _RentDetail get _value => super._value as _RentDetail;

  @override
  $Res call({
    Object item = freezed,
    Object detail = freezed,
  }) {
    return _then(_RentDetail(
      item: item == freezed ? _value.item : item as String,
      detail: detail == freezed ? _value.detail : detail as String,
    ));
  }
}

/// @nodoc
class _$_RentDetail extends _RentDetail {
  const _$_RentDetail({@required this.item, this.detail})
      : assert(item != null),
        super._();

  @override
  final String item;
  @override
  final String detail;

  @override
  String toString() {
    return 'RentDetail(item: $item, detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RentDetail &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(item) ^
      const DeepCollectionEquality().hash(detail);

  @JsonKey(ignore: true)
  @override
  _$RentDetailCopyWith<_RentDetail> get copyWith =>
      __$RentDetailCopyWithImpl<_RentDetail>(this, _$identity);
}

abstract class _RentDetail extends RentDetail {
  const _RentDetail._() : super._();
  const factory _RentDetail({@required String item, String detail}) =
      _$_RentDetail;

  @override
  String get item;
  @override
  String get detail;
  @override
  @JsonKey(ignore: true)
  _$RentDetailCopyWith<_RentDetail> get copyWith;
}
