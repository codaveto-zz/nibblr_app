// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'dinner_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DinnerRequest _$DinnerRequestFromJson(Map<String, dynamic> json) {
  return _DinnerRequest.fromJson(json);
}

/// @nodoc
class _$DinnerRequestTearOff {
  const _$DinnerRequestTearOff();

// ignore: unused_element
  _DinnerRequest call(
      {String title,
      String description,
      int maxGuests,
      DateTime startTime,
      DateTime endTime}) {
    return _DinnerRequest(
      title: title,
      description: description,
      maxGuests: maxGuests,
      startTime: startTime,
      endTime: endTime,
    );
  }

// ignore: unused_element
  DinnerRequest fromJson(Map<String, Object> json) {
    return DinnerRequest.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DinnerRequest = _$DinnerRequestTearOff();

/// @nodoc
mixin _$DinnerRequest {
  String get title;
  String get description;
  int get maxGuests;
  DateTime get startTime;
  DateTime get endTime;

  Map<String, dynamic> toJson();
  $DinnerRequestCopyWith<DinnerRequest> get copyWith;
}

/// @nodoc
abstract class $DinnerRequestCopyWith<$Res> {
  factory $DinnerRequestCopyWith(
          DinnerRequest value, $Res Function(DinnerRequest) then) =
      _$DinnerRequestCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String description,
      int maxGuests,
      DateTime startTime,
      DateTime endTime});
}

/// @nodoc
class _$DinnerRequestCopyWithImpl<$Res>
    implements $DinnerRequestCopyWith<$Res> {
  _$DinnerRequestCopyWithImpl(this._value, this._then);

  final DinnerRequest _value;
  // ignore: unused_field
  final $Res Function(DinnerRequest) _then;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object maxGuests = freezed,
    Object startTime = freezed,
    Object endTime = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      maxGuests: maxGuests == freezed ? _value.maxGuests : maxGuests as int,
      startTime:
          startTime == freezed ? _value.startTime : startTime as DateTime,
      endTime: endTime == freezed ? _value.endTime : endTime as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$DinnerRequestCopyWith<$Res>
    implements $DinnerRequestCopyWith<$Res> {
  factory _$DinnerRequestCopyWith(
          _DinnerRequest value, $Res Function(_DinnerRequest) then) =
      __$DinnerRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String description,
      int maxGuests,
      DateTime startTime,
      DateTime endTime});
}

