// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of currency.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CurrencyTearOff {
  const _$CurrencyTearOff();

// ignore: unused_element
  _Currency call(
      {@nullable UniqueId<int> id,
      @nullable String name,
      @nullable CurrencyType type}) {
    return _Currency(
      id: id,
      name: name,
      type: type,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Currency = _$CurrencyTearOff();

/// @nodoc
mixin _$Currency {
  @nullable
  UniqueId<int> get id;
  @nullable
  String get name;
  @nullable
  CurrencyType get type;

  @JsonKey(ignore: true)
  $CurrencyCopyWith<Currency> get copyWith;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res>;
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable String name,
      @nullable CurrencyType type});
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res> implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  final Currency _value;
  // ignore: unused_field
  final $Res Function(Currency) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as CurrencyType,
    ));
  }
}

/// @nodoc
abstract class _$CurrencyCopyWith<$Res> implements $CurrencyCopyWith<$Res> {
  factory _$CurrencyCopyWith(_Currency value, $Res Function(_Currency) then) =
      __$CurrencyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable String name,
      @nullable CurrencyType type});
}

/// @nodoc
class __$CurrencyCopyWithImpl<$Res> extends _$CurrencyCopyWithImpl<$Res>
    implements _$CurrencyCopyWith<$Res> {
  __$CurrencyCopyWithImpl(_Currency _value, $Res Function(_Currency) _then)
      : super(_value, (v) => _then(v as _Currency));

  @override
  _Currency get _value => super._value as _Currency;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object type = freezed,
  }) {
    return _then(_Currency(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as CurrencyType,
    ));
  }
}

/// @nodoc
class _$_Currency extends _Currency {
  const _$_Currency(
      {@nullable this.id, @nullable this.name, @nullable this.type})
      : super._();

  @override
  @nullable
  final UniqueId<int> id;
  @override
  @nullable
  final String name;
  @override
  @nullable
  final CurrencyType type;

  @override
  String toString() {
    return 'Currency(id: $id, name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Currency &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$CurrencyCopyWith<_Currency> get copyWith =>
      __$CurrencyCopyWithImpl<_Currency>(this, _$identity);
}

abstract class _Currency extends Currency {
  const _Currency._() : super._();
  const factory _Currency(
      {@nullable UniqueId<int> id,
      @nullable String name,
      @nullable CurrencyType type}) = _$_Currency;

  @override
  @nullable
  UniqueId<int> get id;
  @override
  @nullable
  String get name;
  @override
  @nullable
  CurrencyType get type;
  @override
  @JsonKey(ignore: true)
  _$CurrencyCopyWith<_Currency> get copyWith;
}
