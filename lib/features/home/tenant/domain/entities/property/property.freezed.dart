// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'property.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PropertyTearOff {
  const _$PropertyTearOff();

// ignore: unused_element
  _Property call(
      {@nullable UniqueId id,
      @nullable PropertyOwner owner,
      @nullable PropertyName type,
      @nullable PropertyLocation location,
      @nullable PropertyPlan plan,
      @nullable Country currency,
      @nullable PropertyAmount rentAmount,
      @nullable PropertyColor color,
      @nullable DateTime dueDate,
      @nullable PropertyAmount renewalAmount}) {
    return _Property(
      id: id,
      owner: owner,
      type: type,
      location: location,
      plan: plan,
      currency: currency,
      rentAmount: rentAmount,
      color: color,
      dueDate: dueDate,
      renewalAmount: renewalAmount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Property = _$PropertyTearOff();

/// @nodoc
mixin _$Property {
// Rent Info
  @nullable
  UniqueId get id;
  @nullable
  PropertyOwner get owner;
  @nullable
  PropertyName get type;
  @nullable
  PropertyLocation get location;
  @nullable
  PropertyPlan get plan;
  @nullable
  Country get currency;
  @nullable
  PropertyAmount
      get rentAmount; // Rent Amount (Monthly..calc yearly from monthly)
  @nullable
  PropertyColor get color; // Renewal Info
  @nullable
  DateTime get dueDate;
  @nullable
  PropertyAmount get renewalAmount;

  @JsonKey(ignore: true)
  $PropertyCopyWith<Property> get copyWith;
}

/// @nodoc
abstract class $PropertyCopyWith<$Res> {
  factory $PropertyCopyWith(Property value, $Res Function(Property) then) =
      _$PropertyCopyWithImpl<$Res>;
  $Res call(
      {@nullable UniqueId id,
      @nullable PropertyOwner owner,
      @nullable PropertyName type,
      @nullable PropertyLocation location,
      @nullable PropertyPlan plan,
      @nullable Country currency,
      @nullable PropertyAmount rentAmount,
      @nullable PropertyColor color,
      @nullable DateTime dueDate,
      @nullable PropertyAmount renewalAmount});

  $CountryCopyWith<$Res> get currency;
}

/// @nodoc
class _$PropertyCopyWithImpl<$Res> implements $PropertyCopyWith<$Res> {
  _$PropertyCopyWithImpl(this._value, this._then);

  final Property _value;
  // ignore: unused_field
  final $Res Function(Property) _then;

  @override
  $Res call({
    Object id = freezed,
    Object owner = freezed,
    Object type = freezed,
    Object location = freezed,
    Object plan = freezed,
    Object currency = freezed,
    Object rentAmount = freezed,
    Object color = freezed,
    Object dueDate = freezed,
    Object renewalAmount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      owner: owner == freezed ? _value.owner : owner as PropertyOwner,
      type: type == freezed ? _value.type : type as PropertyName,
      location:
          location == freezed ? _value.location : location as PropertyLocation,
      plan: plan == freezed ? _value.plan : plan as PropertyPlan,
      currency: currency == freezed ? _value.currency : currency as Country,
      rentAmount: rentAmount == freezed
          ? _value.rentAmount
          : rentAmount as PropertyAmount,
      color: color == freezed ? _value.color : color as PropertyColor,
      dueDate: dueDate == freezed ? _value.dueDate : dueDate as DateTime,
      renewalAmount: renewalAmount == freezed
          ? _value.renewalAmount
          : renewalAmount as PropertyAmount,
    ));
  }

  @override
  $CountryCopyWith<$Res> get currency {
    if (_value.currency == null) {
      return null;
    }
    return $CountryCopyWith<$Res>(_value.currency, (value) {
      return _then(_value.copyWith(currency: value));
    });
  }
}

/// @nodoc
abstract class _$PropertyCopyWith<$Res> implements $PropertyCopyWith<$Res> {
  factory _$PropertyCopyWith(_Property value, $Res Function(_Property) then) =
      __$PropertyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UniqueId id,
      @nullable PropertyOwner owner,
      @nullable PropertyName type,
      @nullable PropertyLocation location,
      @nullable PropertyPlan plan,
      @nullable Country currency,
      @nullable PropertyAmount rentAmount,
      @nullable PropertyColor color,
      @nullable DateTime dueDate,
      @nullable PropertyAmount renewalAmount});

  @override
  $CountryCopyWith<$Res> get currency;
}

