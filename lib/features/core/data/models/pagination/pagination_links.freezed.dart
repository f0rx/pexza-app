// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of pagination_links;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PaginationLinks _$PaginationLinksFromJson(Map<String, dynamic> json) {
  return _PaginationLinks.fromJson(json);
}

/// @nodoc
class _$PaginationLinksTearOff {
  const _$PaginationLinksTearOff();

// ignore: unused_element
  _PaginationLinks call(
      {@nullable
      @JsonKey(includeIfNull: false)
          String first,
      @nullable
      @JsonKey(includeIfNull: false)
          String last,
      @nullable
      @JsonKey(includeIfNull: false)
          String prev,
      @nullable
      @JsonKey(includeIfNull: false)
          String next,
      @nullable
      @JsonKey(includeIfNull: false)
          String url,
      @nullable
      @JsonKey(includeIfNull: false)
          String label,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false)
          bool active}) {
    return _PaginationLinks(
      first: first,
      last: last,
      prev: prev,
      next: next,
      url: url,
      label: label,
      active: active,
    );
  }

// ignore: unused_element
  PaginationLinks fromJson(Map<String, Object> json) {
    return PaginationLinks.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PaginationLinks = _$PaginationLinksTearOff();

/// @nodoc
mixin _$PaginationLinks {
  @nullable
  @JsonKey(includeIfNull: false)
  String get first;
  @nullable
  @JsonKey(includeIfNull: false)
  String get last;
  @nullable
  @JsonKey(includeIfNull: false)
  String get prev;
  @nullable
  @JsonKey(includeIfNull: false)
  String get next;
  @nullable
  @JsonKey(includeIfNull: false)
  String get url;
  @nullable
  @JsonKey(includeIfNull: false)
  String get label;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: false)
  bool get active;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PaginationLinksCopyWith<PaginationLinks> get copyWith;
}

/// @nodoc
abstract class $PaginationLinksCopyWith<$Res> {
  factory $PaginationLinksCopyWith(
          PaginationLinks value, $Res Function(PaginationLinks) then) =
      _$PaginationLinksCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          String first,
      @nullable
      @JsonKey(includeIfNull: false)
          String last,
      @nullable
      @JsonKey(includeIfNull: false)
          String prev,
      @nullable
      @JsonKey(includeIfNull: false)
          String next,
      @nullable
      @JsonKey(includeIfNull: false)
          String url,
      @nullable
      @JsonKey(includeIfNull: false)
          String label,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false)
          bool active});
}

/// @nodoc
class _$PaginationLinksCopyWithImpl<$Res>
    implements $PaginationLinksCopyWith<$Res> {
  _$PaginationLinksCopyWithImpl(this._value, this._then);

  final PaginationLinks _value;
  // ignore: unused_field
  final $Res Function(PaginationLinks) _then;

  @override
  $Res call({
    Object first = freezed,
    Object last = freezed,
    Object prev = freezed,
    Object next = freezed,
    Object url = freezed,
    Object label = freezed,
    Object active = freezed,
  }) {
    return _then(_value.copyWith(
      first: first == freezed ? _value.first : first as String,
      last: last == freezed ? _value.last : last as String,
      prev: prev == freezed ? _value.prev : prev as String,
      next: next == freezed ? _value.next : next as String,
      url: url == freezed ? _value.url : url as String,
      label: label == freezed ? _value.label : label as String,
      active: active == freezed ? _value.active : active as bool,
    ));
  }
}

/// @nodoc
abstract class _$PaginationLinksCopyWith<$Res>
    implements $PaginationLinksCopyWith<$Res> {
  factory _$PaginationLinksCopyWith(
          _PaginationLinks value, $Res Function(_PaginationLinks) then) =
      __$PaginationLinksCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          String first,
      @nullable
      @JsonKey(includeIfNull: false)
          String last,
      @nullable
      @JsonKey(includeIfNull: false)
          String prev,
      @nullable
      @JsonKey(includeIfNull: false)
          String next,
      @nullable
      @JsonKey(includeIfNull: false)
          String url,
      @nullable
      @JsonKey(includeIfNull: false)
          String label,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false)
          bool active});
}

