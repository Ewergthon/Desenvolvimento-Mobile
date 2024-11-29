import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unithub/data/dto/user/user_dto.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = InitialUserState;

  const factory UserState.loading() = LoadingUserState;

  const factory UserState.loadingSignOut() = SignOutLoadingUserState;

  const factory UserState.errorSignOut() = SignOutErrprUserState;

  const factory UserState.successSignOut() = SignOutSuccessUserState;

  const factory UserState.setSuccess() = SuccessSetUserState;

  const factory UserState.success({required UserDto user}) = SuccessUserState;

  const factory UserState.error({required Object exception, required StackTrace stackTrace, required bool shouldPopPage}) = ErrorUserState;

  const factory UserState.offline({required Function() onTryAgain, required bool shouldPopPage}) = OfflineUserState;
}
