part of 'profile_verification_cubit.dart';

enum DocumentMimeType { img, doc, pdf }

@freezed
abstract class ProfileVerificationState implements _$ProfileVerificationState {
  static const Map<String, dynamic> kdefaultType = {"nin": "National Identity"};
  static const List<Map<String, dynamic>> documentTypes = [
    ProfileVerificationState.kdefaultType,
    {"intl": "International Passport"},
    {"drivers licence": "Driver's License"},
    // {"voter": "Voter's Card"},
    // {"bvn": "Bank Verification Number"},
  ];

  const factory ProfileVerificationState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(false) bool isImageDocument,
    @nullable DocumentMimeType mimeType,
    @nullable String documentName,
    @nullable File document,
    @Default(ProfileVerificationState.kdefaultType)
        Map<String, dynamic> documentType,
    @Default(const None()) Option<Either<Failure, Response>> response,
  }) = _ProfileVerificationState;

  const ProfileVerificationState._();

  factory ProfileVerificationState.initial() => ProfileVerificationState();
}

extension XDocumentMimeType on DocumentMimeType {
  T fold<T>({
    T img,
    T Function(DocumentMimeType) doc,
  }) {
    switch (this) {
      case DocumentMimeType.img:
        return img;
      case DocumentMimeType.pdf:
      case DocumentMimeType.doc:
      default:
        return doc?.call(this);
    }
  }
}
