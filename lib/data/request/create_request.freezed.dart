// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CreateRequest _$CreateRequestFromJson(Map<String, dynamic> json) {
  return _CreateRequest.fromJson(json);
}

/// @nodoc
class _$CreateRequestTearOff {
  const _$CreateRequestTearOff();

// ignore: unused_element
  _CreateRequest call(String name, String email, String password) {
    return _CreateRequest(
      name,
      email,
      password,
    );
  }

// ignore: unused_element
  CreateRequest fromJson(Map<String, Object> json) {
    return CreateRequest.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CreateRequest = _$CreateRequestTearOff();

/// @nodoc
mixin _$CreateRequest {
  String get name;
  String get email;
  String get password;

  Map<String, dynamic> toJson();
  $CreateRequestCopyWith<CreateRequest> get copyWith;
}

/// @nodoc
abstract class $CreateRequestCopyWith<$Res> {
  factory $CreateRequestCopyWith(
          CreateRequest value, $Res Function(CreateRequest) then) =
      _$CreateRequestCopyWithImpl<$Res>;
  $Res call({String name, String email, String password});
}

/// @nodoc
class _$CreateRequestCopyWithImpl<$Res>
    implements $CreateRequestCopyWith<$Res> {
  _$CreateRequestCopyWithImpl(this._value, this._then);

  final CreateRequest _value;
  // ignore: unused_field
  final $Res Function(CreateRequest) _then;

  @override
  $Res call({
    Object name = freezed,
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
abstract class _$CreateRequestCopyWith<$Res>
    implements $CreateRequestCopyWith<$Res> {
  factory _$CreateRequestCopyWith(
          _CreateRequest value, $Res Function(_CreateRequest) then) =
      __$CreateRequestCopyWithImpl<$Res>;
  @override
  $Res call({String name, String email, String password});
}

/// @nodoc
class __$CreateRequestCopyWithImpl<$Res>
    extends _$CreateRequestCopyWithImpl<$Res>
    implements _$CreateRequestCopyWith<$Res> {
  __$CreateRequestCopyWithImpl(
      _CreateRequest _value, $Res Function(_CreateRequest) _then)
      : super(_value, (v) => _then(v as _CreateRequest));

  @override
  _CreateRequest get _value => super._value as _CreateRequest;

  @override
  $Res call({
    Object name = freezed,
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_CreateRequest(
      name == freezed ? _value.name : name as String,
      email == freezed ? _value.email : email as String,
      password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)

/// @nodoc
class _$_CreateRequest implements _CreateRequest {
  const _$_CreateRequest(this.name, this.email, this.password)
      : assert(name != null),
        assert(email != null),
        assert(password != null);

  factory _$_CreateRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_CreateRequestFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'CreateRequest(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @override
  _$CreateRequestCopyWith<_CreateRequest> get copyWith =>
      __$CreateRequestCopyWithImpl<_CreateRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreateRequestToJson(this);
  }
}

abstract class _CreateRequest implements CreateRequest {
  const factory _CreateRequest(String name, String email, String password) =
      _$_CreateRequest;

  factory _CreateRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateRequest.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  _$CreateRequestCopyWith<_CreateRequest> get copyWith;
}

CreateRequestList _$CreateRequestListFromJson(Map<String, dynamic> json) {
  return _CreateRequestList.fromJson(json);
}

/// @nodoc
class _$CreateRequestListTearOff {
  const _$CreateRequestListTearOff();

// ignore: unused_element
  _CreateRequestList call({@required List<CreateRequest> createRequestList}) {
    return _CreateRequestList(
      createRequestList: createRequestList,
    );
  }

// ignore: unused_element
  CreateRequestList fromJson(Map<String, Object> json) {
    return CreateRequestList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CreateRequestList = _$CreateRequestListTearOff();

/// @nodoc
mixin _$CreateRequestList {
  List<CreateRequest> get createRequestList;

  Map<String, dynamic> toJson();
  $CreateRequestListCopyWith<CreateRequestList> get copyWith;
}

/// @nodoc
abstract class $CreateRequestListCopyWith<$Res> {
  factory $CreateRequestListCopyWith(
          CreateRequestList value, $Res Function(CreateRequestList) then) =
      _$CreateRequestListCopyWithImpl<$Res>;
  $Res call({List<CreateRequest> createRequestList});
}

/// @nodoc
class _$CreateRequestListCopyWithImpl<$Res>
    implements $CreateRequestListCopyWith<$Res> {
  _$CreateRequestListCopyWithImpl(this._value, this._then);

  final CreateRequestList _value;
  // ignore: unused_field
  final $Res Function(CreateRequestList) _then;

  @override
  $Res call({
    Object createRequestList = freezed,
  }) {
    return _then(_value.copyWith(
      createRequestList: createRequestList == freezed
          ? _value.createRequestList
          : createRequestList as List<CreateRequest>,
    ));
  }
}

/// @nodoc
abstract class _$CreateRequestListCopyWith<$Res>
    implements $CreateRequestListCopyWith<$Res> {
  factory _$CreateRequestListCopyWith(
          _CreateRequestList value, $Res Function(_CreateRequestList) then) =
      __$CreateRequestListCopyWithImpl<$Res>;
  @override
  $Res call({List<CreateRequest> createRequestList});
}

/// @nodoc
class __$CreateRequestListCopyWithImpl<$Res>
    extends _$CreateRequestListCopyWithImpl<$Res>
    implements _$CreateRequestListCopyWith<$Res> {
  __$CreateRequestListCopyWithImpl(
      _CreateRequestList _value, $Res Function(_CreateRequestList) _then)
      : super(_value, (v) => _then(v as _CreateRequestList));

  @override
  _CreateRequestList get _value => super._value as _CreateRequestList;

  @override
  $Res call({
    Object createRequestList = freezed,
  }) {
    return _then(_CreateRequestList(
      createRequestList: createRequestList == freezed
          ? _value.createRequestList
          : createRequestList as List<CreateRequest>,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)

/// @nodoc
class _$_CreateRequestList implements _CreateRequestList {
  const _$_CreateRequestList({@required this.createRequestList})
      : assert(createRequestList != null);

  factory _$_CreateRequestList.fromJson(Map<String, dynamic> json) =>
      _$_$_CreateRequestListFromJson(json);

  @override
  final List<CreateRequest> createRequestList;

  @override
  String toString() {
    return 'CreateRequestList(createRequestList: $createRequestList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateRequestList &&
            (identical(other.createRequestList, createRequestList) ||
                const DeepCollectionEquality()
                    .equals(other.createRequestList, createRequestList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(createRequestList);

  @override
  _$CreateRequestListCopyWith<_CreateRequestList> get copyWith =>
      __$CreateRequestListCopyWithImpl<_CreateRequestList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreateRequestListToJson(this);
  }
}

abstract class _CreateRequestList implements CreateRequestList {
  const factory _CreateRequestList(
      {@required List<CreateRequest> createRequestList}) = _$_CreateRequestList;

  factory _CreateRequestList.fromJson(Map<String, dynamic> json) =
      _$_CreateRequestList.fromJson;

  @override
  List<CreateRequest> get createRequestList;
  @override
  _$CreateRequestListCopyWith<_CreateRequestList> get copyWith;
}
