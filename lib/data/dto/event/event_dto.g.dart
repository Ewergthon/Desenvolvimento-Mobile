// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventDtoImpl _$$EventDtoImplFromJson(Map<String, dynamic> json) =>
    _$EventDtoImpl(
      id: json['id'] as String? ?? '',
      participants: (json['participants'] as List<dynamic>?)
              ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      limit: (json['limit'] as num?)?.toInt() ?? 0,
      cpf: json['cpf'] as String? ?? '',
      name: json['name'] as String? ?? '',
      registration: json['registration'] as String? ?? '',
      eventName: json['event_name'] as String? ?? '',
      eventDate: const TimestampOrNullConverter().fromJson(json['event_date']),
      eventStartTime:
          const TimestampOrNullConverter().fromJson(json['event_start_time']),
      eventEndTime:
          const TimestampOrNullConverter().fromJson(json['event_end_time']),
      category: json['category'] as String? ?? '',
      localEvent: json['local_event'] as String? ?? '',
      description: json['description'] as String? ?? '',
      public: json['public'] as String? ?? '',
      mediaEvent: json['media_event'] as String? ?? '',
      createdAt: const TimestampOrNullConverter().fromJson(json['created_at']),
    );

Map<String, dynamic> _$$EventDtoImplToJson(_$EventDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'participants': instance.participants.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
      'cpf': instance.cpf,
      'name': instance.name,
      'registration': instance.registration,
      'event_name': instance.eventName,
      'event_date': const TimestampOrNullConverter().toJson(instance.eventDate),
      'event_start_time':
          const TimestampOrNullConverter().toJson(instance.eventStartTime),
      'event_end_time':
          const TimestampOrNullConverter().toJson(instance.eventEndTime),
      'category': instance.category,
      'local_event': instance.localEvent,
      'description': instance.description,
      'public': instance.public,
      'media_event': instance.mediaEvent,
      'created_at': const TimestampOrNullConverter().toJson(instance.createdAt),
    };
