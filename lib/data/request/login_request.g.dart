// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginRequest _$_$_LoginRequestFromJson(Map<String, dynamic> json) {
  return _$_LoginRequest(
    json['email'] as String,
    json['password'] as String,
  );
}

Map<String, dynamic> _$_$_LoginRequestToJson(_$_LoginRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('password', instance.password);
  return val;
}

_$_LoginRequestList _$_$_LoginRequestListFromJson(Map<String, dynamic> json) {
  return _$_LoginRequestList(
    loginRequestList: (json['login_request_list'] as List)
        ?.map((e) =>
            e == null ? null : LoginRequest.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_LoginRequestListToJson(_$_LoginRequestList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('login_request_list', instance.loginRequestList);
  return val;
}
