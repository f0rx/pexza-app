import 'package:freezed_annotation/freezed_annotation.dart';

part 'rent_detail.freezed.dart';

@freezed
@immutable
abstract class RentDetail implements _$RentDetail {
  const RentDetail._();

  const factory RentDetail({
    @required String item,
    String detail,
  }) = _RentDetail;

  static List<RentDetail> get list => [
        RentDetail(item: "Property Owner", detail: "Umoren Benjamin"),
        RentDetail(item: "Property Type", detail: "Shop"),
        RentDetail(item: "Property Location", detail: "Ikeja, Lagos"),
        RentDetail(item: "Rent Duration", detail: "1 Year"),
        RentDetail(item: "Payment Plan", detail: "Monthly"),
        RentDetail(item: "Currency", detail: "NGN"),
        RentDetail(item: "Rent Amount", detail: "₦ 200, 000"),
      ];
}
