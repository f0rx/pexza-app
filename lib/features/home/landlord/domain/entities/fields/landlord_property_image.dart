import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/utils/utils.dart';

class LandlordPropertyImage extends FieldObject<String> {
  static const LandlordPropertyImage DEFAULT =
      LandlordPropertyImage._(Right(AppAssets.apartment1));

  final Either<FieldObjectException<String>, String> value;

  factory LandlordPropertyImage(String src) {
    assert(src != null);
    return LandlordPropertyImage._(Validator.isEmpty(src));
  }

  const LandlordPropertyImage._(this.value);
}
