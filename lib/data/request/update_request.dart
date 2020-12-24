import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_request.freezed.dart';

part 'update_request.g.dart';

@freezed
abstract class UpdateRequest with _$UpdateRequest{
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory UpdateRequest(
  {String name, String email}
  ) = _UpdateRequest;
  factory UpdateRequest.fromJson(Map<String, dynamic> json) => _$UpdateRequestFromJson(json);
}

@freezed
abstract class UpdateRequestList with _$UpdateRequestList {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory UpdateRequestList({
    @required List<UpdateRequest> updateRequestList,
  }) = _UpdateRequestList;

  factory UpdateRequestList.fromJson(Map<String, dynamic> json) => _$UpdateRequestListFromJson(json);
}
