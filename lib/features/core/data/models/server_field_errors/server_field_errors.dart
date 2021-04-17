import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_field_errors.freezed.dart';
part 'server_field_errors.g.dart';

@freezed
@immutable
abstract class ServerFieldErrors implements _$ServerFieldErrors {
  const ServerFieldErrors._();

  const factory ServerFieldErrors({
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "first_name")
        List<dynamic> firstName,
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "last_name")
        List<dynamic> lastName,
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        List<dynamic> email,
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        List<dynamic> gender,
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        List<dynamic> age,
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        List<dynamic> phone,
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        List<dynamic> password,
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        List<dynamic> token,
  }) = _ServerFieldErrors;

  factory ServerFieldErrors.fromJson(Map<String, dynamic> json) =>
      _$ServerFieldErrorsFromJson(json);
}
