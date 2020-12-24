// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dinner_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DinnerRequest _$_$_DinnerRequestFromJson(Map<String, dynamic> json) {
  return _$_DinnerRequest(
    title: json['title'] as String,
    description: json['description'] as String,
    maxGuests: json['max_guests'] as int,
    startTime: json['start_time'] == null
        ? null
        : DateTime.parse(json['start_time'] as String),
    endTime: json['end_time'] == null
        ? null
        : DateTime.parse(json['end_time'] as String),
  );
}

Map<String, dynamic> _$_$_DinnerRequestToJson(_$_DinnerRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('max_guests', instance.maxGuests);
  writeNotNull('start_time', instance.startTime?.toIso8601String());
  writeNotNull('end_time', instance.endTime?.toIso8601String());
  return val;
}

_$_DinnerRequestList _$_$_DinnerRequestListFromJson(Map<String, dynamic> json) {
  return _$_DinnerRequestList(
    dinnerRequestList: (json['dinner_request_list'] as List)
        ?.map((e) => e == null
            ? null
            : DinnerRequest.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_DinnerRequestListToJson(
    _$_DinnerRequestList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dinner_request_list', instance.dinnerRequestList);
  return val;
}
