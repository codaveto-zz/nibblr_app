import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.freezed.dart';

part 'login_request.g.dart';

@freezed
abstract class LoginRequest with _$LoginRequest{
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory LoginRequest(
  String email, String password,
  ) = _LoginRequest;
  factory LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);
}

@freezed
abstract class LoginRequestList with _$LoginRequestList {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory LoginRequestList({
    @required List<LoginRequest> loginRequestList,
  }) = _LoginRequestList;

  factory LoginRequestList.fromJson(Map<String, dynamic> json) => _$LoginRequestListFromJson(json);
}
