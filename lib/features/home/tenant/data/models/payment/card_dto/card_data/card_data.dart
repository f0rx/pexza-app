library card_data.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/home/tenant/data/models/index.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';
import 'package:pexza/utils/utils.dart';

part 'card_data.g.dart';
part 'card_data.freezed.dart';

@freezed
@immutable
abstract class CardData implements _$CardData {
  const CardData._();

  const factory CardData({
    @nullable @JsonKey(includeIfNull: false) int id,
    @nullable
    @JsonKey(includeIfNull: false, name: 'user_id')
    @IntegerSerializer()
        int userId,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String type,
    @nullable @JsonKey(includeIfNull: false) PaymentMetaDTO details,
    @nullable
    @JsonKey(includeIfNull: false)
    @IntToBoolSerializer()
        bool verified,
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
  }) = _CardData;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory CardData.fromJson(Map<String, dynamic> json) =>
      _$CardDataFromJson(json);

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$_$_CardDataToJson(this);

  /// Maps the Data Transfer Object to a Domain instance.
  DebitCard get domain => DebitCard(
        id: !id.isNull ? UniqueId.fromExternal(id) : null,
        userId: !userId.isNull ? UniqueId.fromExternal(userId) : null,
        cardNumber: details?.domain?.cardNumber,
        meta: details?.domain,
        verified: verified,
        createdAt: createdAt != null ? DateTime.tryParse(createdAt) : null,
        updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt) : null,
        deletedAt: deletedAt != null ? DateTime.tryParse(deletedAt) : null,
      );
}

extension CardDataList on Iterable<CardData> {
  /// Maps the Data Transfer Object to a Domain instance.
  KtList<DebitCard> get domain =>
      this?.map((e) {
        // if (e != null) e.domain;
        return e.domain;
      })?.toImmutableList() ??
      KtList.empty();
}
