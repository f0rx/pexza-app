library withdrawal_history.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart' hide nullable;
import 'package:intl/intl.dart';

part 'withdrawal_history.freezed.dart';
part 'withdrawal_history.g.dart';

@freezed
@immutable
abstract class WithdrawalHistory implements _$WithdrawalHistory {
  const WithdrawalHistory._();

  const factory WithdrawalHistory({
    /// The unique id of this history
    @nullable UniqueId<int> id,

    /// The user id associated with this model
    @nullable UniqueId<int> userId,

    /// The TOTAL CHARGE = amount + charges
    @nullable BasicTextField<double> totalCharged,

    /// The actual amount the user applied for withdrawal
    @nullable BasicTextField<int> amount,

    /// The charges for witdrawal
    @nullable BasicTextField<double> charges,

    /// The status of the withdrawal
    @nullable WithdrawalStatus status,

    /// The payable id associated with this withdrawal
    @nullable UniqueId<int> payableId,

    /// The withdrawal reference
    @nullable UniqueId<String> reference,

    /// When the model was created
    @nullable DateTime createdAt,

    /// When the model was updated
    @nullable DateTime updatedAt,

    /// When the model was soft-deleted
    @nullable DateTime deletedAt,
  }) = _WithdrawalHistory;

  static String custom(DateTime date, {bool year = false}) {
    if (date == null) return "";

    final month = DateFormat.MMMd().format(date);
    final time = DateFormat(DateFormat.HOUR_MINUTE).format(date);
    final yr = DateFormat.yMMMd().format(date);
    if (year) return "$yr, $time";
    return "$month, $time";
  }
}

class WithdrawalStatus extends EnumClass {
  static const WithdrawalStatus confirmed = _$confirmed;
  @BuiltValueEnumConst(fallback: true)
  static const WithdrawalStatus generated = _$generated;

  const WithdrawalStatus._(String name) : super(name);

  static BuiltSet<WithdrawalStatus> get values => _$withdrawalStatusValues;

  static WithdrawalStatus valueOf(String name) =>
      _$withdrawalStatusValueOf(name);

  T fold<T>({
    T confirmed,
    T generated,
  }) {
    switch (this.name) {
      case "confirmed":
        return confirmed;
      case "generated":
      default:
        return generated;
    }
  }
}
