part of 'tenant_apartment_cubit.dart';

@freezed
@immutable
abstract class TenantApartmentState implements _$TenantApartmentState {
  const TenantApartmentState._();

  const factory TenantApartmentState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @nullable TenantApartment apartment,
    @Default(KtList.empty()) KtList<TenantApartment> apartments,
    @Default(const None()) Option<Either<Failure, Success>> response,
  }) = _TenantApartmentState;

  factory TenantApartmentState.initial() => TenantApartmentState();
}
