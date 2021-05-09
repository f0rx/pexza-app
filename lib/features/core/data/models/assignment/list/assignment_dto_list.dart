library assignment_dto_list.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';

part 'assignment_dto_list.g.dart';
part 'assignment_dto_list.freezed.dart';

@freezed
@immutable
abstract class AssignmentDTOList implements _$AssignmentDTOList {
  const AssignmentDTOList._();

  const factory AssignmentDTOList({
    @Default(<AssignmentDTOData>[])
    @JsonKey(includeIfNull: false)
        List<AssignmentDTOData> data,
    //
    @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
    //
    @nullable @JsonKey(includeIfNull: false) MetaField meta,
  }) = _AssignmentDTOList;

  factory AssignmentDTOList.fromJson(Map<String, dynamic> json) =>
      _$AssignmentDTOListFromJson(json);

  KtList<Assignment> domain([bool isLandlord = false]) =>
      data?.map((u) => u?.domain(isLandlord))?.toImmutableList();
}