/// @nodoc
class __$DinnerRequestCopyWithImpl<$Res>
    extends _$DinnerRequestCopyWithImpl<$Res>
    implements _$DinnerRequestCopyWith<$Res> {
  __$DinnerRequestCopyWithImpl(
      _DinnerRequest _value, $Res Function(_DinnerRequest) _then)
      : super(_value, (v) => _then(v as _DinnerRequest));

  @override
  _DinnerRequest get _value => super._value as _DinnerRequest;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object maxGuests = freezed,
    Object startTime = freezed,
    Object endTime = freezed,
  }) {
    return _then(_DinnerRequest(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      maxGuests: maxGuests == freezed ? _value.maxGuests : maxGuests as int,
      startTime:
          startTime == freezed ? _value.startTime : startTime as DateTime,
      endTime: endTime == freezed ? _value.endTime : endTime as DateTime,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)

/// @nodoc
class _$_DinnerRequest implements _DinnerRequest {
  const _$_DinnerRequest(
      {this.title,
      this.description,
      this.maxGuests,
      this.startTime,
      this.endTime});

  factory _$_DinnerRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_DinnerRequestFromJson(json);

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
  String toString() {
    return 'DinnerRequest(title: $title, description: $description, maxGuests: $maxGuests, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DinnerRequest &&
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
                const DeepCollectionEquality().equals(other.endTime, endTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(maxGuests) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime);

  @override
  _$DinnerRequestCopyWith<_DinnerRequest> get copyWith =>
      __$DinnerRequestCopyWithImpl<_DinnerRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DinnerRequestToJson(this);
  }
}

abstract class _DinnerRequest implements DinnerRequest {
  const factory _DinnerRequest(
      {String title,
      String description,
      int maxGuests,
      DateTime startTime,
      DateTime endTime}) = _$_DinnerRequest;

  factory _DinnerRequest.fromJson(Map<String, dynamic> json) =
      _$_DinnerRequest.fromJson;

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
  _$DinnerRequestCopyWith<_DinnerRequest> get copyWith;
}

DinnerRequestList _$DinnerRequestListFromJson(Map<String, dynamic> json) {
  return _DinnerRequestList.fromJson(json);
}

/// @nodoc
class _$DinnerRequestListTearOff {
  const _$DinnerRequestListTearOff();

// ignore: unused_element
  _DinnerRequestList call({@required List<DinnerRequest> dinnerRequestList}) {
    return _DinnerRequestList(
      dinnerRequestList: dinnerRequestList,
    );
  }

// ignore: unused_element
  DinnerRequestList fromJson(Map<String, Object> json) {
    return DinnerRequestList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DinnerRequestList = _$DinnerRequestListTearOff();

/// @nodoc
mixin _$DinnerRequestList {
  List<DinnerRequest> get dinnerRequestList;

  Map<String, dynamic> toJson();
  $DinnerRequestListCopyWith<DinnerRequestList> get copyWith;
}

/// @nodoc
abstract class $DinnerRequestListCopyWith<$Res> {
  factory $DinnerRequestListCopyWith(
          DinnerRequestList value, $Res Function(DinnerRequestList) then) =
      _$DinnerRequestListCopyWithImpl<$Res>;
  $Res call({List<DinnerRequest> dinnerRequestList});
}

/// @nodoc
class _$DinnerRequestListCopyWithImpl<$Res>
    implements $DinnerRequestListCopyWith<$Res> {
  _$DinnerRequestListCopyWithImpl(this._value, this._then);

  final DinnerRequestList _value;
  // ignore: unused_field
  final $Res Function(DinnerRequestList) _then;

  @override
  $Res call({
    Object dinnerRequestList = freezed,
  }) {
    return _then(_value.copyWith(
      dinnerRequestList: dinnerRequestList == freezed
          ? _value.dinnerRequestList
          : dinnerRequestList as List<DinnerRequest>,
    ));
  }
}

/// @nodoc
abstract class _$DinnerRequestListCopyWith<$Res>
    implements $DinnerRequestListCopyWith<$Res> {
  factory _$DinnerRequestListCopyWith(
          _DinnerRequestList value, $Res Function(_DinnerRequestList) then) =
      __$DinnerRequestListCopyWithImpl<$Res>;
  @override
  $Res call({List<DinnerRequest> dinnerRequestList});
}

/// @nodoc
class __$DinnerRequestListCopyWithImpl<$Res>
    extends _$DinnerRequestListCopyWithImpl<$Res>
    implements _$DinnerRequestListCopyWith<$Res> {
  __$DinnerRequestListCopyWithImpl(
      _DinnerRequestList _value, $Res Function(_DinnerRequestList) _then)
      : super(_value, (v) => _then(v as _DinnerRequestList));

  @override
  _DinnerRequestList get _value => super._value as _DinnerRequestList;

  @override
  $Res call({
    Object dinnerRequestList = freezed,
  }) {
    return _then(_DinnerRequestList(
      dinnerRequestList: dinnerRequestList == freezed
          ? _value.dinnerRequestList
          : dinnerRequestList as List<DinnerRequest>,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)

/// @nodoc
class _$_DinnerRequestList implements _DinnerRequestList {
  const _$_DinnerRequestList({@required this.dinnerRequestList})
      : assert(dinnerRequestList != null);

  factory _$_DinnerRequestList.fromJson(Map<String, dynamic> json) =>
      _$_$_DinnerRequestListFromJson(json);

  @override
  final List<DinnerRequest> dinnerRequestList;

  @override
  String toString() {
    return 'DinnerRequestList(dinnerRequestList: $dinnerRequestList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DinnerRequestList &&
            (identical(other.dinnerRequestList, dinnerRequestList) ||
                const DeepCollectionEquality()
                    .equals(other.dinnerRequestList, dinnerRequestList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dinnerRequestList);

  @override
  _$DinnerRequestListCopyWith<_DinnerRequestList> get copyWith =>
      __$DinnerRequestListCopyWithImpl<_DinnerRequestList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DinnerRequestListToJson(this);
  }
}

abstract class _DinnerRequestList implements DinnerRequestList {
  const factory _DinnerRequestList(
      {@required List<DinnerRequest> dinnerRequestList}) = _$_DinnerRequestList;

  factory _DinnerRequestList.fromJson(Map<String, dynamic> json) =
      _$_DinnerRequestList.fromJson;

  @override
  List<DinnerRequest> get dinnerRequestList;
  @override
  _$DinnerRequestListCopyWith<_DinnerRequestList> get copyWith;
}
