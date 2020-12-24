// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(int id, String name, String email) {
    return _User(
      id,
      name,
      email,
    );
  }

// ignore: unused_element
  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  int get id;
  String get name;
  String get email;

  Map<String, dynamic> toJson();
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({int id, String name, String email});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String email});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
  }) {
    return _then(_User(
      id == freezed ? _value.id : id as int,
      name == freezed ? _value.name : name as String,
      email == freezed ? _value.email : email as String,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)

/// @nodoc
class _$_User implements _User {
  const _$_User(this.id, this.name, this.email)
      : assert(id != null),
        assert(name != null),
        assert(email != null);

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(int id, String name, String email) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  _$UserCopyWith<_User> get copyWith;
}

UserList _$UserListFromJson(Map<String, dynamic> json) {
  return _UserList.fromJson(json);
}

/// @nodoc
class _$UserListTearOff {
  const _$UserListTearOff();

// ignore: unused_element
  _UserList call({@required List<User> userList}) {
    return _UserList(
      userList: userList,
    );
  }

// ignore: unused_element
  UserList fromJson(Map<String, Object> json) {
    return UserList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserList = _$UserListTearOff();

/// @nodoc
mixin _$UserList {
  List<User> get userList;

  Map<String, dynamic> toJson();
  $UserListCopyWith<UserList> get copyWith;
}

/// @nodoc
abstract class $UserListCopyWith<$Res> {
  factory $UserListCopyWith(UserList value, $Res Function(UserList) then) =
      _$UserListCopyWithImpl<$Res>;
  $Res call({List<User> userList});
}

/// @nodoc
class _$UserListCopyWithImpl<$Res> implements $UserListCopyWith<$Res> {
  _$UserListCopyWithImpl(this._value, this._then);

  final UserList _value;
  // ignore: unused_field
  final $Res Function(UserList) _then;

  @override
  $Res call({
    Object userList = freezed,
  }) {
    return _then(_value.copyWith(
      userList: userList == freezed ? _value.userList : userList as List<User>,
    ));
  }
}

/// @nodoc
abstract class _$UserListCopyWith<$Res> implements $UserListCopyWith<$Res> {
  factory _$UserListCopyWith(_UserList value, $Res Function(_UserList) then) =
      __$UserListCopyWithImpl<$Res>;
  @override
  $Res call({List<User> userList});
}

/// @nodoc
class __$UserListCopyWithImpl<$Res> extends _$UserListCopyWithImpl<$Res>
    implements _$UserListCopyWith<$Res> {
  __$UserListCopyWithImpl(_UserList _value, $Res Function(_UserList) _then)
      : super(_value, (v) => _then(v as _UserList));

  @override
  _UserList get _value => super._value as _UserList;

  @override
  $Res call({
    Object userList = freezed,
  }) {
    return _then(_UserList(
      userList: userList == freezed ? _value.userList : userList as List<User>,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)

/// @nodoc
class _$_UserList implements _UserList {
  const _$_UserList({@required this.userList}) : assert(userList != null);

  factory _$_UserList.fromJson(Map<String, dynamic> json) =>
      _$_$_UserListFromJson(json);

  @override
  final List<User> userList;

  @override
  String toString() {
    return 'UserList(userList: $userList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserList &&
            (identical(other.userList, userList) ||
                const DeepCollectionEquality()
                    .equals(other.userList, userList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userList);

  @override
  _$UserListCopyWith<_UserList> get copyWith =>
      __$UserListCopyWithImpl<_UserList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserListToJson(this);
  }
}

abstract class _UserList implements UserList {
  const factory _UserList({@required List<User> userList}) = _$_UserList;

  factory _UserList.fromJson(Map<String, dynamic> json) = _$_UserList.fromJson;

  @override
  List<User> get userList;
  @override
  _$UserListCopyWith<_UserList> get copyWith;
}
