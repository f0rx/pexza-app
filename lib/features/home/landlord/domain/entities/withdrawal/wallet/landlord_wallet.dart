library landlord_wallet.dart;

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';

part 'landlord_wallet.freezed.dart';

@freezed
@immutable
abstract class LandlordWallet implements _$LandlordWallet {
  const LandlordWallet._();

  const factory LandlordWallet({
    @nullable BasicTextField<int> payableId,
    @nullable BasicTextField<int> amount,
    @nullable BasicTextField<int> balance,
    @nullable DateTime updatedAt,
    @nullable DateTime deletedAt,
  }) = _LandlordWallet;

  Option<FieldObjectException<dynamic>> get failures =>
      amount.mapped.andThen(payableId.mapped).fold(
            (f) => some(f),
            (_) => none(),
          );
}
