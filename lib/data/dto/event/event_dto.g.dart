// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventDtoImpl _$$EventDtoImplFromJson(Map<String, dynamic> json) =>
    _$EventDtoImpl(
      id: json['id'] as String? ?? '',
      cpf: json['cpf'] as String? ?? '',
      name: json['name'] as String? ?? '',
      registration: json['registration'] as String? ?? '',
      eventName: json['event_name'] as String? ?? '',
      eventDate: json['event_date'] as String? ?? '',
      eventStartTime: json['event_start_time'] as String? ?? '',
      eventEndTime: json['event_end_time'] as String? ?? '',
      category: json['category'] as String? ?? '',
      localEvent: json['local_event'] as String? ?? '',
      description: json['description'] as String? ?? '',
      public: json['public'] as String? ?? '',
      mediaEvent: json['media_event'] as String? ?? '',
    );

Map<String, dynamic> _$$EventDtoImplToJson(_$EventDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cpf': instance.cpf,
      'name': instance.name,
      'registration': instance.registration,
      'event_name': instance.eventName,
      'event_date': instance.eventDate,
      'event_start_time': instance.eventStartTime,
      'event_end_time': instance.eventEndTime,
      'category': instance.category,
      'local_event': instance.localEvent,
      'description': instance.description,
      'public': instance.public,
      'media_event': instance.mediaEvent,
    };
