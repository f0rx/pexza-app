library bank_data_model.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/domain/entities/withdrawal/index.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/utils/utils.dart';

part 'bank_data_model.g.dart';
part 'bank_data_model.freezed.dart';

@freezed
@immutable
abstract class BankDataModel implements _$BankDataModel {
  const BankDataModel._();

  const factory BankDataModel({
    @nullable @JsonKey(includeIfNull: false) int id,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String name,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String code,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'country')
        String countryCode,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_full_name')
        String countryName,
    @nullable
    @JsonKey(includeIfNull: false, name: "updated_at")
    @TimestampConverter()
        String updatedAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "deleted_at")
    @TimestampConverter()
        String deletedAt,
  }) = _BankDataModel;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory BankDataModel.fromJson(Map<String, dynamic> json) =>
      _$BankDataModelFromJson(json);

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$_$_BankDataModelToJson(this);

  /// Maps the Data Transfer Object to a Domain instance.
  Bank get domain => Bank(
        id: !id.isNull ? UniqueId<int>.fromExternal(id) : null,
        name: !name.isNull ? BasicTextField(name) : null,
        code: !code.isNull ? BasicTextField(code) : null,
        countryCode: !countryCode.isNull ? BasicTextField(countryCode) : null,
        countryName: !countryName.isNull ? BasicTextField(countryName) : null,
        updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt) : null,
        deletedAt: deletedAt != null ? DateTime.tryParse(deletedAt) : null,
      );
}
