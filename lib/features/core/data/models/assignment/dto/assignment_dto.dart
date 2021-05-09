library assignment_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';

part 'assignment_dto.g.dart';
part 'assignment_dto.freezed.dart';

@freezed
@immutable
abstract class AssignmentDTO implements _$AssignmentDTO {
  const AssignmentDTO._();

  const factory AssignmentDTO({
    @nullable @JsonKey(includeIfNull: false) AssignmentDTOData data,
  }) = _AssignmentDTO;

  factory AssignmentDTO.fromJson(Map<String, dynamic> json) =>
      _$AssignmentDTOFromJson(json);

  Map<String, dynamic> toJson() => _$_$_AssignmentDTOToJson(this);

  factory AssignmentDTO.fromDomain(Assignment instance) => AssignmentDTO(
        data: AssignmentDTOData.fromDomain(instance),
      );

  Assignment domain([bool isLandlord = false]) => data?.domain(isLandlord);
}
