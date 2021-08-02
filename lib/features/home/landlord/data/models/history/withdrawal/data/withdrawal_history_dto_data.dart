library withdrawal_history_dto_data.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/utils/utils.dart';

part 'withdrawal_history_dto_data.freezed.dart';
part 'withdrawal_history_dto_data.g.dart';

@freezed
@immutable
abstract class WithdrawalHistoryDTOData implements _$WithdrawalHistoryDTOData {
  const WithdrawalHistoryDTOData._();

  const factory WithdrawalHistoryDTOData({
    @nullable @JsonKey(includeIfNull: false) @IntegerSerializer() int id,
    @nullable
    @JsonKey(includeIfNull: false, name: 'user_id')
    @IntegerSerializer()
        int userId,
    @nullable
    @JsonKey(includeIfNull: false, name: 'amount')
    @DoubleSerializer()
        double totalCharges,
    @nullable
    @JsonKey(includeIfNull: false, name: 'base_amount')
    @IntegerSerializer()
        int amount,
    @JsonKey(includeIfNull: false) @DoubleSerializer() double charges,
    @nullable
    @JsonKey(includeIfNull: false)
    @WithdrawalStatusConverter()
        WithdrawalStatus status,
    @nullable
    @JsonKey(includeIfNull: false, name: 'payable_id')
    @IntegerSerializer()
        int payableId,
    @nullable @JsonKey(includeIfNull: false) String reference,
    @nullable
    @JsonKey(includeIfNull: false, name: "created_at")
    @TimestampConverter()
        DateTime createdAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "updated_at")
    @TimestampConverter()
        DateTime updatedAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "deleted_at")
    @TimestampConverter()
        DateTime deletedAt,
  }) = _WithdrawalHistoryDTOData;

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$_$_WithdrawalHistoryDTODataToJson(this);

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory WithdrawalHistoryDTOData.fromJson(Map<String, dynamic> json) =>
      _$WithdrawalHistoryDTODataFromJson(json);

  /// Maps the Data Transfer Object to a WithdrawalHistory Object.
  WithdrawalHistory get domain => WithdrawalHistory(
        id: !id.isNull ? UniqueId.fromExternal(id) : null,
        userId: !userId.isNull ? UniqueId.fromExternal(userId) : null,
        totalCharged:
            !totalCharges.isNull ? BasicTextField(totalCharges) : null,
        amount: !amount.isNull ? BasicTextField(amount) : null,
        charges: !charges.isNull ? BasicTextField(charges) : null,
        status: status,
        payableId: !payableId.isNull ? UniqueId.fromExternal(payableId) : null,
        reference: !reference.isNull ? UniqueId.fromExternal(reference) : null,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}

class WithdrawalStatusConverter
    implements JsonConverter<WithdrawalStatus, String> {
  const WithdrawalStatusConverter();

  @override
  WithdrawalStatus fromJson(String value) =>
      !value.isNullOrBlank ? WithdrawalStatus.valueOf(value) : null;

  @override
  String toJson(WithdrawalStatus instance) => instance?.name?.toLowerCase();
}
