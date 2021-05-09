library currency_dto_list.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';

part 'currency_dto_list.g.dart';
part 'currency_dto_list.freezed.dart';

@freezed
@immutable
abstract class CurrencyListDTO implements _$CurrencyListDTO {
  const CurrencyListDTO._();

  const factory CurrencyListDTO({
    @nullable @JsonKey(includeIfNull: false) List<CurrencyDTO> currencies,
  }) = _CurrencyListDTO;

  factory CurrencyListDTO.fromJson(Map<String, dynamic> json) =>
      _$CurrencyListDTOFromJson(json);

  Map<String, dynamic> toJson() => _$_$_CurrencyListDTOToJson(this);

  List<Currency> get domain => currencies?.map((i) => i?.domain)?.toList();
}
