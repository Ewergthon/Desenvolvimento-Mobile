import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_dto.freezed.dart';
part 'event_dto.g.dart';

@freezed
class EventDto with _$EventDto {
  @JsonSerializable(explicitToJson: true)
  factory EventDto({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'cpf') @Default('') String cpf,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'registration') @Default('') String registration,
    @JsonKey(name: 'event_name') @Default('') String eventName,
    @JsonKey(name: 'event_date') @Default('') String eventDate,
    @JsonKey(name: 'event_start_time') @Default('') String eventStartTime,
    @JsonKey(name: 'event_end_time') @Default('') String eventEndTime,
    @JsonKey(name: 'category') @Default('') String category,
    @JsonKey(name: 'local_event') @Default('') String localEvent,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'public') @Default('') String public,
    @JsonKey(name: 'media_event') @Default('') String mediaEvent,
  }) = _EventDto;
  factory EventDto.fromJson(Map<String, dynamic> json) => _$EventDtoFromJson(json);
}
