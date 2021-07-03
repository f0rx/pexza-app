library bank_account_detail.dart;

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/features/home/landlord/domain/entities/withdrawal/index.dart';

part 'bank_account_detail.freezed.dart';

@freezed
@immutable
abstract class BankAccountDetail implements _$BankAccountDetail {
  const BankAccountDetail._();

  const factory BankAccountDetail({
    @nullable BasicTextField<int> bankId,
    @nullable BasicTextField<String> accountNumber,
    @nullable BasicTextField<String> accountName,
    @nullable Bank bank,
  }) = _BankAccountDetail;

  BankAccountDetail merge(BankAccountDetail other) {
    if (other == null) return this;

    return this.copyWith(
      bankId: other?.bankId ?? bankId,
      accountName: other?.accountName ?? accountName,
      accountNumber: other?.accountNumber ?? accountNumber,
      bank: other?.bank ?? bank,
    );
  }

  Option<FieldObjectException<dynamic>> get failures =>
      accountNumber.mapped.fold(
        (f) => some(f),
        (_) => none(),
      );
}
