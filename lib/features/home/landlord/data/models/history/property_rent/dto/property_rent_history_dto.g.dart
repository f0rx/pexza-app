// GENERATED CODE - DO NOT MODIFY BY HAND

part of property_rent_history_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PropertyRentHistoryDTO _$_$_PropertyRentHistoryDTOFromJson(
    Map<String, dynamic> json) {
  return _$_PropertyRentHistoryDTO(
    data: json['data'] == null
        ? null
        : PropertyRentHistoryDTOData.fromJson(
            json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PropertyRentHistoryDTOToJson(
    _$_PropertyRentHistoryDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}
