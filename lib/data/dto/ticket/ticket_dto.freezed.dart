// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TicketDto _$TicketDtoFromJson(Map<String, dynamic> json) {
  return _TicketDto.fromJson(json);
}

/// @nodoc
mixin _$TicketDto {
  @JsonKey(name: 'uid')
  String get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_id')
  String get eventId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'secret')
  String get secret => throw _privateConstructorUsedError;
  @JsonKey(name: 'expire_time')
  @TimestampOrNullConverter()
  DateTime? get expireTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketDtoCopyWith<TicketDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketDtoCopyWith<$Res> {
  factory $TicketDtoCopyWith(TicketDto value, $Res Function(TicketDto) then) =
      _$TicketDtoCopyWithImpl<$Res, TicketDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uid') String uid,
      @JsonKey(name: 'event_id') String eventId,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'code') String code,
      @JsonKey(name: 'secret') String secret,
      @JsonKey(name: 'expire_time')
      @TimestampOrNullConverter()
      DateTime? expireTime});
}

/// @nodoc
class _$TicketDtoCopyWithImpl<$Res, $Val extends TicketDto>
    implements $TicketDtoCopyWith<$Res> {
  _$TicketDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? eventId = null,
    Object? status = null,
    Object? code = null,
    Object? secret = null,
    Object? expireTime = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
      expireTime: freezed == expireTime
          ? _value.expireTime
          : expireTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketDtoImplCopyWith<$Res>
    implements $TicketDtoCopyWith<$Res> {
  factory _$$TicketDtoImplCopyWith(
          _$TicketDtoImpl value, $Res Function(_$TicketDtoImpl) then) =
      __$$TicketDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uid') String uid,
      @JsonKey(name: 'event_id') String eventId,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'code') String code,
      @JsonKey(name: 'secret') String secret,
      @JsonKey(name: 'expire_time')
      @TimestampOrNullConverter()
      DateTime? expireTime});
}

/// @nodoc
class __$$TicketDtoImplCopyWithImpl<$Res>
    extends _$TicketDtoCopyWithImpl<$Res, _$TicketDtoImpl>
    implements _$$TicketDtoImplCopyWith<$Res> {
  __$$TicketDtoImplCopyWithImpl(
      _$TicketDtoImpl _value, $Res Function(_$TicketDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? eventId = null,
    Object? status = null,
    Object? code = null,
    Object? secret = null,
    Object? expireTime = freezed,
  }) {
    return _then(_$TicketDtoImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
      expireTime: freezed == expireTime
          ? _value.expireTime
          : expireTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TicketDtoImpl implements _TicketDto {
  _$TicketDtoImpl(
      {@JsonKey(name: 'uid') this.uid = '',
      @JsonKey(name: 'event_id') this.eventId = '',
      @JsonKey(name: 'status') this.status = '',
      @JsonKey(name: 'code') this.code = '',
      @JsonKey(name: 'secret') this.secret = '',
      @JsonKey(name: 'expire_time')
      @TimestampOrNullConverter()
      this.expireTime});

  factory _$TicketDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketDtoImplFromJson(json);

  @override
  @JsonKey(name: 'uid')
  final String uid;
  @override
  @JsonKey(name: 'event_id')
  final String eventId;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'code')
  final String code;
  @override
  @JsonKey(name: 'secret')
  final String secret;
  @override
  @JsonKey(name: 'expire_time')
  @TimestampOrNullConverter()
  final DateTime? expireTime;

  @override
  String toString() {
    return 'TicketDto(uid: $uid, eventId: $eventId, status: $status, code: $code, secret: $secret, expireTime: $expireTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketDtoImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.secret, secret) || other.secret == secret) &&
            (identical(other.expireTime, expireTime) ||
                other.expireTime == expireTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, eventId, status, code, secret, expireTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketDtoImplCopyWith<_$TicketDtoImpl> get copyWith =>
      __$$TicketDtoImplCopyWithImpl<_$TicketDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketDtoImplToJson(
      this,
    );
  }
}

abstract class _TicketDto implements TicketDto {
  factory _TicketDto(
      {@JsonKey(name: 'uid') final String uid,
      @JsonKey(name: 'event_id') final String eventId,
      @JsonKey(name: 'status') final String status,
      @JsonKey(name: 'code') final String code,
      @JsonKey(name: 'secret') final String secret,
      @JsonKey(name: 'expire_time')
      @TimestampOrNullConverter()
      final DateTime? expireTime}) = _$TicketDtoImpl;

  factory _TicketDto.fromJson(Map<String, dynamic> json) =
      _$TicketDtoImpl.fromJson;

  @override
  @JsonKey(name: 'uid')
  String get uid;
  @override
  @JsonKey(name: 'event_id')
  String get eventId;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'code')
  String get code;
  @override
  @JsonKey(name: 'secret')
  String get secret;
  @override
  @JsonKey(name: 'expire_time')
  @TimestampOrNullConverter()
  DateTime? get expireTime;
  @override
  @JsonKey(ignore: true)
  _$$TicketDtoImplCopyWith<_$TicketDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
