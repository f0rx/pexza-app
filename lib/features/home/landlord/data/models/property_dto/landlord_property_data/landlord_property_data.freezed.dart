// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of landlord_property_data;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LandlordPropertyData _$LandlordPropertyDataFromJson(Map<String, dynamic> json) {
  return _LandlordPropertyData.fromJson(json);
}

/// @nodoc
class _$LandlordPropertyDataTearOff {
  const _$LandlordPropertyDataTearOff();

// ignore: unused_element
  _LandlordPropertyData call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'property_type')
          String propertyType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'house_type')
          String houseType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photo,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String street,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String town,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'swatch')
          String primary,
      @nullable
      @JsonKey(includeIfNull: false)
          StateDTO state,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO landlord,
      @nullable
      @JsonKey(includeIfNull: true, name: 'state_id')
      @IntegerSerializer()
          int stateId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String country,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_tenants')
          int numberOfTenants,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_apartments')
          int numberOfApartments,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_available_apartments')
          int numberOfAvailableApartments,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_rented_apartment')
          int numberOfRentedApartment,
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
    return _LandlordPropertyData(
      id: id,
      name: name,
      propertyType: propertyType,
      houseType: houseType,
      photo: photo,
      street: street,
      town: town,
      primary: primary,
      state: state,
      landlord: landlord,
      stateId: stateId,
      country: country,
      numberOfTenants: numberOfTenants,
      numberOfApartments: numberOfApartments,
      numberOfAvailableApartments: numberOfAvailableApartments,
      numberOfRentedApartment: numberOfRentedApartment,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

// ignore: unused_element
  LandlordPropertyData fromJson(Map<String, Object> json) {
    return LandlordPropertyData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LandlordPropertyData = _$LandlordPropertyDataTearOff();

/// @nodoc
mixin _$LandlordPropertyData {
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  int get id;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get name;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'property_type')
  String get propertyType;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'house_type')
  String get houseType;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get photo;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get street;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get town;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'swatch')
  String get primary;
  @nullable
  @JsonKey(includeIfNull: false)
  StateDTO get state;
  @nullable
  @JsonKey(includeIfNull: false)
  UserDTO get landlord;
  @nullable
  @JsonKey(includeIfNull: true, name: 'state_id')
  @IntegerSerializer()
  int get stateId;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get country;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_tenants')
  int get numberOfTenants;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_apartments')
  int get numberOfApartments;
  @nullable
  @JsonKey(
      includeIfNull: false,
      defaultValue: 0,
      name: 'number_of_available_apartments')
  int get numberOfAvailableApartments;
  @nullable
  @JsonKey(
      includeIfNull: false, defaultValue: 0, name: 'number_of_rented_apartment')
  int get numberOfRentedApartment;
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
  $LandlordPropertyDataCopyWith<LandlordPropertyData> get copyWith;
}

/// @nodoc
abstract class $LandlordPropertyDataCopyWith<$Res> {
  factory $LandlordPropertyDataCopyWith(LandlordPropertyData value,
          $Res Function(LandlordPropertyData) then) =
      _$LandlordPropertyDataCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'property_type')
          String propertyType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'house_type')
          String houseType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photo,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String street,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String town,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'swatch')
          String primary,
      @nullable
      @JsonKey(includeIfNull: false)
          StateDTO state,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO landlord,
      @nullable
      @JsonKey(includeIfNull: true, name: 'state_id')
      @IntegerSerializer()
          int stateId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String country,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_tenants')
          int numberOfTenants,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_apartments')
          int numberOfApartments,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_available_apartments')
          int numberOfAvailableApartments,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_rented_apartment')
          int numberOfRentedApartment,
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

  $StateDTOCopyWith<$Res> get state;
  $UserDTOCopyWith<$Res> get landlord;
}

/// @nodoc
class _$LandlordPropertyDataCopyWithImpl<$Res>
    implements $LandlordPropertyDataCopyWith<$Res> {
  _$LandlordPropertyDataCopyWithImpl(this._value, this._then);

  final LandlordPropertyData _value;
  // ignore: unused_field
  final $Res Function(LandlordPropertyData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object propertyType = freezed,
    Object houseType = freezed,
    Object photo = freezed,
    Object street = freezed,
    Object town = freezed,
    Object primary = freezed,
    Object state = freezed,
    Object landlord = freezed,
    Object stateId = freezed,
    Object country = freezed,
    Object numberOfTenants = freezed,
    Object numberOfApartments = freezed,
    Object numberOfAvailableApartments = freezed,
    Object numberOfRentedApartment = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      propertyType: propertyType == freezed
          ? _value.propertyType
          : propertyType as String,
      houseType: houseType == freezed ? _value.houseType : houseType as String,
      photo: photo == freezed ? _value.photo : photo as String,
      street: street == freezed ? _value.street : street as String,
      town: town == freezed ? _value.town : town as String,
      primary: primary == freezed ? _value.primary : primary as String,
      state: state == freezed ? _value.state : state as StateDTO,
      landlord: landlord == freezed ? _value.landlord : landlord as UserDTO,
      stateId: stateId == freezed ? _value.stateId : stateId as int,
      country: country == freezed ? _value.country : country as String,
      numberOfTenants: numberOfTenants == freezed
          ? _value.numberOfTenants
          : numberOfTenants as int,
      numberOfApartments: numberOfApartments == freezed
          ? _value.numberOfApartments
          : numberOfApartments as int,
      numberOfAvailableApartments: numberOfAvailableApartments == freezed
          ? _value.numberOfAvailableApartments
          : numberOfAvailableApartments as int,
      numberOfRentedApartment: numberOfRentedApartment == freezed
          ? _value.numberOfRentedApartment
          : numberOfRentedApartment as int,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }

  @override
  $StateDTOCopyWith<$Res> get state {
    if (_value.state == null) {
      return null;
    }
    return $StateDTOCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }

  @override
  $UserDTOCopyWith<$Res> get landlord {
    if (_value.landlord == null) {
      return null;
    }
    return $UserDTOCopyWith<$Res>(_value.landlord, (value) {
      return _then(_value.copyWith(landlord: value));
    });
  }
}

