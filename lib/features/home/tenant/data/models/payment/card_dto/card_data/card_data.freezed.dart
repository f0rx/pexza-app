// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of card_data.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CardData _$CardDataFromJson(Map<String, dynamic> json) {
  return _CardData.fromJson(json);
}

/// @nodoc
class _$CardDataTearOff {
  const _$CardDataTearOff();

// ignore: unused_element
  _CardData call(
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
      @JsonKey(includeIfNull: false)
          PaymentMetaDTO details,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntToBoolSerializer()
          bool verified,
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
    return _CardData(
      id: id,
      userId: userId,
      type: type,
      details: details,
      verified: verified,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

// ignore: unused_element
  CardData fromJson(Map<String, Object> json) {
    return CardData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CardData = _$CardDataTearOff();

/// @nodoc
mixin _$CardData {
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
  @JsonKey(includeIfNull: false)
  PaymentMetaDTO get details;
  @nullable
  @JsonKey(includeIfNull: false)
  @IntToBoolSerializer()
  bool get verified;
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
  $CardDataCopyWith<CardData> get copyWith;
}

/// @nodoc
abstract class $CardDataCopyWith<$Res> {
  factory $CardDataCopyWith(CardData value, $Res Function(CardData) then) =
      _$CardDataCopyWithImpl<$Res>;
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
      @JsonKey(includeIfNull: false)
          PaymentMetaDTO details,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntToBoolSerializer()
          bool verified,
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

  $PaymentMetaDTOCopyWith<$Res> get details;
}

/// @nodoc
class _$CardDataCopyWithImpl<$Res> implements $CardDataCopyWith<$Res> {
  _$CardDataCopyWithImpl(this._value, this._then);

  final CardData _value;
  // ignore: unused_field
  final $Res Function(CardData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object type = freezed,
    Object details = freezed,
    Object verified = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      userId: userId == freezed ? _value.userId : userId as int,
      type: type == freezed ? _value.type : type as String,
      details: details == freezed ? _value.details : details as PaymentMetaDTO,
      verified: verified == freezed ? _value.verified : verified as bool,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }

  @override
  $PaymentMetaDTOCopyWith<$Res> get details {
    if (_value.details == null) {
      return null;
    }
    return $PaymentMetaDTOCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc
abstract class _$CardDataCopyWith<$Res> implements $CardDataCopyWith<$Res> {
  factory _$CardDataCopyWith(_CardData value, $Res Function(_CardData) then) =
      __$CardDataCopyWithImpl<$Res>;
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
      @JsonKey(includeIfNull: false)
          PaymentMetaDTO details,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntToBoolSerializer()
          bool verified,
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
  $PaymentMetaDTOCopyWith<$Res> get details;
}

/// @nodoc
class __$CardDataCopyWithImpl<$Res> extends _$CardDataCopyWithImpl<$Res>
    implements _$CardDataCopyWith<$Res> {
  __$CardDataCopyWithImpl(_CardData _value, $Res Function(_CardData) _then)
      : super(_value, (v) => _then(v as _CardData));

  @override
  _CardData get _value => super._value as _CardData;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object type = freezed,
    Object details = freezed,
    Object verified = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_CardData(
      id: id == freezed ? _value.id : id as int,
      userId: userId == freezed ? _value.userId : userId as int,
      type: type == freezed ? _value.type : type as String,
      details: details == freezed ? _value.details : details as PaymentMetaDTO,
      verified: verified == freezed ? _value.verified : verified as bool,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CardData extends _CardData {
  const _$_CardData(
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
      @JsonKey(includeIfNull: false)
          this.details,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntToBoolSerializer()
          this.verified,
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

  factory _$_CardData.fromJson(Map<String, dynamic> json) =>
      _$_$_CardDataFromJson(json);

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
  @JsonKey(includeIfNull: false)
  final PaymentMetaDTO details;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @IntToBoolSerializer()
  final bool verified;
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
    return 'CardData(id: $id, userId: $userId, type: $type, details: $details, verified: $verified, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.verified, verified) ||
                const DeepCollectionEquality()
                    .equals(other.verified, verified)) &&
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
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(verified) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$CardDataCopyWith<_CardData> get copyWith =>
      __$CardDataCopyWithImpl<_CardData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CardDataToJson(this);
  }
}

abstract class _CardData extends CardData {
  const _CardData._() : super._();
  const factory _CardData(
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
      @JsonKey(includeIfNull: false)
          PaymentMetaDTO details,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntToBoolSerializer()
          bool verified,
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
          String deletedAt}) = _$_CardData;

  factory _CardData.fromJson(Map<String, dynamic> json) = _$_CardData.fromJson;

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
  @JsonKey(includeIfNull: false)
  PaymentMetaDTO get details;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @IntToBoolSerializer()
  bool get verified;
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
  _$CardDataCopyWith<_CardData> get copyWith;
}
