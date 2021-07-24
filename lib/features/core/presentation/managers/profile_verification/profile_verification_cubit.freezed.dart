// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of profile_verification_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProfileVerificationStateTearOff {
  const _$ProfileVerificationStateTearOff();

// ignore: unused_element
  _ProfileVerificationState call(
      {bool isLoading = false,
      bool validate = false,
      bool isImageDocument = false,
      @nullable DocumentMimeType mimeType,
      @nullable String documentName,
      @nullable File document,
      Map<String, dynamic> documentType = ProfileVerificationState.kdefaultType,
      Option<Either<Failure, Response>> response = const None()}) {
    return _ProfileVerificationState(
      isLoading: isLoading,
      validate: validate,
      isImageDocument: isImageDocument,
      mimeType: mimeType,
      documentName: documentName,
      document: document,
      documentType: documentType,
      response: response,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileVerificationState = _$ProfileVerificationStateTearOff();

/// @nodoc
mixin _$ProfileVerificationState {
  bool get isLoading;
  bool get validate;
  bool get isImageDocument;
  @nullable
  DocumentMimeType get mimeType;
  @nullable
  String get documentName;
  @nullable
  File get document;
  Map<String, dynamic> get documentType;
  Option<Either<Failure, Response>> get response;

  @JsonKey(ignore: true)
  $ProfileVerificationStateCopyWith<ProfileVerificationState> get copyWith;
}

/// @nodoc
abstract class $ProfileVerificationStateCopyWith<$Res> {
  factory $ProfileVerificationStateCopyWith(ProfileVerificationState value,
          $Res Function(ProfileVerificationState) then) =
      _$ProfileVerificationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool validate,
      bool isImageDocument,
      @nullable DocumentMimeType mimeType,
      @nullable String documentName,
      @nullable File document,
      Map<String, dynamic> documentType,
      Option<Either<Failure, Response>> response});
}

/// @nodoc
class _$ProfileVerificationStateCopyWithImpl<$Res>
    implements $ProfileVerificationStateCopyWith<$Res> {
  _$ProfileVerificationStateCopyWithImpl(this._value, this._then);

  final ProfileVerificationState _value;
  // ignore: unused_field
  final $Res Function(ProfileVerificationState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object isImageDocument = freezed,
    Object mimeType = freezed,
    Object documentName = freezed,
    Object document = freezed,
    Object documentType = freezed,
    Object response = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      isImageDocument: isImageDocument == freezed
          ? _value.isImageDocument
          : isImageDocument as bool,
      mimeType:
          mimeType == freezed ? _value.mimeType : mimeType as DocumentMimeType,
      documentName: documentName == freezed
          ? _value.documentName
          : documentName as String,
      document: document == freezed ? _value.document : document as File,
      documentType: documentType == freezed
          ? _value.documentType
          : documentType as Map<String, dynamic>,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Response>>,
    ));
  }
}

/// @nodoc
abstract class _$ProfileVerificationStateCopyWith<$Res>
    implements $ProfileVerificationStateCopyWith<$Res> {
  factory _$ProfileVerificationStateCopyWith(_ProfileVerificationState value,
          $Res Function(_ProfileVerificationState) then) =
      __$ProfileVerificationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool validate,
      bool isImageDocument,
      @nullable DocumentMimeType mimeType,
      @nullable String documentName,
      @nullable File document,
      Map<String, dynamic> documentType,
      Option<Either<Failure, Response>> response});
}

