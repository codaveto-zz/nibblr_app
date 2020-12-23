// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'dinner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Dinner _$DinnerFromJson(Map<String, dynamic> json) {
  return _Dinner.fromJson(json);
}

/// @nodoc
class _$DinnerTearOff {
  const _$DinnerTearOff();

// ignore: unused_element
  _Dinner call(String title, String description, int maxGuests,
      DateTime startTime, DateTime endTime, String userId, int id) {
    return _Dinner(
      title,
      description,
      maxGuests,
      startTime,
      endTime,
      userId,
      id,
    );
  }

// ignore: unused_element
  Dinner fromJson(Map<String, Object> json) {
    return Dinner.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Dinner = _$DinnerTearOff();

/// @nodoc
mixin _$Dinner {
  String get title;
  String get description;
  int get maxGuests;
  DateTime get startTime;
  DateTime get endTime;
  String get userId;
  int get id;

  Map<String, dynamic> toJson();
  $DinnerCopyWith<Dinner> get copyWith;
}

/// @nodoc
abstract class $DinnerCopyWith<$Res> {
  factory $DinnerCopyWith(Dinner value, $Res Function(Dinner) then) =
      _$DinnerCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String description,
      int maxGuests,
      DateTime startTime,
      DateTime endTime,
      String userId,
      int id});
}

/// @nodoc
class _$DinnerCopyWithImpl<$Res> implements $DinnerCopyWith<$Res> {
  _$DinnerCopyWithImpl(this._value, this._then);

  final Dinner _value;
  // ignore: unused_field
  final $Res Function(Dinner) _then;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object maxGuests = freezed,
    Object startTime = freezed,
    Object endTime = freezed,
    Object userId = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      maxGuests: maxGuests == freezed ? _value.maxGuests : maxGuests as int,
      startTime:
          startTime == freezed ? _value.startTime : startTime as DateTime,
      endTime: endTime == freezed ? _value.endTime : endTime as DateTime,
      userId: userId == freezed ? _value.userId : userId as String,
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
abstract class _$DinnerCopyWith<$Res> implements $DinnerCopyWith<$Res> {
  factory _$DinnerCopyWith(_Dinner value, $Res Function(_Dinner) then) =
      __$DinnerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String description,
      int maxGuests,
      DateTime startTime,
      DateTime endTime,
      String userId,
      int id});
}

