library meta_field;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/data.dart';

part 'meta_field.g.dart';
part 'meta_field.freezed.dart';

@freezed
@immutable
abstract class MetaField implements _$MetaField {
  const MetaField._();

  const factory MetaField({
    @JsonKey(includeIfNull: false, name: "current_page") int currentPage,
    @JsonKey(includeIfNull: false) int from,
    @JsonKey(includeIfNull: false, name: "last_page") int lastPage,
    @nullable @JsonKey(includeIfNull: false) List<PaginationLinks> links,
    @nullable @JsonKey(includeIfNull: false) String path,
    @JsonKey(includeIfNull: false, name: "per_page") int perPage,
    @JsonKey(includeIfNull: false) int to,
    @JsonKey(includeIfNull: false) int total,
  }) = _MetaField;

  factory MetaField.fromJson(Map<String, dynamic> json) =>
      _$MetaFieldFromJson(json);
}
