import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_event_state.freezed.dart';

@freezed
class CreateEventState with _$CreateEventState {
  const factory CreateEventState.initial() = InitialCreateEventState;

  const factory CreateEventState.loading() = LoadingCreateEventState;

  const factory CreateEventState.success() = SuccessCreateEventState;

  const factory CreateEventState.error({required Object exception, required StackTrace stackTrace, required bool shouldPopPage}) = ErrorCreateEventState;

  const factory CreateEventState.offline({required Function() onTryAgain, required bool shouldPopPage}) = OfflineCreateEventState;
}