/// @nodoc
class __$DinnerCopyWithImpl<$Res> extends _$DinnerCopyWithImpl<$Res>
    implements _$DinnerCopyWith<$Res> {
  __$DinnerCopyWithImpl(_Dinner _value, $Res Function(_Dinner) _then)
      : super(_value, (v) => _then(v as _Dinner));

  @override
  _Dinner get _value => super._value as _Dinner;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object maxGuests = freezed,
    Object startTime = freezed,
    Object endTime = freezed,
    Object userId = freezed,
    Object id = freezed,
  }) {
    return _then(_Dinner(
      title == freezed ? _value.title : title as String,
      description == freezed ? _value.description : description as String,
      maxGuests == freezed ? _value.maxGuests : maxGuests as int,
      startTime == freezed ? _value.startTime : startTime as DateTime,
      endTime == freezed ? _value.endTime : endTime as DateTime,
      userId == freezed ? _value.userId : userId as String,
      id == freezed ? _value.id : id as int,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)

/// @nodoc
class _$_Dinner implements _Dinner {
  const _$_Dinner(this.title, this.description, this.maxGuests, this.startTime,
      this.endTime, this.userId, this.id)
      : assert(title != null),
        assert(description != null),
        assert(maxGuests != null),
        assert(startTime != null),
        assert(endTime != null),
        assert(userId != null),
        assert(id != null);

  factory _$_Dinner.fromJson(Map<String, dynamic> json) =>
      _$_$_DinnerFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final int maxGuests;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final String userId;
  @override
  final int id;

  @override
  String toString() {
    return 'Dinner(title: $title, description: $description, maxGuests: $maxGuests, startTime: $startTime, endTime: $endTime, userId: $userId, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Dinner &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.maxGuests, maxGuests) ||
                const DeepCollectionEquality()
                    .equals(other.maxGuests, maxGuests)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(maxGuests) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(id);

  @override
  _$DinnerCopyWith<_Dinner> get copyWith =>
      __$DinnerCopyWithImpl<_Dinner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DinnerToJson(this);
  }
}

abstract class _Dinner implements Dinner {
  const factory _Dinner(String title, String description, int maxGuests,
      DateTime startTime, DateTime endTime, String userId, int id) = _$_Dinner;

  factory _Dinner.fromJson(Map<String, dynamic> json) = _$_Dinner.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  int get maxGuests;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  String get userId;
  @override
  int get id;
  @override
  _$DinnerCopyWith<_Dinner> get copyWith;
}

DinnerList _$DinnerListFromJson(Map<String, dynamic> json) {
  return _DinnerList.fromJson(json);
}

/// @nodoc
class _$DinnerListTearOff {
  const _$DinnerListTearOff();

// ignore: unused_element
  _DinnerList call({@required List<Dinner> dinnerList}) {
    return _DinnerList(
      dinnerList: dinnerList,
    );
  }

// ignore: unused_element
  DinnerList fromJson(Map<String, Object> json) {
    return DinnerList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DinnerList = _$DinnerListTearOff();

/// @nodoc
mixin _$DinnerList {
  List<Dinner> get dinnerList;

  Map<String, dynamic> toJson();
  $DinnerListCopyWith<DinnerList> get copyWith;
}

/// @nodoc
abstract class $DinnerListCopyWith<$Res> {
  factory $DinnerListCopyWith(
          DinnerList value, $Res Function(DinnerList) then) =
      _$DinnerListCopyWithImpl<$Res>;
  $Res call({List<Dinner> dinnerList});
}

/// @nodoc
class _$DinnerListCopyWithImpl<$Res> implements $DinnerListCopyWith<$Res> {
  _$DinnerListCopyWithImpl(this._value, this._then);

  final DinnerList _value;
  // ignore: unused_field
  final $Res Function(DinnerList) _then;

  @override
  $Res call({
    Object dinnerList = freezed,
  }) {
    return _then(_value.copyWith(
      dinnerList: dinnerList == freezed
          ? _value.dinnerList
          : dinnerList as List<Dinner>,
    ));
  }
}

/// @nodoc
abstract class _$DinnerListCopyWith<$Res> implements $DinnerListCopyWith<$Res> {
  factory _$DinnerListCopyWith(
          _DinnerList value, $Res Function(_DinnerList) then) =
      __$DinnerListCopyWithImpl<$Res>;
  @override
  $Res call({List<Dinner> dinnerList});
}

/// @nodoc
class __$DinnerListCopyWithImpl<$Res> extends _$DinnerListCopyWithImpl<$Res>
    implements _$DinnerListCopyWith<$Res> {
  __$DinnerListCopyWithImpl(
      _DinnerList _value, $Res Function(_DinnerList) _then)
      : super(_value, (v) => _then(v as _DinnerList));

  @override
  _DinnerList get _value => super._value as _DinnerList;

  @override
  $Res call({
    Object dinnerList = freezed,
  }) {
    return _then(_DinnerList(
      dinnerList: dinnerList == freezed
          ? _value.dinnerList
          : dinnerList as List<Dinner>,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)

/// @nodoc
class _$_DinnerList implements _DinnerList {
  const _$_DinnerList({@required this.dinnerList}) : assert(dinnerList != null);

  factory _$_DinnerList.fromJson(Map<String, dynamic> json) =>
      _$_$_DinnerListFromJson(json);

  @override
  final List<Dinner> dinnerList;

  @override
  String toString() {
    return 'DinnerList(dinnerList: $dinnerList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DinnerList &&
            (identical(other.dinnerList, dinnerList) ||
                const DeepCollectionEquality()
                    .equals(other.dinnerList, dinnerList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dinnerList);

  @override
  _$DinnerListCopyWith<_DinnerList> get copyWith =>
      __$DinnerListCopyWithImpl<_DinnerList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DinnerListToJson(this);
  }
}

abstract class _DinnerList implements DinnerList {
  const factory _DinnerList({@required List<Dinner> dinnerList}) =
      _$_DinnerList;

  factory _DinnerList.fromJson(Map<String, dynamic> json) =
      _$_DinnerList.fromJson;

  @override
  List<Dinner> get dinnerList;
  @override
  _$DinnerListCopyWith<_DinnerList> get copyWith;
}
