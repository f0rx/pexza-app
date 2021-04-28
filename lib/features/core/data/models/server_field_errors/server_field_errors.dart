import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_field_errors.freezed.dart';
part 'server_field_errors.g.dart';

@freezed
@immutable
abstract class ServerFieldErrors implements _$ServerFieldErrors {
  const ServerFieldErrors._();

  const factory ServerFieldErrors({
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        List<dynamic> name,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "first_name")
        List<dynamic> firstName,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "last_name")
        List<dynamic> lastName,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        List<dynamic> email,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        List<dynamic> gender,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        List<dynamic> age,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        List<dynamic> phone,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        List<dynamic> password,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        List<dynamic> token,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "property_id")
        List<dynamic> propertyId,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "property_type")
        List<dynamic> propertyType,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "house_type")
        List<dynamic> houseType,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        List<dynamic> street,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        List<dynamic> town,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "state_id")
        List<dynamic> stateId,
  }) = _ServerFieldErrors;

  factory ServerFieldErrors.fromJson(Map<String, dynamic> json) =>
      _$ServerFieldErrorsFromJson(json);
}
