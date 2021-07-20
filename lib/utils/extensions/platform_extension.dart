import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';

extension PlatformX on TargetPlatform {
  T fold<T>({
    T Function() cupertino,
    @required T Function() material,
  }) {
    if (Platform.isIOS || Platform.isMacOS)
      return cupertino?.call() ?? material.call();
    else
      return material.call();
  }
}