/// @nodoc
abstract class _$LandlordPropertyDataCopyWith<$Res>
    implements $LandlordPropertyDataCopyWith<$Res> {
  factory _$LandlordPropertyDataCopyWith(_LandlordPropertyData value,
          $Res Function(_LandlordPropertyData) then) =
      __$LandlordPropertyDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'property_type')
          String propertyType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'house_type')
          String houseType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photo,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String street,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String town,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'swatch')
          String primary,
      @nullable
      @JsonKey(includeIfNull: false)
          StateDTO state,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO landlord,
      @nullable
      @JsonKey(includeIfNull: true, name: 'state_id')
      @IntegerSerializer()
          int stateId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String country,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_tenants')
          int numberOfTenants,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_apartments')
          int numberOfApartments,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_available_apartments')
          int numberOfAvailableApartments,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_rented_apartment')
          int numberOfRentedApartment,
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
  $StateDTOCopyWith<$Res> get state;
  @override
  $UserDTOCopyWith<$Res> get landlord;
}

/// @nodoc
class __$LandlordPropertyDataCopyWithImpl<$Res>
    extends _$LandlordPropertyDataCopyWithImpl<$Res>
    implements _$LandlordPropertyDataCopyWith<$Res> {
  __$LandlordPropertyDataCopyWithImpl(
      _LandlordPropertyData _value, $Res Function(_LandlordPropertyData) _then)
      : super(_value, (v) => _then(v as _LandlordPropertyData));

  @override
  _LandlordPropertyData get _value => super._value as _LandlordPropertyData;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object propertyType = freezed,
    Object houseType = freezed,
    Object photo = freezed,
    Object street = freezed,
    Object town = freezed,
    Object primary = freezed,
    Object state = freezed,
    Object landlord = freezed,
    Object stateId = freezed,
    Object country = freezed,
    Object numberOfTenants = freezed,
    Object numberOfApartments = freezed,
    Object numberOfAvailableApartments = freezed,
    Object numberOfRentedApartment = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_LandlordPropertyData(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      propertyType: propertyType == freezed
          ? _value.propertyType
          : propertyType as String,
      houseType: houseType == freezed ? _value.houseType : houseType as String,
      photo: photo == freezed ? _value.photo : photo as String,
      street: street == freezed ? _value.street : street as String,
      town: town == freezed ? _value.town : town as String,
      primary: primary == freezed ? _value.primary : primary as String,
      state: state == freezed ? _value.state : state as StateDTO,
      landlord: landlord == freezed ? _value.landlord : landlord as UserDTO,
      stateId: stateId == freezed ? _value.stateId : stateId as int,
      country: country == freezed ? _value.country : country as String,
      numberOfTenants: numberOfTenants == freezed
          ? _value.numberOfTenants
          : numberOfTenants as int,
      numberOfApartments: numberOfApartments == freezed
          ? _value.numberOfApartments
          : numberOfApartments as int,
      numberOfAvailableApartments: numberOfAvailableApartments == freezed
          ? _value.numberOfAvailableApartments
          : numberOfAvailableApartments as int,
      numberOfRentedApartment: numberOfRentedApartment == freezed
          ? _value.numberOfRentedApartment
          : numberOfRentedApartment as int,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LandlordPropertyData extends _LandlordPropertyData {
  const _$_LandlordPropertyData(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          this.id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'property_type')
          this.propertyType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'house_type')
          this.houseType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.photo,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.street,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.town,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'swatch')
          this.primary,
      @nullable
      @JsonKey(includeIfNull: false)
          this.state,
      @nullable
      @JsonKey(includeIfNull: false)
          this.landlord,
      @nullable
      @JsonKey(includeIfNull: true, name: 'state_id')
      @IntegerSerializer()
          this.stateId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.country,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_tenants')
          this.numberOfTenants,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_apartments')
          this.numberOfApartments,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_available_apartments')
          this.numberOfAvailableApartments,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_rented_apartment')
          this.numberOfRentedApartment,
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

  factory _$_LandlordPropertyData.fromJson(Map<String, dynamic> json) =>
      _$_$_LandlordPropertyDataFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  final int id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String name;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'property_type')
  final String propertyType;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'house_type')
  final String houseType;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String photo;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String street;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String town;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'swatch')
  final String primary;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final StateDTO state;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final UserDTO landlord;
  @override
  @nullable
  @JsonKey(includeIfNull: true, name: 'state_id')
  @IntegerSerializer()
  final int stateId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String country;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_tenants')
  final int numberOfTenants;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_apartments')
  final int numberOfApartments;
  @override
  @nullable
  @JsonKey(
      includeIfNull: false,
      defaultValue: 0,
      name: 'number_of_available_apartments')
  final int numberOfAvailableApartments;
  @override
  @nullable
  @JsonKey(
      includeIfNull: false, defaultValue: 0, name: 'number_of_rented_apartment')
  final int numberOfRentedApartment;
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
    return 'LandlordPropertyData(id: $id, name: $name, propertyType: $propertyType, houseType: $houseType, photo: $photo, street: $street, town: $town, primary: $primary, state: $state, landlord: $landlord, stateId: $stateId, country: $country, numberOfTenants: $numberOfTenants, numberOfApartments: $numberOfApartments, numberOfAvailableApartments: $numberOfAvailableApartments, numberOfRentedApartment: $numberOfRentedApartment, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LandlordPropertyData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.propertyType, propertyType) ||
                const DeepCollectionEquality()
                    .equals(other.propertyType, propertyType)) &&
            (identical(other.houseType, houseType) ||
                const DeepCollectionEquality()
                    .equals(other.houseType, houseType)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.town, town) ||
                const DeepCollectionEquality().equals(other.town, town)) &&
            (identical(other.primary, primary) ||
                const DeepCollectionEquality()
                    .equals(other.primary, primary)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.landlord, landlord) ||
                const DeepCollectionEquality()
                    .equals(other.landlord, landlord)) &&
            (identical(other.stateId, stateId) ||
                const DeepCollectionEquality()
                    .equals(other.stateId, stateId)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.numberOfTenants, numberOfTenants) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfTenants, numberOfTenants)) &&
            (identical(other.numberOfApartments, numberOfApartments) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfApartments, numberOfApartments)) &&
            (identical(other.numberOfAvailableApartments,
                    numberOfAvailableApartments) ||
                const DeepCollectionEquality().equals(
                    other.numberOfAvailableApartments,
                    numberOfAvailableApartments)) &&
            (identical(
                    other.numberOfRentedApartment, numberOfRentedApartment) ||
                const DeepCollectionEquality().equals(
                    other.numberOfRentedApartment, numberOfRentedApartment)) &&
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
      const DeepCollectionEquality().hash(propertyType) ^
      const DeepCollectionEquality().hash(houseType) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(town) ^
      const DeepCollectionEquality().hash(primary) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(landlord) ^
      const DeepCollectionEquality().hash(stateId) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(numberOfTenants) ^
      const DeepCollectionEquality().hash(numberOfApartments) ^
      const DeepCollectionEquality().hash(numberOfAvailableApartments) ^
      const DeepCollectionEquality().hash(numberOfRentedApartment) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$LandlordPropertyDataCopyWith<_LandlordPropertyData> get copyWith =>
      __$LandlordPropertyDataCopyWithImpl<_LandlordPropertyData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LandlordPropertyDataToJson(this);
  }
}

