// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of bank.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BankTearOff {
  const _$BankTearOff();

// ignore: unused_element
  _Bank call(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<String> name,
      @nullable BasicTextField<String> code,
      @nullable BasicTextField<String> countryCode,
      @nullable BasicTextField<String> countryName,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) {
    return _Bank(
      id: id,
      name: name,
      code: code,
      countryCode: countryCode,
      countryName: countryName,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Bank = _$BankTearOff();

/// @nodoc
mixin _$Bank {
  @nullable
  UniqueId<int> get id;
  @nullable
  BasicTextField<String> get name;
  @nullable
  BasicTextField<String> get code;
  @nullable
  BasicTextField<String> get countryCode;
  @nullable
  BasicTextField<String> get countryName;
  @nullable
  DateTime get updatedAt;
  @nullable
  DateTime get deletedAt;

  @JsonKey(ignore: true)
  $BankCopyWith<Bank> get copyWith;
}

/// @nodoc
abstract class $BankCopyWith<$Res> {
  factory $BankCopyWith(Bank value, $Res Function(Bank) then) =
      _$BankCopyWithImpl<$Res>;
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<String> name,
      @nullable BasicTextField<String> code,
      @nullable BasicTextField<String> countryCode,
      @nullable BasicTextField<String> countryName,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});
}

/// @nodoc
class _$BankCopyWithImpl<$Res> implements $BankCopyWith<$Res> {
  _$BankCopyWithImpl(this._value, this._then);

  final Bank _value;
  // ignore: unused_field
  final $Res Function(Bank) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object code = freezed,
    Object countryCode = freezed,
    Object countryName = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      name: name == freezed ? _value.name : name as BasicTextField<String>,
      code: code == freezed ? _value.code : code as BasicTextField<String>,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode as BasicTextField<String>,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName as BasicTextField<String>,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$BankCopyWith<$Res> implements $BankCopyWith<$Res> {
  factory _$BankCopyWith(_Bank value, $Res Function(_Bank) then) =
      __$BankCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<String> name,
      @nullable BasicTextField<String> code,
      @nullable BasicTextField<String> countryCode,
      @nullable BasicTextField<String> countryName,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});
}

/// @nodoc
class __$BankCopyWithImpl<$Res> extends _$BankCopyWithImpl<$Res>
    implements _$BankCopyWith<$Res> {
  __$BankCopyWithImpl(_Bank _value, $Res Function(_Bank) _then)
      : super(_value, (v) => _then(v as _Bank));

  @override
  _Bank get _value => super._value as _Bank;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object code = freezed,
    Object countryCode = freezed,
    Object countryName = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_Bank(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      name: name == freezed ? _value.name : name as BasicTextField<String>,
      code: code == freezed ? _value.code : code as BasicTextField<String>,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode as BasicTextField<String>,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName as BasicTextField<String>,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }
}

/// @nodoc
class _$_Bank extends _Bank {
  const _$_Bank(
      {@nullable this.id,
      @nullable this.name,
      @nullable this.code,
      @nullable this.countryCode,
      @nullable this.countryName,
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
  final BasicTextField<String> code;
  @override
  @nullable
  final BasicTextField<String> countryCode;
  @override
  @nullable
  final BasicTextField<String> countryName;
  @override
  @nullable
  final DateTime updatedAt;
  @override
  @nullable
  final DateTime deletedAt;

  @override
  String toString() {
    return 'Bank(id: $id, name: $name, code: $code, countryCode: $countryCode, countryName: $countryName, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Bank &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality()
                    .equals(other.countryName, countryName)) &&
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
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$BankCopyWith<_Bank> get copyWith =>
      __$BankCopyWithImpl<_Bank>(this, _$identity);
}

abstract class _Bank extends Bank {
  const _Bank._() : super._();
  const factory _Bank(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<String> name,
      @nullable BasicTextField<String> code,
      @nullable BasicTextField<String> countryCode,
      @nullable BasicTextField<String> countryName,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) = _$_Bank;

  @override
  @nullable
  UniqueId<int> get id;
  @override
  @nullable
  BasicTextField<String> get name;
  @override
  @nullable
  BasicTextField<String> get code;
  @override
  @nullable
  BasicTextField<String> get countryCode;
  @override
  @nullable
  BasicTextField<String> get countryName;
  @override
  @nullable
  DateTime get updatedAt;
  @override
  @nullable
  DateTime get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$BankCopyWith<_Bank> get copyWith;
}
