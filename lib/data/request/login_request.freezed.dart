// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) {
  return _LoginRequest.fromJson(json);
}

/// @nodoc
class _$LoginRequestTearOff {
  const _$LoginRequestTearOff();

// ignore: unused_element
  _LoginRequest call(String email, String password) {
    return _LoginRequest(
      email,
      password,
    );
  }

// ignore: unused_element
  LoginRequest fromJson(Map<String, Object> json) {
    return LoginRequest.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LoginRequest = _$LoginRequestTearOff();

/// @nodoc
mixin _$LoginRequest {
  String get email;
  String get password;

  Map<String, dynamic> toJson();
  $LoginRequestCopyWith<LoginRequest> get copyWith;
}

/// @nodoc
abstract class $LoginRequestCopyWith<$Res> {
  factory $LoginRequestCopyWith(
          LoginRequest value, $Res Function(LoginRequest) then) =
      _$LoginRequestCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginRequestCopyWithImpl<$Res> implements $LoginRequestCopyWith<$Res> {
  _$LoginRequestCopyWithImpl(this._value, this._then);

  final LoginRequest _value;
  // ignore: unused_field
  final $Res Function(LoginRequest) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginRequestCopyWith<$Res>
    implements $LoginRequestCopyWith<$Res> {
  factory _$LoginRequestCopyWith(
          _LoginRequest value, $Res Function(_LoginRequest) then) =
      __$LoginRequestCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$LoginRequestCopyWithImpl<$Res> extends _$LoginRequestCopyWithImpl<$Res>
    implements _$LoginRequestCopyWith<$Res> {
  __$LoginRequestCopyWithImpl(
      _LoginRequest _value, $Res Function(_LoginRequest) _then)
      : super(_value, (v) => _then(v as _LoginRequest));

  @override
  _LoginRequest get _value => super._value as _LoginRequest;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_LoginRequest(
      email == freezed ? _value.email : email as String,
      password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)

/// @nodoc
class _$_LoginRequest implements _LoginRequest {
  const _$_LoginRequest(this.email, this.password)
      : assert(email != null),
        assert(password != null);

  factory _$_LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginRequestFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginRequest(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @override
  _$LoginRequestCopyWith<_LoginRequest> get copyWith =>
      __$LoginRequestCopyWithImpl<_LoginRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginRequestToJson(this);
  }
}

abstract class _LoginRequest implements LoginRequest {
  const factory _LoginRequest(String email, String password) = _$_LoginRequest;

  factory _LoginRequest.fromJson(Map<String, dynamic> json) =
      _$_LoginRequest.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  _$LoginRequestCopyWith<_LoginRequest> get copyWith;
}

LoginRequestList _$LoginRequestListFromJson(Map<String, dynamic> json) {
  return _LoginRequestList.fromJson(json);
}

/// @nodoc
class _$LoginRequestListTearOff {
  const _$LoginRequestListTearOff();

// ignore: unused_element
  _LoginRequestList call({@required List<LoginRequest> loginRequestList}) {
    return _LoginRequestList(
      loginRequestList: loginRequestList,
    );
  }

// ignore: unused_element
  LoginRequestList fromJson(Map<String, Object> json) {
    return LoginRequestList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LoginRequestList = _$LoginRequestListTearOff();

/// @nodoc
mixin _$LoginRequestList {
  List<LoginRequest> get loginRequestList;

  Map<String, dynamic> toJson();
  $LoginRequestListCopyWith<LoginRequestList> get copyWith;
}

/// @nodoc
abstract class $LoginRequestListCopyWith<$Res> {
  factory $LoginRequestListCopyWith(
          LoginRequestList value, $Res Function(LoginRequestList) then) =
      _$LoginRequestListCopyWithImpl<$Res>;
  $Res call({List<LoginRequest> loginRequestList});
}

/// @nodoc
class _$LoginRequestListCopyWithImpl<$Res>
    implements $LoginRequestListCopyWith<$Res> {
  _$LoginRequestListCopyWithImpl(this._value, this._then);

  final LoginRequestList _value;
  // ignore: unused_field
  final $Res Function(LoginRequestList) _then;

  @override
  $Res call({
    Object loginRequestList = freezed,
  }) {
    return _then(_value.copyWith(
      loginRequestList: loginRequestList == freezed
          ? _value.loginRequestList
          : loginRequestList as List<LoginRequest>,
    ));
  }
}

/// @nodoc
abstract class _$LoginRequestListCopyWith<$Res>
    implements $LoginRequestListCopyWith<$Res> {
  factory _$LoginRequestListCopyWith(
          _LoginRequestList value, $Res Function(_LoginRequestList) then) =
      __$LoginRequestListCopyWithImpl<$Res>;
  @override
  $Res call({List<LoginRequest> loginRequestList});
}

/// @nodoc
class __$LoginRequestListCopyWithImpl<$Res>
    extends _$LoginRequestListCopyWithImpl<$Res>
    implements _$LoginRequestListCopyWith<$Res> {
  __$LoginRequestListCopyWithImpl(
      _LoginRequestList _value, $Res Function(_LoginRequestList) _then)
      : super(_value, (v) => _then(v as _LoginRequestList));

  @override
  _LoginRequestList get _value => super._value as _LoginRequestList;

  @override
  $Res call({
    Object loginRequestList = freezed,
  }) {
    return _then(_LoginRequestList(
      loginRequestList: loginRequestList == freezed
          ? _value.loginRequestList
          : loginRequestList as List<LoginRequest>,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)

/// @nodoc
class _$_LoginRequestList implements _LoginRequestList {
  const _$_LoginRequestList({@required this.loginRequestList})
      : assert(loginRequestList != null);

  factory _$_LoginRequestList.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginRequestListFromJson(json);

  @override
  final List<LoginRequest> loginRequestList;

  @override
  String toString() {
    return 'LoginRequestList(loginRequestList: $loginRequestList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginRequestList &&
            (identical(other.loginRequestList, loginRequestList) ||
                const DeepCollectionEquality()
                    .equals(other.loginRequestList, loginRequestList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loginRequestList);

  @override
  _$LoginRequestListCopyWith<_LoginRequestList> get copyWith =>
      __$LoginRequestListCopyWithImpl<_LoginRequestList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginRequestListToJson(this);
  }
}

abstract class _LoginRequestList implements LoginRequestList {
  const factory _LoginRequestList(
      {@required List<LoginRequest> loginRequestList}) = _$_LoginRequestList;

  factory _LoginRequestList.fromJson(Map<String, dynamic> json) =
      _$_LoginRequestList.fromJson;

  @override
  List<LoginRequest> get loginRequestList;
  @override
  _$LoginRequestListCopyWith<_LoginRequestList> get copyWith;
}
