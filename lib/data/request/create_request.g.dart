// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateRequest _$_$_CreateRequestFromJson(Map<String, dynamic> json) {
  return _$_CreateRequest(
    json['name'] as String,
    json['email'] as String,
    json['password'] as String,
  );
}

Map<String, dynamic> _$_$_CreateRequestToJson(_$_CreateRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('email', instance.email);
  writeNotNull('password', instance.password);
  return val;
}

_$_CreateRequestList _$_$_CreateRequestListFromJson(Map<String, dynamic> json) {
  return _$_CreateRequestList(
    createRequestList: (json['create_request_list'] as List)
        ?.map((e) => e == null
            ? null
            : CreateRequest.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_CreateRequestListToJson(
    _$_CreateRequestList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create_request_list', instance.createRequestList);
  return val;
}
