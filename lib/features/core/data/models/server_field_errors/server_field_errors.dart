import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_field_errors.freezed.dart';
part 'server_field_errors.g.dart';

@freezed
@immutable
abstract class ServerFieldErrors implements _$ServerFieldErrors {
  const ServerFieldErrors._();

  const factory ServerFieldErrors({
    @nullable @JsonKey(includeIfNull: false) List<dynamic> name,
    @nullable
    @JsonKey(includeIfNull: false, name: "first_name")
        List<dynamic> firstName,
    @nullable
    @JsonKey(includeIfNull: false, name: "last_name")
        List<dynamic> lastName,
    @nullable @JsonKey(includeIfNull: false) List<dynamic> email,
    @nullable @JsonKey(includeIfNull: false) List<dynamic> gender,
    @nullable @JsonKey(includeIfNull: false) List<dynamic> age,
    @nullable @JsonKey(includeIfNull: false) List<dynamic> phone,
    @nullable @JsonKey(includeIfNull: false) List<dynamic> password,
    @nullable @JsonKey(includeIfNull: false) List<dynamic> token,
    @nullable
    @JsonKey(includeIfNull: false, name: "property_id")
        List<dynamic> propertyId,
    @nullable
    @JsonKey(includeIfNull: false, name: "apartment_id")
        List<dynamic> apartmentId,
    @nullable
    @JsonKey(includeIfNull: false, name: "property_type")
        List<dynamic> propertyType,
    @nullable
    @JsonKey(includeIfNull: false, name: "house_type")
        List<dynamic> houseType,
    @nullable @JsonKey(includeIfNull: false) List<dynamic> street,
    @nullable @JsonKey(includeIfNull: false) List<dynamic> town,
    @nullable
    @JsonKey(includeIfNull: false, name: "state_id")
        List<dynamic> stateId,
    @nullable
    @JsonKey(includeIfNull: false, name: "tenant_email")
        List<dynamic> tenantEmail,
    @nullable
    @JsonKey(includeIfNull: false, name: "duration")
        List<dynamic> duration,
    @nullable @JsonKey(includeIfNull: false) List<dynamic> amount,
    @nullable
    @JsonKey(includeIfNull: false, name: "currency_id")
        List<dynamic> currencyId,
  }) = _ServerFieldErrors;

  factory ServerFieldErrors.fromJson(Map<String, dynamic> json) =>
      _$ServerFieldErrorsFromJson(json);
}
