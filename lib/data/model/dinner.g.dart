// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dinner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Dinner _$_$_DinnerFromJson(Map<String, dynamic> json) {
  return _$_Dinner(
    json['title'] as String,
    json['description'] as String,
    json['max_guests'] as int,
    json['start_time'] == null
        ? null
        : DateTime.parse(json['start_time'] as String),
    json['end_time'] == null
        ? null
        : DateTime.parse(json['end_time'] as String),
    json['user_id'] as String,
    json['id'] as int,
  );
}

Map<String, dynamic> _$_$_DinnerToJson(_$_Dinner instance) {
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
  writeNotNull('user_id', instance.userId);
  writeNotNull('id', instance.id);
  return val;
}

_$_DinnerList _$_$_DinnerListFromJson(Map<String, dynamic> json) {
  return _$_DinnerList(
    dinnerList: (json['dinner_list'] as List)
        ?.map((e) =>
            e == null ? null : Dinner.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_DinnerListToJson(_$_DinnerList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dinner_list', instance.dinnerList);
  return val;
}
