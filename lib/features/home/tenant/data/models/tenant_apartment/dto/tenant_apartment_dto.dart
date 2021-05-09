library tenant_apartment_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/home/tenant/data/models/index.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';

part 'tenant_apartment_dto.g.dart';
part 'tenant_apartment_dto.freezed.dart';

@freezed
@immutable
abstract class TenantApartmentDTO implements _$TenantApartmentDTO {
  const TenantApartmentDTO._();

  const factory TenantApartmentDTO({
    @nullable @JsonKey(includeIfNull: false) TenantApartmentData data,
  }) = _TenantApartmentDTO;

  factory TenantApartmentDTO.fromJson(Map<String, dynamic> json) =>
      _$TenantApartmentDTOFromJson(json);

  Map<String, dynamic> toJson() => _$_$_TenantApartmentDTOToJson(this);

  TenantApartment get domain => data?.domain;
}
