import 'package:json_annotation/json_annotation.dart';

class IntToBoolSerializer implements JsonConverter<bool, int> {
  const IntToBoolSerializer();

  @override
  bool fromJson(int value) {
    switch (value) {
      case 1:
        return true;
      case 0:
      default:
        return false;
    }
  }

  @override
  int toJson(bool instance) {
    switch (instance) {
      case true:
        return 1;
      case false:
      default:
        return 0;
    }
  }
}
