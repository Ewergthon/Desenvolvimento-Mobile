import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  @JsonSerializable(explicitToJson: true)
  factory UserDto({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'is_admin') @Default(false) bool isAdmin,
    @JsonKey(name: 'profile_image') @Default('') String profileImage,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'email') @Default('') String email,
  }) = _UserDto;
  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}
