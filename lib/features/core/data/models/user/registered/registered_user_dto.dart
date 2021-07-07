library registered_user_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/models/user/user_dto.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';

part 'registered_user_dto.g.dart';
part 'registered_user_dto.freezed.dart';

@freezed
@immutable
abstract class RegisteredUserDTO implements _$RegisteredUserDTO {
  const RegisteredUserDTO._();

  const factory RegisteredUserDTO({
    @nullable @JsonKey(includeIfNull: false) int id,
    @nullable @JsonKey(includeIfNull: false) UserDTO user,
    @nullable @JsonKey(includeIfNull: false) String message,
  }) = _RegisteredUserDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory RegisteredUserDTO.fromJson(Map<String, dynamic> json) =>
      _$RegisteredUserDTOFromJson(json);

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$_$_RegisteredUserDTOToJson(this);

  /// Maps the Data Transfer Object to a Domain instance.
  User get domain => user.domain;
}
