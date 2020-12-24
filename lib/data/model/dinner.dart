import 'package:freezed_annotation/freezed_annotation.dart';

part 'dinner.freezed.dart';

part 'dinner.g.dart';

@freezed
abstract class Dinner with _$Dinner{
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory Dinner(
    String title, String description, int maxGuests, DateTime startTime, DateTime endTime, int userId, int id,
  ) = _Dinner;
  factory Dinner.fromJson(Map<String, dynamic> json) => _$DinnerFromJson(json);
}

@freezed
abstract class DinnerList with _$DinnerList {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory DinnerList({
    @required List<Dinner> dinnerList,
  }) = _DinnerList;

  factory DinnerList.fromJson(Map<String, dynamic> json) => _$DinnerListFromJson(json);
}
