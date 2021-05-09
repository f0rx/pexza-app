import 'package:flutter/painting.dart';
import 'package:flutter/foundation.dart';
import 'package:pexza/utils/utils.dart';

@immutable
class UrgencyResolver {
  static const String _kMinor = "Minor";
  static const String _kModerate = "Moderate";
  static const String _kUrgent = "Urgent";
  static const String _kVeryUrgent = "Very Urgent";

  final String value;

  final Color _color;

  UrgencyResolver._(this.value, [this._color]);

  Color get color => _color;

  factory UrgencyResolver(int urgency) {
    assert(urgency != null && !urgency.isNaN);
    if (urgency <= 2) {
      return UrgencyResolver._(_kMinor, AppColors.yellow);
    } else if (urgency >= 3 && urgency <= 5) {
      return UrgencyResolver._(_kModerate, AppColors.successGreen);
    } else if (urgency >= 6 && urgency <= 8) {
      return UrgencyResolver._(_kUrgent, AppColors.lightRed);
    } else {
      return UrgencyResolver._(_kVeryUrgent, AppColors.deepRed);
    }
  }
}
