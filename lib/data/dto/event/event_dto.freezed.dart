// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventDto _$EventDtoFromJson(Map<String, dynamic> json) {
  return _EventDto.fromJson(json);
}

/// @nodoc
mixin _$EventDto {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'participants')
  List<UserDto> get participants => throw _privateConstructorUsedError;
  @JsonKey(name: 'limit')
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: 'cpf')
  String get cpf => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'registration')
  String get registration => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_name')
  String get eventName => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_date')
  @TimestampOrNullConverter()
  DateTime? get eventDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_start_time')
  @TimestampOrNullConverter()
  DateTime? get eventStartTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_end_time')
  @TimestampOrNullConverter()
  DateTime? get eventEndTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'local_event')
  String get localEvent => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'public')
  String get public => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_event')
  String get mediaEvent => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @TimestampOrNullConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDtoCopyWith<EventDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDtoCopyWith<$Res> {
  factory $EventDtoCopyWith(EventDto value, $Res Function(EventDto) then) =
      _$EventDtoCopyWithImpl<$Res, EventDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'participants') List<UserDto> participants,
      @JsonKey(name: 'limit') int limit,
      @JsonKey(name: 'cpf') String cpf,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'registration') String registration,
      @JsonKey(name: 'event_name') String eventName,
      @JsonKey(name: 'event_date')
      @TimestampOrNullConverter()
      DateTime? eventDate,
      @JsonKey(name: 'event_start_time')
      @TimestampOrNullConverter()
      DateTime? eventStartTime,
      @JsonKey(name: 'event_end_time')
      @TimestampOrNullConverter()
      DateTime? eventEndTime,
      @JsonKey(name: 'category') String category,
      @JsonKey(name: 'local_event') String localEvent,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'public') String public,
      @JsonKey(name: 'media_event') String mediaEvent,
      @JsonKey(name: 'created_at')
      @TimestampOrNullConverter()
      DateTime? createdAt});
}

/// @nodoc
class _$EventDtoCopyWithImpl<$Res, $Val extends EventDto>
    implements $EventDtoCopyWith<$Res> {
  _$EventDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? participants = null,
    Object? limit = null,
    Object? cpf = null,
    Object? name = null,
    Object? registration = null,
    Object? eventName = null,
    Object? eventDate = freezed,
    Object? eventStartTime = freezed,
    Object? eventEndTime = freezed,
    Object? category = null,
    Object? localEvent = null,
    Object? description = null,
    Object? public = null,
    Object? mediaEvent = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<UserDto>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      registration: null == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventDate: freezed == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      eventStartTime: freezed == eventStartTime
          ? _value.eventStartTime
          : eventStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      eventEndTime: freezed == eventEndTime
          ? _value.eventEndTime
          : eventEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      localEvent: null == localEvent
          ? _value.localEvent
          : localEvent // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      public: null == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as String,
      mediaEvent: null == mediaEvent
          ? _value.mediaEvent
          : mediaEvent // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventDtoImplCopyWith<$Res>
    implements $EventDtoCopyWith<$Res> {
  factory _$$EventDtoImplCopyWith(
          _$EventDtoImpl value, $Res Function(_$EventDtoImpl) then) =
      __$$EventDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'participants') List<UserDto> participants,
      @JsonKey(name: 'limit') int limit,
      @JsonKey(name: 'cpf') String cpf,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'registration') String registration,
      @JsonKey(name: 'event_name') String eventName,
      @JsonKey(name: 'event_date')
      @TimestampOrNullConverter()
      DateTime? eventDate,
      @JsonKey(name: 'event_start_time')
      @TimestampOrNullConverter()
      DateTime? eventStartTime,
      @JsonKey(name: 'event_end_time')
      @TimestampOrNullConverter()
      DateTime? eventEndTime,
      @JsonKey(name: 'category') String category,
      @JsonKey(name: 'local_event') String localEvent,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'public') String public,
      @JsonKey(name: 'media_event') String mediaEvent,
      @JsonKey(name: 'created_at')
      @TimestampOrNullConverter()
      DateTime? createdAt});
}

