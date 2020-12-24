// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UpdateRequest _$UpdateRequestFromJson(Map<String, dynamic> json) {
  return _UpdateRequest.fromJson(json);
}

/// @nodoc
class _$UpdateRequestTearOff {
  const _$UpdateRequestTearOff();

// ignore: unused_element
  _UpdateRequest call({String name, String email}) {
    return _UpdateRequest(
      name: name,
      email: email,
    );
  }

// ignore: unused_element
  UpdateRequest fromJson(Map<String, Object> json) {
    return UpdateRequest.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateRequest = _$UpdateRequestTearOff();

/// @nodoc
mixin _$UpdateRequest {
  String get name;
  String get email;

  Map<String, dynamic> toJson();
  $UpdateRequestCopyWith<UpdateRequest> get copyWith;
}

/// @nodoc
abstract class $UpdateRequestCopyWith<$Res> {
  factory $UpdateRequestCopyWith(
          UpdateRequest value, $Res Function(UpdateRequest) then) =
      _$UpdateRequestCopyWithImpl<$Res>;
  $Res call({String name, String email});
}

/// @nodoc
class _$UpdateRequestCopyWithImpl<$Res>
    implements $UpdateRequestCopyWith<$Res> {
  _$UpdateRequestCopyWithImpl(this._value, this._then);

  final UpdateRequest _value;
  // ignore: unused_field
  final $Res Function(UpdateRequest) _then;

  @override
  $Res call({
    Object name = freezed,
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateRequestCopyWith<$Res>
    implements $UpdateRequestCopyWith<$Res> {
  factory _$UpdateRequestCopyWith(
          _UpdateRequest value, $Res Function(_UpdateRequest) then) =
      __$UpdateRequestCopyWithImpl<$Res>;
  @override
  $Res call({String name, String email});
}

/// @nodoc
class __$UpdateRequestCopyWithImpl<$Res>
    extends _$UpdateRequestCopyWithImpl<$Res>
    implements _$UpdateRequestCopyWith<$Res> {
  __$UpdateRequestCopyWithImpl(
      _UpdateRequest _value, $Res Function(_UpdateRequest) _then)
      : super(_value, (v) => _then(v as _UpdateRequest));

  @override
  _UpdateRequest get _value => super._value as _UpdateRequest;

  @override
  $Res call({
    Object name = freezed,
    Object email = freezed,
  }) {
    return _then(_UpdateRequest(
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)

/// @nodoc
class _$_UpdateRequest implements _UpdateRequest {
  const _$_UpdateRequest({this.name, this.email});

  factory _$_UpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateRequestFromJson(json);

  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'UpdateRequest(name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email);

  @override
  _$UpdateRequestCopyWith<_UpdateRequest> get copyWith =>
      __$UpdateRequestCopyWithImpl<_UpdateRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateRequestToJson(this);
  }
}

abstract class _UpdateRequest implements UpdateRequest {
  const factory _UpdateRequest({String name, String email}) = _$_UpdateRequest;

  factory _UpdateRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateRequest.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  _$UpdateRequestCopyWith<_UpdateRequest> get copyWith;
}

UpdateRequestList _$UpdateRequestListFromJson(Map<String, dynamic> json) {
  return _UpdateRequestList.fromJson(json);
}

/// @nodoc
class _$UpdateRequestListTearOff {
  const _$UpdateRequestListTearOff();

// ignore: unused_element
  _UpdateRequestList call({@required List<UpdateRequest> updateRequestList}) {
    return _UpdateRequestList(
      updateRequestList: updateRequestList,
    );
  }

// ignore: unused_element
  UpdateRequestList fromJson(Map<String, Object> json) {
    return UpdateRequestList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateRequestList = _$UpdateRequestListTearOff();

/// @nodoc
mixin _$UpdateRequestList {
  List<UpdateRequest> get updateRequestList;

  Map<String, dynamic> toJson();
  $UpdateRequestListCopyWith<UpdateRequestList> get copyWith;
}

/// @nodoc
abstract class $UpdateRequestListCopyWith<$Res> {
  factory $UpdateRequestListCopyWith(
          UpdateRequestList value, $Res Function(UpdateRequestList) then) =
      _$UpdateRequestListCopyWithImpl<$Res>;
  $Res call({List<UpdateRequest> updateRequestList});
}

/// @nodoc
class _$UpdateRequestListCopyWithImpl<$Res>
    implements $UpdateRequestListCopyWith<$Res> {
  _$UpdateRequestListCopyWithImpl(this._value, this._then);

  final UpdateRequestList _value;
  // ignore: unused_field
  final $Res Function(UpdateRequestList) _then;

  @override
  $Res call({
    Object updateRequestList = freezed,
  }) {
    return _then(_value.copyWith(
      updateRequestList: updateRequestList == freezed
          ? _value.updateRequestList
          : updateRequestList as List<UpdateRequest>,
    ));
  }
}

/// @nodoc
abstract class _$UpdateRequestListCopyWith<$Res>
    implements $UpdateRequestListCopyWith<$Res> {
  factory _$UpdateRequestListCopyWith(
          _UpdateRequestList value, $Res Function(_UpdateRequestList) then) =
      __$UpdateRequestListCopyWithImpl<$Res>;
  @override
  $Res call({List<UpdateRequest> updateRequestList});
}

/// @nodoc
class __$UpdateRequestListCopyWithImpl<$Res>
    extends _$UpdateRequestListCopyWithImpl<$Res>
    implements _$UpdateRequestListCopyWith<$Res> {
  __$UpdateRequestListCopyWithImpl(
      _UpdateRequestList _value, $Res Function(_UpdateRequestList) _then)
      : super(_value, (v) => _then(v as _UpdateRequestList));

  @override
  _UpdateRequestList get _value => super._value as _UpdateRequestList;

  @override
  $Res call({
    Object updateRequestList = freezed,
  }) {
    return _then(_UpdateRequestList(
      updateRequestList: updateRequestList == freezed
          ? _value.updateRequestList
          : updateRequestList as List<UpdateRequest>,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)

/// @nodoc
class _$_UpdateRequestList implements _UpdateRequestList {
  const _$_UpdateRequestList({@required this.updateRequestList})
      : assert(updateRequestList != null);

  factory _$_UpdateRequestList.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateRequestListFromJson(json);

  @override
  final List<UpdateRequest> updateRequestList;

  @override
  String toString() {
    return 'UpdateRequestList(updateRequestList: $updateRequestList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateRequestList &&
            (identical(other.updateRequestList, updateRequestList) ||
                const DeepCollectionEquality()
                    .equals(other.updateRequestList, updateRequestList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(updateRequestList);

  @override
  _$UpdateRequestListCopyWith<_UpdateRequestList> get copyWith =>
      __$UpdateRequestListCopyWithImpl<_UpdateRequestList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateRequestListToJson(this);
  }
}

abstract class _UpdateRequestList implements UpdateRequestList {
  const factory _UpdateRequestList(
      {@required List<UpdateRequest> updateRequestList}) = _$_UpdateRequestList;

  factory _UpdateRequestList.fromJson(Map<String, dynamic> json) =
      _$_UpdateRequestList.fromJson;

  @override
  List<UpdateRequest> get updateRequestList;
  @override
  _$UpdateRequestListCopyWith<_UpdateRequestList> get copyWith;
}
