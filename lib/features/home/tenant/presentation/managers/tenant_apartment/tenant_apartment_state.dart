part of 'tenant_apartment_cubit.dart';

@freezed
@immutable
abstract class TenantApartmentState implements _$TenantApartmentState {
  const TenantApartmentState._();

  const factory TenantApartmentState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(KtList.empty()) KtList<TenantApartment> apartments,
    @nullable TenantApartment apartment,
    @Default(const None()) Option<Either<Failure, Success>> response,
  }) = _TenantApartmentState;

  factory TenantApartmentState.initial() => TenantApartmentState();
}