/// @nodoc
class __$PropertyCopyWithImpl<$Res> extends _$PropertyCopyWithImpl<$Res>
    implements _$PropertyCopyWith<$Res> {
  __$PropertyCopyWithImpl(_Property _value, $Res Function(_Property) _then)
      : super(_value, (v) => _then(v as _Property));

  @override
  _Property get _value => super._value as _Property;

  @override
  $Res call({
    Object id = freezed,
    Object owner = freezed,
    Object type = freezed,
    Object location = freezed,
    Object plan = freezed,
    Object currency = freezed,
    Object rentAmount = freezed,
    Object color = freezed,
    Object dueDate = freezed,
    Object renewalAmount = freezed,
  }) {
    return _then(_Property(
      id: id == freezed ? _value.id : id as UniqueId,
      owner: owner == freezed ? _value.owner : owner as PropertyOwner,
      type: type == freezed ? _value.type : type as PropertyName,
      location:
          location == freezed ? _value.location : location as PropertyLocation,
      plan: plan == freezed ? _value.plan : plan as PropertyPlan,
      currency: currency == freezed ? _value.currency : currency as Country,
      rentAmount: rentAmount == freezed
          ? _value.rentAmount
          : rentAmount as PropertyAmount,
      color: color == freezed ? _value.color : color as PropertyColor,
      dueDate: dueDate == freezed ? _value.dueDate : dueDate as DateTime,
      renewalAmount: renewalAmount == freezed
          ? _value.renewalAmount
          : renewalAmount as PropertyAmount,
    ));
  }
}

/// @nodoc
class _$_Property extends _Property {
  const _$_Property(
      {@nullable this.id,
      @nullable this.owner,
      @nullable this.type,
      @nullable this.location,
      @nullable this.plan,
      @nullable this.currency,
      @nullable this.rentAmount,
      @nullable this.color,
      @nullable this.dueDate,
      @nullable this.renewalAmount})
      : super._();

  @override // Rent Info
  @nullable
  final UniqueId id;
  @override
  @nullable
  final PropertyOwner owner;
  @override
  @nullable
  final PropertyName type;
  @override
  @nullable
  final PropertyLocation location;
  @override
  @nullable
  final PropertyPlan plan;
  @override
  @nullable
  final Country currency;
  @override
  @nullable
  final PropertyAmount rentAmount;
  @override // Rent Amount (Monthly..calc yearly from monthly)
  @nullable
  final PropertyColor color;
  @override // Renewal Info
  @nullable
  final DateTime dueDate;
  @override
  @nullable
  final PropertyAmount renewalAmount;

  @override
  String toString() {
    return 'Property(id: $id, owner: $owner, type: $type, location: $location, plan: $plan, currency: $currency, rentAmount: $rentAmount, color: $color, dueDate: $dueDate, renewalAmount: $renewalAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Property &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.plan, plan) ||
                const DeepCollectionEquality().equals(other.plan, plan)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.rentAmount, rentAmount) ||
                const DeepCollectionEquality()
                    .equals(other.rentAmount, rentAmount)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.dueDate, dueDate) ||
                const DeepCollectionEquality()
                    .equals(other.dueDate, dueDate)) &&
            (identical(other.renewalAmount, renewalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.renewalAmount, renewalAmount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(plan) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(rentAmount) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(dueDate) ^
      const DeepCollectionEquality().hash(renewalAmount);

  @JsonKey(ignore: true)
  @override
  _$PropertyCopyWith<_Property> get copyWith =>
      __$PropertyCopyWithImpl<_Property>(this, _$identity);
}

abstract class _Property extends Property {
  const _Property._() : super._();
  const factory _Property(
      {@nullable UniqueId id,
      @nullable PropertyOwner owner,
      @nullable PropertyName type,
      @nullable PropertyLocation location,
      @nullable PropertyPlan plan,
      @nullable Country currency,
      @nullable PropertyAmount rentAmount,
      @nullable PropertyColor color,
      @nullable DateTime dueDate,
      @nullable PropertyAmount renewalAmount}) = _$_Property;

  @override // Rent Info
  @nullable
  UniqueId get id;
  @override
  @nullable
  PropertyOwner get owner;
  @override
  @nullable
  PropertyName get type;
  @override
  @nullable
  PropertyLocation get location;
  @override
  @nullable
  PropertyPlan get plan;
  @override
  @nullable
  Country get currency;
  @override
  @nullable
  PropertyAmount get rentAmount;
  @override // Rent Amount (Monthly..calc yearly from monthly)
  @nullable
  PropertyColor get color;
  @override // Renewal Info
  @nullable
  DateTime get dueDate;
  @override
  @nullable
  PropertyAmount get renewalAmount;
  @override
  @JsonKey(ignore: true)
  _$PropertyCopyWith<_Property> get copyWith;
}
