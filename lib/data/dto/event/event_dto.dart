import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unithub/core/utils/timestamp_convert.dart';
import 'package:unithub/data/dto/user/user_dto.dart';

part 'event_dto.freezed.dart';
part 'event_dto.g.dart';

@freezed
class EventDto with _$EventDto {
  @JsonSerializable(explicitToJson: true)
  factory EventDto({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'participants') @Default([]) List<UserDto> participants,
    @JsonKey(name: 'limit') @Default(0) int limit,
    @JsonKey(name: 'cpf') @Default('') String cpf,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'registration') @Default('') String registration,
    @JsonKey(name: 'event_name') @Default('') String eventName,
    @JsonKey(name: 'event_date') @TimestampOrNullConverter() DateTime? eventDate,
    @JsonKey(name: 'event_start_time') @TimestampOrNullConverter() DateTime? eventStartTime,
    @JsonKey(name: 'event_end_time') @TimestampOrNullConverter() DateTime? eventEndTime,
    @JsonKey(name: 'category') @Default('') String category,
    @JsonKey(name: 'local_event') @Default('') String localEvent,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'public') @Default('') String public,
    @JsonKey(name: 'media_event') @Default('') String mediaEvent,
    @JsonKey(name: 'created_at') @TimestampOrNullConverter() DateTime? createdAt,
  }) = _EventDto;

  factory EventDto.fromJson(Map<String, dynamic> json) => _$EventDtoFromJson(json);
}