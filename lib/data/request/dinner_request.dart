import 'package:freezed_annotation/freezed_annotation.dart';

part 'dinner_request.freezed.dart';

part 'dinner_request.g.dart';

@freezed
abstract class DinnerRequest with _$DinnerRequest{
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory DinnerRequest(
  {String title, String description, int maxGuests, DateTime startTime, DateTime endTime}
  ) = _DinnerRequest;
  factory DinnerRequest.fromJson(Map<String, dynamic> json) => _$DinnerRequestFromJson(json);
}

@freezed
abstract class DinnerRequestList with _$DinnerRequestList {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory DinnerRequestList({
    @required List<DinnerRequest> dinnerRequestList,
  }) = _DinnerRequestList;

  factory DinnerRequestList.fromJson(Map<String, dynamic> json) => _$DinnerRequestListFromJson(json);
}
