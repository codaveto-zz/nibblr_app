import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_request.freezed.dart';

part 'create_request.g.dart';

@freezed
abstract class CreateRequest with _$CreateRequest{
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory CreateRequest(
  String name, String email, String password
  ) = _CreateRequest;
  factory CreateRequest.fromJson(Map<String, dynamic> json) => _$CreateRequestFromJson(json);
}

@freezed
abstract class CreateRequestList with _$CreateRequestList {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory CreateRequestList({
    @required List<CreateRequest> createRequestList,
  }) = _CreateRequestList;

  factory CreateRequestList.fromJson(Map<String, dynamic> json) => _$CreateRequestListFromJson(json);
}
