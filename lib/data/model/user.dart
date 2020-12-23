import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
abstract class User with _$User{
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory User(
  int id, String name, String email
  ) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class UserList with _$UserList {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory UserList({
    @required List<User> userList,
  }) = _UserList;

  factory UserList.fromJson(Map<String, dynamic> json) => _$UserListFromJson(json);
}
