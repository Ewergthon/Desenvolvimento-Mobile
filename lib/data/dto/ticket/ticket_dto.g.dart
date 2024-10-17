// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketDtoImpl _$$TicketDtoImplFromJson(Map<String, dynamic> json) =>
    _$TicketDtoImpl(
      uid: json['uid'] as String? ?? '',
      eventId: json['event_id'] as String? ?? '',
      status: json['status'] as String? ?? '',
      code: json['code'] as String? ?? '',
      secret: json['secret'] as String? ?? '',
      expireTime:
          const TimestampOrNullConverter().fromJson(json['expire_time']),
    );

Map<String, dynamic> _$$TicketDtoImplToJson(_$TicketDtoImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'event_id': instance.eventId,
      'status': instance.status,
      'code': instance.code,
      'secret': instance.secret,
      'expire_time':
          const TimestampOrNullConverter().toJson(instance.expireTime),
    };
