import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = InitialLoginState;

  const factory LoginState.loading() = LoadingLoginState;

  const factory LoginState.success() = SuccessLoginState;

  const factory LoginState.error({required Object exception, required StackTrace stackTrace, required bool shouldPopPage}) = ErrorLoginState;

  const factory LoginState.offline({required Function() onTryAgain, required bool shouldPopPage}) = OfflineLoginState;
}
