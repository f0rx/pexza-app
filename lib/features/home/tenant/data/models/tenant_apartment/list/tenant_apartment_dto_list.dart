library tenant_apartment_dto_list.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/home/tenant/data/models/index.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';

part 'tenant_apartment_dto_list.g.dart';
part 'tenant_apartment_dto_list.freezed.dart';

@freezed
@immutable
abstract class TenantApartmentDTOList implements _$TenantApartmentDTOList {
  const TenantApartmentDTOList._();

  const factory TenantApartmentDTOList({
    @Default(<TenantApartmentData>[])
    @JsonKey(includeIfNull: false)
        List<TenantApartmentData> data,
    @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
    @nullable @JsonKey(includeIfNull: false) MetaField meta,
  }) = _TenantApartmentDTOList;

  factory TenantApartmentDTOList.fromJson(Map<String, dynamic> json) =>
      _$TenantApartmentDTOListFromJson(json);

  KtList<TenantApartment> get domain =>
      data?.map((u) => u?.domain)?.toImmutableList();
}
