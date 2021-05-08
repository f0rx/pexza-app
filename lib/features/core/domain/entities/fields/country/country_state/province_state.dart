library province_state.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';

part 'province_state.freezed.dart';

@freezed
@immutable
abstract class ProvinceState implements _$ProvinceState {
  const ProvinceState._();

  const factory ProvinceState({
    @nullable UniqueId<int> id,
    @nullable StateName name,
    @Default(false) bool isSupported,
    @nullable Country country,
    @nullable DateTime createdAt,
    @nullable DateTime updatedAt,
    @nullable DateTime deletedAt,
  }) = _ProvinceState;
}
