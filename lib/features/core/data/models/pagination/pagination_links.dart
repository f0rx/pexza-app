library pagination_links;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_links.g.dart';
part 'pagination_links.freezed.dart';

@freezed
@immutable
abstract class PaginationLinks implements _$PaginationLinks {
  const PaginationLinks._();

  const factory PaginationLinks({
    @nullable @JsonKey(includeIfNull: false) String first,
    @nullable @JsonKey(includeIfNull: false) String last,
    @nullable @JsonKey(includeIfNull: false) String prev,
    @nullable @JsonKey(includeIfNull: false) String next,
    @nullable @JsonKey(includeIfNull: false) String url,
    @nullable @JsonKey(includeIfNull: false) String label,
    @nullable @JsonKey(includeIfNull: false, defaultValue: false) bool active,
  }) = _PaginationLinks;

  factory PaginationLinks.fromJson(Map<String, dynamic> json) =>
      _$PaginationLinksFromJson(json);
}
