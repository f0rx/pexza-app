library country_state.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';

part 'country_state.freezed.dart';

@freezed
@immutable
abstract class CountryState implements _$CountryState {
  const CountryState._();

  const factory CountryState({
    @nullable UniqueId<int> id,
    @nullable CountryStateName name,
    @Default(false) bool isSupported,
    @nullable Country country,
    @nullable DateTime createdAt,
    @nullable DateTime updatedAt,
    @nullable DateTime deletedAt,
  }) = _CountryState;
}