/// @nodoc
class __$$EventDtoImplCopyWithImpl<$Res>
    extends _$EventDtoCopyWithImpl<$Res, _$EventDtoImpl>
    implements _$$EventDtoImplCopyWith<$Res> {
  __$$EventDtoImplCopyWithImpl(
      _$EventDtoImpl _value, $Res Function(_$EventDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? participants = null,
    Object? limit = null,
    Object? cpf = null,
    Object? name = null,
    Object? registration = null,
    Object? eventName = null,
    Object? eventDate = freezed,
    Object? eventStartTime = freezed,
    Object? eventEndTime = freezed,
    Object? category = null,
    Object? localEvent = null,
    Object? description = null,
    Object? public = null,
    Object? mediaEvent = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$EventDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<UserDto>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      registration: null == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventDate: freezed == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      eventStartTime: freezed == eventStartTime
          ? _value.eventStartTime
          : eventStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      eventEndTime: freezed == eventEndTime
          ? _value.eventEndTime
          : eventEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      localEvent: null == localEvent
          ? _value.localEvent
          : localEvent // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      public: null == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as String,
      mediaEvent: null == mediaEvent
          ? _value.mediaEvent
          : mediaEvent // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$EventDtoImpl implements _EventDto {
  _$EventDtoImpl(
      {@JsonKey(name: 'id') this.id = '',
      @JsonKey(name: 'participants')
      final List<UserDto> participants = const [],
      @JsonKey(name: 'limit') this.limit = 0,
      @JsonKey(name: 'cpf') this.cpf = '',
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'registration') this.registration = '',
      @JsonKey(name: 'event_name') this.eventName = '',
      @JsonKey(name: 'event_date') @TimestampOrNullConverter() this.eventDate,
      @JsonKey(name: 'event_start_time')
      @TimestampOrNullConverter()
      this.eventStartTime,
      @JsonKey(name: 'event_end_time')
      @TimestampOrNullConverter()
      this.eventEndTime,
      @JsonKey(name: 'category') this.category = '',
      @JsonKey(name: 'local_event') this.localEvent = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'public') this.public = '',
      @JsonKey(name: 'media_event') this.mediaEvent = '',
      @JsonKey(name: 'created_at') @TimestampOrNullConverter() this.createdAt})
      : _participants = participants;

  factory _$EventDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  final List<UserDto> _participants;
  @override
  @JsonKey(name: 'participants')
  List<UserDto> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  @JsonKey(name: 'limit')
  final int limit;
  @override
  @JsonKey(name: 'cpf')
  final String cpf;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'registration')
  final String registration;
  @override
  @JsonKey(name: 'event_name')
  final String eventName;
  @override
  @JsonKey(name: 'event_date')
  @TimestampOrNullConverter()
  final DateTime? eventDate;
  @override
  @JsonKey(name: 'event_start_time')
  @TimestampOrNullConverter()
  final DateTime? eventStartTime;
  @override
  @JsonKey(name: 'event_end_time')
  @TimestampOrNullConverter()
  final DateTime? eventEndTime;
  @override
  @JsonKey(name: 'category')
  final String category;
  @override
  @JsonKey(name: 'local_event')
  final String localEvent;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'public')
  final String public;
  @override
  @JsonKey(name: 'media_event')
  final String mediaEvent;
  @override
  @JsonKey(name: 'created_at')
  @TimestampOrNullConverter()
  final DateTime? createdAt;

  @override
  String toString() {
    return 'EventDto(id: $id, participants: $participants, limit: $limit, cpf: $cpf, name: $name, registration: $registration, eventName: $eventName, eventDate: $eventDate, eventStartTime: $eventStartTime, eventEndTime: $eventEndTime, category: $category, localEvent: $localEvent, description: $description, public: $public, mediaEvent: $mediaEvent, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.registration, registration) ||
                other.registration == registration) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate) &&
            (identical(other.eventStartTime, eventStartTime) ||
                other.eventStartTime == eventStartTime) &&
            (identical(other.eventEndTime, eventEndTime) ||
                other.eventEndTime == eventEndTime) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.localEvent, localEvent) ||
                other.localEvent == localEvent) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.public, public) || other.public == public) &&
            (identical(other.mediaEvent, mediaEvent) ||
                other.mediaEvent == mediaEvent) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_participants),
      limit,
      cpf,
      name,
      registration,
      eventName,
      eventDate,
      eventStartTime,
      eventEndTime,
      category,
      localEvent,
      description,
      public,
      mediaEvent,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventDtoImplCopyWith<_$EventDtoImpl> get copyWith =>
      __$$EventDtoImplCopyWithImpl<_$EventDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventDtoImplToJson(
      this,
    );
  }
}

abstract class _EventDto implements EventDto {
  factory _EventDto(
      {@JsonKey(name: 'id') final String id,
      @JsonKey(name: 'participants') final List<UserDto> participants,
      @JsonKey(name: 'limit') final int limit,
      @JsonKey(name: 'cpf') final String cpf,
      @JsonKey(name: 'name') final String name,
      @JsonKey(name: 'registration') final String registration,
      @JsonKey(name: 'event_name') final String eventName,
      @JsonKey(name: 'event_date')
      @TimestampOrNullConverter()
      final DateTime? eventDate,
      @JsonKey(name: 'event_start_time')
      @TimestampOrNullConverter()
      final DateTime? eventStartTime,
      @JsonKey(name: 'event_end_time')
      @TimestampOrNullConverter()
      final DateTime? eventEndTime,
      @JsonKey(name: 'category') final String category,
      @JsonKey(name: 'local_event') final String localEvent,
      @JsonKey(name: 'description') final String description,
      @JsonKey(name: 'public') final String public,
      @JsonKey(name: 'media_event') final String mediaEvent,
      @JsonKey(name: 'created_at')
      @TimestampOrNullConverter()
      final DateTime? createdAt}) = _$EventDtoImpl;

  factory _EventDto.fromJson(Map<String, dynamic> json) =
      _$EventDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'participants')
  List<UserDto> get participants;
  @override
  @JsonKey(name: 'limit')
  int get limit;
  @override
  @JsonKey(name: 'cpf')
  String get cpf;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'registration')
  String get registration;
  @override
  @JsonKey(name: 'event_name')
  String get eventName;
  @override
  @JsonKey(name: 'event_date')
  @TimestampOrNullConverter()
  DateTime? get eventDate;
  @override
  @JsonKey(name: 'event_start_time')
  @TimestampOrNullConverter()
  DateTime? get eventStartTime;
  @override
  @JsonKey(name: 'event_end_time')
  @TimestampOrNullConverter()
  DateTime? get eventEndTime;
  @override
  @JsonKey(name: 'category')
  String get category;
  @override
  @JsonKey(name: 'local_event')
  String get localEvent;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'public')
  String get public;
  @override
  @JsonKey(name: 'media_event')
  String get mediaEvent;
  @override
  @JsonKey(name: 'created_at')
  @TimestampOrNullConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$EventDtoImplCopyWith<_$EventDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
