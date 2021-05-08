part of 'landlord_merger_cubit.dart';

@freezed
@immutable
abstract class LandlordMergerState implements _$LandlordMergerState {
  static const int kDefaultDuration = 2;
  static const int kMaxDuration = 50;
  const LandlordMergerState._();

  const factory LandlordMergerState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @required EmailAddress email,
    @required AmountField amount,
    @Default(PaymentPlan.yearly) PaymentPlan plan,
    @Default(LandlordMergerState.kDefaultDuration) int duration,
    @nullable Currency currency,
    @nullable LandlordProperty selectedProperty,
    @nullable LandlordApartment selectedApartment,
    @Default(KtList.empty()) KtList<LandlordProperty> properties,
    @Default(KtList.empty()) KtList<Currency> currencies,
    @Default(KtList.empty()) KtList<LandlordApartment> apartments,
    @Default(const None()) Option<Either<Failure, Success>> response,
  }) = _LandlordMergerState;

  factory LandlordMergerState.initial() => LandlordMergerState(
        email: EmailAddress(""),
        amount: AmountField(0),
      );
}
