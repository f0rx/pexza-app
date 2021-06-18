import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/utils/utils.dart';

extension ResponseX on Response {
  U fold<U>({
    U Function(Info) info,
    U Function(Success) success,
  }) {
    if (this is Info)
      return info?.call(this as Info);
    else
      return success?.call(this as Success);
  }
}