/// @nodoc
class __$ProfileVerificationStateCopyWithImpl<$Res>
    extends _$ProfileVerificationStateCopyWithImpl<$Res>
    implements _$ProfileVerificationStateCopyWith<$Res> {
  __$ProfileVerificationStateCopyWithImpl(_ProfileVerificationState _value,
      $Res Function(_ProfileVerificationState) _then)
      : super(_value, (v) => _then(v as _ProfileVerificationState));

  @override
  _ProfileVerificationState get _value =>
      super._value as _ProfileVerificationState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object isImageDocument = freezed,
    Object mimeType = freezed,
    Object documentName = freezed,
    Object document = freezed,
    Object documentType = freezed,
    Object response = freezed,
  }) {
    return _then(_ProfileVerificationState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      isImageDocument: isImageDocument == freezed
          ? _value.isImageDocument
          : isImageDocument as bool,
      mimeType:
          mimeType == freezed ? _value.mimeType : mimeType as DocumentMimeType,
      documentName: documentName == freezed
          ? _value.documentName
          : documentName as String,
      document: document == freezed ? _value.document : document as File,
      documentType: documentType == freezed
          ? _value.documentType
          : documentType as Map<String, dynamic>,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Response>>,
    ));
  }
}

/// @nodoc
class _$_ProfileVerificationState extends _ProfileVerificationState {
  const _$_ProfileVerificationState(
      {this.isLoading = false,
      this.validate = false,
      this.isImageDocument = false,
      @nullable this.mimeType,
      @nullable this.documentName,
      @nullable this.document,
      this.documentType = ProfileVerificationState.kdefaultType,
      this.response = const None()})
      : assert(isLoading != null),
        assert(validate != null),
        assert(isImageDocument != null),
        assert(documentType != null),
        assert(response != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @JsonKey(defaultValue: false)
  @override
  final bool isImageDocument;
  @override
  @nullable
  final DocumentMimeType mimeType;
  @override
  @nullable
  final String documentName;
  @override
  @nullable
  final File document;
  @JsonKey(defaultValue: ProfileVerificationState.kdefaultType)
  @override
  final Map<String, dynamic> documentType;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<Failure, Response>> response;

  @override
  String toString() {
    return 'ProfileVerificationState(isLoading: $isLoading, validate: $validate, isImageDocument: $isImageDocument, mimeType: $mimeType, documentName: $documentName, document: $document, documentType: $documentType, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileVerificationState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.isImageDocument, isImageDocument) ||
                const DeepCollectionEquality()
                    .equals(other.isImageDocument, isImageDocument)) &&
            (identical(other.mimeType, mimeType) ||
                const DeepCollectionEquality()
                    .equals(other.mimeType, mimeType)) &&
            (identical(other.documentName, documentName) ||
                const DeepCollectionEquality()
                    .equals(other.documentName, documentName)) &&
            (identical(other.document, document) ||
                const DeepCollectionEquality()
                    .equals(other.document, document)) &&
            (identical(other.documentType, documentType) ||
                const DeepCollectionEquality()
                    .equals(other.documentType, documentType)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(isImageDocument) ^
      const DeepCollectionEquality().hash(mimeType) ^
      const DeepCollectionEquality().hash(documentName) ^
      const DeepCollectionEquality().hash(document) ^
      const DeepCollectionEquality().hash(documentType) ^
      const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$ProfileVerificationStateCopyWith<_ProfileVerificationState> get copyWith =>
      __$ProfileVerificationStateCopyWithImpl<_ProfileVerificationState>(
          this, _$identity);
}

abstract class _ProfileVerificationState extends ProfileVerificationState {
  const _ProfileVerificationState._() : super._();
  const factory _ProfileVerificationState(
          {bool isLoading,
          bool validate,
          bool isImageDocument,
          @nullable DocumentMimeType mimeType,
          @nullable String documentName,
          @nullable File document,
          Map<String, dynamic> documentType,
          Option<Either<Failure, Response>> response}) =
      _$_ProfileVerificationState;

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  bool get isImageDocument;
  @override
  @nullable
  DocumentMimeType get mimeType;
  @override
  @nullable
  String get documentName;
  @override
  @nullable
  File get document;
  @override
  Map<String, dynamic> get documentType;
  @override
  Option<Either<Failure, Response>> get response;
  @override
  @JsonKey(ignore: true)
  _$ProfileVerificationStateCopyWith<_ProfileVerificationState> get copyWith;
}
