// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateRequest _$_$_UpdateRequestFromJson(Map<String, dynamic> json) {
  return _$_UpdateRequest(
    name: json['name'] as String,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$_$_UpdateRequestToJson(_$_UpdateRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('email', instance.email);
  return val;
}

_$_UpdateRequestList _$_$_UpdateRequestListFromJson(Map<String, dynamic> json) {
  return _$_UpdateRequestList(
    updateRequestList: (json['update_request_list'] as List)
        ?.map((e) => e == null
            ? null
            : UpdateRequest.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_UpdateRequestListToJson(
    _$_UpdateRequestList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('update_request_list', instance.updateRequestList);
  return val;
}
