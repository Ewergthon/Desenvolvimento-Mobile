
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:unithub/data/dto/user/user_dto.dart';

class SharedPreferencesService {
  final SharedPreferences sharedPreferences;

  SharedPreferencesService({required this.sharedPreferences});

  final String _userKey = "user";

  Future<void> saveUser(UserDto user) async {
    final userEncoded = jsonEncode(user.toJson());
    await sharedPreferences.setString(_userKey, userEncoded);
  }

  Future<UserDto?> getUser() async {
    String? userJson = sharedPreferences.getString(_userKey);

    if(userJson != null) {
      return UserDto.fromJson(jsonDecode(userJson));
    } else {
      return null;
    }
  }
}