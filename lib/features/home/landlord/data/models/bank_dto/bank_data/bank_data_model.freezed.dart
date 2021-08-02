// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of bank_data_model.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BankDataModel _$BankDataModelFromJson(Map<String, dynamic> json) {
  return _BankDataModel.fromJson(json);
}

/// @nodoc
class _$BankDataModelTearOff {
  const _$BankDataModelTearOff();

// ignore: unused_element
  _BankDataModel call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String code,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country')
          String countryCode,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_full_name')
          String countryName,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime deletedAt}) {
    return _BankDataModel(
      id: id,
      name: name,
      code: code,
      countryCode: countryCode,
      countryName: countryName,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

// ignore: unused_element
  BankDataModel fromJson(Map<String, Object> json) {
    return BankDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BankDataModel = _$BankDataModelTearOff();

/// @nodoc
mixin _$BankDataModel {
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get name;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get code;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country')
  String get countryCode;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_full_name')
  String get countryName;
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  DateTime get updatedAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  DateTime get deletedAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $BankDataModelCopyWith<BankDataModel> get copyWith;
}

/// @nodoc
abstract class $BankDataModelCopyWith<$Res> {
  factory $BankDataModelCopyWith(
          BankDataModel value, $Res Function(BankDataModel) then) =
      _$BankDataModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String code,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country')
          String countryCode,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_full_name')
          String countryName,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime deletedAt});
}

/// @nodoc
class _$BankDataModelCopyWithImpl<$Res>
    implements $BankDataModelCopyWith<$Res> {
  _$BankDataModelCopyWithImpl(this._value, this._then);

  final BankDataModel _value;
  // ignore: unused_field
  final $Res Function(BankDataModel) _then;

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
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      code: code == freezed ? _value.code : code as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      countryName:
          countryName == freezed ? _value.countryName : countryName as String,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$BankDataModelCopyWith<$Res>
    implements $BankDataModelCopyWith<$Res> {
  factory _$BankDataModelCopyWith(
          _BankDataModel value, $Res Function(_BankDataModel) then) =
      __$BankDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String code,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country')
          String countryCode,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_full_name')
          String countryName,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime deletedAt});
}

/// @nodoc
class __$BankDataModelCopyWithImpl<$Res>
    extends _$BankDataModelCopyWithImpl<$Res>
    implements _$BankDataModelCopyWith<$Res> {
  __$BankDataModelCopyWithImpl(
      _BankDataModel _value, $Res Function(_BankDataModel) _then)
      : super(_value, (v) => _then(v as _BankDataModel));

  @override
  _BankDataModel get _value => super._value as _BankDataModel;

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
    return _then(_BankDataModel(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      code: code == freezed ? _value.code : code as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      countryName:
          countryName == freezed ? _value.countryName : countryName as String,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BankDataModel extends _BankDataModel {
  const _$_BankDataModel(
      {@nullable
      @JsonKey(includeIfNull: false)
          this.id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.code,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country')
          this.countryCode,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_full_name')
          this.countryName,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          this.updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          this.deletedAt})
      : super._();

  factory _$_BankDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BankDataModelFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final int id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String name;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String code;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country')
  final String countryCode;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_full_name')
  final String countryName;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  final DateTime updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  final DateTime deletedAt;

  @override
  String toString() {
    return 'BankDataModel(id: $id, name: $name, code: $code, countryCode: $countryCode, countryName: $countryName, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BankDataModel &&
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
  _$BankDataModelCopyWith<_BankDataModel> get copyWith =>
      __$BankDataModelCopyWithImpl<_BankDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BankDataModelToJson(this);
  }
}

abstract class _BankDataModel extends BankDataModel {
  const _BankDataModel._() : super._();
  const factory _BankDataModel(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String code,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country')
          String countryCode,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_full_name')
          String countryName,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime deletedAt}) = _$_BankDataModel;

  factory _BankDataModel.fromJson(Map<String, dynamic> json) =
      _$_BankDataModel.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get name;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get code;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country')
  String get countryCode;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_full_name')
  String get countryName;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  DateTime get updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  DateTime get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$BankDataModelCopyWith<_BankDataModel> get copyWith;
}