/// @nodoc
class __$PaginationLinksCopyWithImpl<$Res>
    extends _$PaginationLinksCopyWithImpl<$Res>
    implements _$PaginationLinksCopyWith<$Res> {
  __$PaginationLinksCopyWithImpl(
      _PaginationLinks _value, $Res Function(_PaginationLinks) _then)
      : super(_value, (v) => _then(v as _PaginationLinks));

  @override
  _PaginationLinks get _value => super._value as _PaginationLinks;

  @override
  $Res call({
    Object first = freezed,
    Object last = freezed,
    Object prev = freezed,
    Object next = freezed,
    Object url = freezed,
    Object label = freezed,
    Object active = freezed,
  }) {
    return _then(_PaginationLinks(
      first: first == freezed ? _value.first : first as String,
      last: last == freezed ? _value.last : last as String,
      prev: prev == freezed ? _value.prev : prev as String,
      next: next == freezed ? _value.next : next as String,
      url: url == freezed ? _value.url : url as String,
      label: label == freezed ? _value.label : label as String,
      active: active == freezed ? _value.active : active as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PaginationLinks extends _PaginationLinks {
  const _$_PaginationLinks(
      {@nullable
      @JsonKey(includeIfNull: false)
          this.first,
      @nullable
      @JsonKey(includeIfNull: false)
          this.last,
      @nullable
      @JsonKey(includeIfNull: false)
          this.prev,
      @nullable
      @JsonKey(includeIfNull: false)
          this.next,
      @nullable
      @JsonKey(includeIfNull: false)
          this.url,
      @nullable
      @JsonKey(includeIfNull: false)
          this.label,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false)
          this.active})
      : super._();

  factory _$_PaginationLinks.fromJson(Map<String, dynamic> json) =>
      _$_$_PaginationLinksFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final String first;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final String last;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final String prev;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final String next;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final String url;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final String label;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: false)
  final bool active;

  @override
  String toString() {
    return 'PaginationLinks(first: $first, last: $last, prev: $prev, next: $next, url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaginationLinks &&
            (identical(other.first, first) ||
                const DeepCollectionEquality().equals(other.first, first)) &&
            (identical(other.last, last) ||
                const DeepCollectionEquality().equals(other.last, last)) &&
            (identical(other.prev, prev) ||
                const DeepCollectionEquality().equals(other.prev, prev)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(first) ^
      const DeepCollectionEquality().hash(last) ^
      const DeepCollectionEquality().hash(prev) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(active);

  @JsonKey(ignore: true)
  @override
  _$PaginationLinksCopyWith<_PaginationLinks> get copyWith =>
      __$PaginationLinksCopyWithImpl<_PaginationLinks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaginationLinksToJson(this);
  }
}

abstract class _PaginationLinks extends PaginationLinks {
  const _PaginationLinks._() : super._();
  const factory _PaginationLinks(
      {@nullable
      @JsonKey(includeIfNull: false)
          String first,
      @nullable
      @JsonKey(includeIfNull: false)
          String last,
      @nullable
      @JsonKey(includeIfNull: false)
          String prev,
      @nullable
      @JsonKey(includeIfNull: false)
          String next,
      @nullable
      @JsonKey(includeIfNull: false)
          String url,
      @nullable
      @JsonKey(includeIfNull: false)
          String label,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false)
          bool active}) = _$_PaginationLinks;

  factory _PaginationLinks.fromJson(Map<String, dynamic> json) =
      _$_PaginationLinks.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  String get first;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  String get last;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  String get prev;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  String get next;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  String get url;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  String get label;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: false)
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$PaginationLinksCopyWith<_PaginationLinks> get copyWith;
}
