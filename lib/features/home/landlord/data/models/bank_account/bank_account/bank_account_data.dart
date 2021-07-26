library bank_account_data.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/manager/serializer/serializers.dart';

part 'bank_account_data.g.dart';
part 'bank_account_data.freezed.dart';

@freezed
@immutable
abstract class BankAccountData implements _$BankAccountData {
  const BankAccountData._();

  const factory BankAccountData({
    @nullable @JsonKey(includeIfNull: false) int id,
    @nullable
    @JsonKey(includeIfNull: false, name: 'user_id')
    @IntegerSerializer()
        int userId,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String type,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String descriptions,
    @nullable @JsonKey(includeIfNull: false) AccountDetailDTO details,
    @nullable
    @JsonKey(includeIfNull: false, name: "created_at")
    @TimestampConverter()
        String createdAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "updated_at")
    @TimestampConverter()
        String updatedAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "deleted_at")
    @TimestampConverter()
        String deletedAt,
  }) = _BankAccountData;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory BankAccountData.fromJson(Map<String, dynamic> json) =>
      _$BankAccountDataFromJson(json);

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$_$_BankAccountDataToJson(this);

  /// Maps the Data Transfer Object to a Domain instance.
  BankAccountDetail get domain => details?.domain
      ?.copyWith(id: id != null ? UniqueId.fromExternal(id) : null);
}
