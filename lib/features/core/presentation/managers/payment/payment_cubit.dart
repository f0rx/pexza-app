import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/features/home/tenant/data/data.dart';
import 'package:pexza/features/home/tenant/data/success/tenant__success.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

@injectable
class PaymentCubit extends Cubit<PaymentState> {
  Charge charge;

  PaymentCubit() : super(PaymentState.initial());

  String get reference => '${DateTime.now().toIso8601String()}'
      '--${UniqueId.v4().value}';

  void init(
    DebitCard card, {
    bool hideEmail,
    bool hideAmount,
    bool fullscreen,
    Widget logo,
  }) {
    emit(state.copyWith(
      chargeableCard: card,
      hideEmail: hideEmail ?? state.hideEmail,
      hideAmount: hideAmount ?? state.hideAmount,
      fullScreen: fullscreen ?? state.fullScreen,
      logo: logo ?? state.logo,
    ));

    charge = Charge()
      ..amount = state.chargeableCard?.invoice?.amount?.getOrNull
      ..email = state.chargeableCard?.invoice?.email?.getOrEmpty
      ..reference = reference
      ..card = PaymentCard(
        name: state.chargeableCard?.cardName?.getOrEmpty,
        number: state.chargeableCard?.cardNumber?.getOrEmpty,
        cvc: state.chargeableCard?.cvv?.getOrEmpty,
        expiryMonth: state.chargeableCard?.cardExpiryDate?.month,
        expiryYear: state.chargeableCard?.cardExpiryDate?.year,
      )
      ..putMetaData(
        'invoice_no',
        state.chargeableCard?.invoice?.invoiceNo?.value,
      )
      ..putCustomField(
        'Invoice Number',
        state.chargeableCard?.invoice?.invoiceNo?.value,
      )
      ..putCustomField(
        'Cardholder Name',
        state.chargeableCard?.cardName?.getOrEmpty,
      )
      ..putCustomField('Payment Reference', reference);
  }

  Future<void> pay(BuildContext context) async {
    try {
      if (PaystackPlugin.sdkInitialized) {
        emit(state.copyWith(
          response: right(InfoResponse(
            message: "Please do not close this payment "
                "dialog before transaction is complete!",
            position: BottomAlertDialogPosition.top,
          )),
        ));

        CheckoutResponse response = await PaystackPlugin.checkout(
          context,
          method: CheckoutMethod.card,
          charge: charge,
          hideAmount: state.hideAmount,
          hideEmail: state.hideEmail,
          fullscreen: state.fullScreen,
          logo: state.logo,
        );

        emit(state.copyWith(
          reference: response.reference,
          status: response.status,
          verify: response.verify,
          response: response.status
              ? right(TenantSuccess(
                  message: 'Payment was successful!',
                ))
              : left(TenantFailure(
                  message: 'Unable to process transaction!',
                )),
        ));
      } else
        emit(state.copyWith(
          response: left(TenantFailure(
            message: 'Paystack SDK not initialized! Please contact support.',
          )),
        ));
    } on PaystackException catch (e) {
      emit(state.copyWith(
        response: left(TenantFailure(
          message: '${e.message}',
        )),
      ));
    }
  }
}
