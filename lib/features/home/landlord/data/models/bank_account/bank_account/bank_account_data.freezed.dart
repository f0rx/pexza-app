// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of bank_account_data.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BankAccountData _$BankAccountDataFromJson(Map<String, dynamic> json) {
  return _BankAccountData.fromJson(json);
}

/// @nodoc
class _$BankAccountDataTearOff {
  const _$BankAccountDataTearOff();

// ignore: unused_element
  _BankAccountData call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, name: 'user_id')
      @IntegerSerializer()
          int userId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String type,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String descriptions,
      @nullable
      @JsonKey(includeIfNull: false)
          AccountDetailDTO details,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt}) {
    return _BankAccountData(
      id: id,
      userId: userId,
      type: type,
      descriptions: descriptions,
      details: details,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

// ignore: unused_element
  BankAccountData fromJson(Map<String, Object> json) {
    return BankAccountData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BankAccountData = _$BankAccountDataTearOff();

/// @nodoc
mixin _$BankAccountData {
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  @nullable
  @JsonKey(includeIfNull: false, name: 'user_id')
  @IntegerSerializer()
  int get userId;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get type;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get descriptions;
  @nullable
  @JsonKey(includeIfNull: false)
  AccountDetailDTO get details;
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  String get createdAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  String get updatedAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  String get deletedAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $BankAccountDataCopyWith<BankAccountData> get copyWith;
}

/// @nodoc
abstract class $BankAccountDataCopyWith<$Res> {
  factory $BankAccountDataCopyWith(
          BankAccountData value, $Res Function(BankAccountData) then) =
      _$BankAccountDataCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, name: 'user_id')
      @IntegerSerializer()
          int userId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String type,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String descriptions,
      @nullable
      @JsonKey(includeIfNull: false)
          AccountDetailDTO details,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt});

  $AccountDetailDTOCopyWith<$Res> get details;
}

/// @nodoc
class _$BankAccountDataCopyWithImpl<$Res>
    implements $BankAccountDataCopyWith<$Res> {
  _$BankAccountDataCopyWithImpl(this._value, this._then);

  final BankAccountData _value;
  // ignore: unused_field
  final $Res Function(BankAccountData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object type = freezed,
    Object descriptions = freezed,
    Object details = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      userId: userId == freezed ? _value.userId : userId as int,
      type: type == freezed ? _value.type : type as String,
      descriptions: descriptions == freezed
          ? _value.descriptions
          : descriptions as String,
      details:
          details == freezed ? _value.details : details as AccountDetailDTO,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }

  @override
  $AccountDetailDTOCopyWith<$Res> get details {
    if (_value.details == null) {
      return null;
    }
    return $AccountDetailDTOCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc
abstract class _$BankAccountDataCopyWith<$Res>
    implements $BankAccountDataCopyWith<$Res> {
  factory _$BankAccountDataCopyWith(
          _BankAccountData value, $Res Function(_BankAccountData) then) =
      __$BankAccountDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, name: 'user_id')
      @IntegerSerializer()
          int userId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String type,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String descriptions,
      @nullable
      @JsonKey(includeIfNull: false)
          AccountDetailDTO details,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt});

  @override
  $AccountDetailDTOCopyWith<$Res> get details;
}

/// @nodoc
class __$BankAccountDataCopyWithImpl<$Res>
    extends _$BankAccountDataCopyWithImpl<$Res>
    implements _$BankAccountDataCopyWith<$Res> {
  __$BankAccountDataCopyWithImpl(
      _BankAccountData _value, $Res Function(_BankAccountData) _then)
      : super(_value, (v) => _then(v as _BankAccountData));

  @override
  _BankAccountData get _value => super._value as _BankAccountData;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object type = freezed,
    Object descriptions = freezed,
    Object details = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_BankAccountData(
      id: id == freezed ? _value.id : id as int,
      userId: userId == freezed ? _value.userId : userId as int,
      type: type == freezed ? _value.type : type as String,
      descriptions: descriptions == freezed
          ? _value.descriptions
          : descriptions as String,
      details:
          details == freezed ? _value.details : details as AccountDetailDTO,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BankAccountData extends _BankAccountData {
  const _$_BankAccountData(
      {@nullable
      @JsonKey(includeIfNull: false)
          this.id,
      @nullable
      @JsonKey(includeIfNull: false, name: 'user_id')
      @IntegerSerializer()
          this.userId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.type,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.descriptions,
      @nullable
      @JsonKey(includeIfNull: false)
          this.details,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          this.createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          this.updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          this.deletedAt})
      : super._();

  factory _$_BankAccountData.fromJson(Map<String, dynamic> json) =>
      _$_$_BankAccountDataFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final int id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'user_id')
  @IntegerSerializer()
  final int userId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String type;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String descriptions;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final AccountDetailDTO details;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  final String createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  final String updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  final String deletedAt;

  @override
  String toString() {
    return 'BankAccountData(id: $id, userId: $userId, type: $type, descriptions: $descriptions, details: $details, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BankAccountData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.descriptions, descriptions) ||
                const DeepCollectionEquality()
                    .equals(other.descriptions, descriptions)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
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
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(descriptions) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$BankAccountDataCopyWith<_BankAccountData> get copyWith =>
      __$BankAccountDataCopyWithImpl<_BankAccountData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BankAccountDataToJson(this);
  }
}

abstract class _BankAccountData extends BankAccountData {
  const _BankAccountData._() : super._();
  const factory _BankAccountData(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, name: 'user_id')
      @IntegerSerializer()
          int userId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String type,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String descriptions,
      @nullable
      @JsonKey(includeIfNull: false)
          AccountDetailDTO details,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt}) = _$_BankAccountData;

  factory _BankAccountData.fromJson(Map<String, dynamic> json) =
      _$_BankAccountData.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'user_id')
  @IntegerSerializer()
  int get userId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get type;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get descriptions;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  AccountDetailDTO get details;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  String get createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  String get updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  String get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$BankAccountDataCopyWith<_BankAccountData> get copyWith;
}