abstract class _LandlordPropertyData extends LandlordPropertyData {
  const _LandlordPropertyData._() : super._();
  const factory _LandlordPropertyData(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'property_type')
          String propertyType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'house_type')
          String houseType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photo,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String street,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String town,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'swatch')
          String primary,
      @nullable
      @JsonKey(includeIfNull: false)
          StateDTO state,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO landlord,
      @nullable
      @JsonKey(includeIfNull: true, name: 'state_id')
      @IntegerSerializer()
          int stateId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String country,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_tenants')
          int numberOfTenants,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_apartments')
          int numberOfApartments,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_available_apartments')
          int numberOfAvailableApartments,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_rented_apartment')
          int numberOfRentedApartment,
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
          String deletedAt}) = _$_LandlordPropertyData;

  factory _LandlordPropertyData.fromJson(Map<String, dynamic> json) =
      _$_LandlordPropertyData.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  int get id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get name;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'property_type')
  String get propertyType;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'house_type')
  String get houseType;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get photo;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get street;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get town;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'swatch')
  String get primary;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  StateDTO get state;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  UserDTO get landlord;
  @override
  @nullable
  @JsonKey(includeIfNull: true, name: 'state_id')
  @IntegerSerializer()
  int get stateId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get country;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_tenants')
  int get numberOfTenants;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_apartments')
  int get numberOfApartments;
  @override
  @nullable
  @JsonKey(
      includeIfNull: false,
      defaultValue: 0,
      name: 'number_of_available_apartments')
  int get numberOfAvailableApartments;
  @override
  @nullable
  @JsonKey(
      includeIfNull: false, defaultValue: 0, name: 'number_of_rented_apartment')
  int get numberOfRentedApartment;
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
  _$LandlordPropertyDataCopyWith<_LandlordPropertyData> get copyWith;
}
