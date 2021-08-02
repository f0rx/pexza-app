import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

class TimestampConverter implements JsonConverter<DateTime, String> {
  const TimestampConverter();

  @override
  DateTime fromJson(String value) =>
      value != null ? DateTime.tryParse(value) : null;

  @override
  String toJson(DateTime instance) =>
      instance != null ? instance.toIso8601String() : null;
}

class FloorDateTimeConverter extends TypeConverter<DateTime, String> {
  @override
  DateTime decode(String value) =>
      value != null ? DateTime.tryParse(value) : null;

  @override
  String encode(DateTime instance) =>
      instance != null ? instance.toIso8601String() : null;
}
