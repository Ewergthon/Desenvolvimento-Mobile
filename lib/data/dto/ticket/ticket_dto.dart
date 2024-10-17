import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unithub/core/utils/timestamp_convert.dart';

part 'ticket_dto.freezed.dart';
part 'ticket_dto.g.dart';

@freezed
class TicketDto with _$TicketDto {
  @JsonSerializable(explicitToJson: true)
  factory TicketDto({
    @JsonKey(name: 'uid') @Default('') String uid,
    @JsonKey(name: 'event_id') @Default('') String eventId,
    @JsonKey(name: 'status') @Default('') String status,
    @JsonKey(name: 'code') @Default('') String code,
    @JsonKey(name: 'secret') @Default('') String secret,
    @JsonKey(name: 'expire_time') @TimestampOrNullConverter() DateTime? expireTime,
  }) = _TicketDto;

  factory TicketDto.fromJson(Map<String, dynamic> json) => _$TicketDtoFromJson(json);
}