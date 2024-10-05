import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = InitialRegisterState;

  const factory RegisterState.loading() = LoadingRegisterState;

  const factory RegisterState.success() = SuccessRegisterState;

  const factory RegisterState.error({required Object exception, required StackTrace stackTrace, required bool shouldPopPage}) = ErrorRegisterState;

  const factory RegisterState.offline({required Function() onTryAgain, required bool shouldPopPage}) = OfflineRegisterState;
}
