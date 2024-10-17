import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unithub/data/dto/event/event_dto.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = InitialHomeState;

  const factory HomeState.loading() = LoadingHomeState
  ;
  const factory HomeState.empty() = EmptyHomeState;

  const factory HomeState.userRemoved() = UserRemovedHomeState;

  const factory HomeState.bookSuccess() = BookSuccessState;
  
  const factory HomeState.bookLoading() = BookLoadingState;

  const factory HomeState.bookError({required Object exception, required StackTrace stackTrace}) = BookErrorState;

  const factory HomeState.success({required List<EventDto>? events}) = SuccessHomeState;

  const factory HomeState.error({required Object exception, required StackTrace stackTrace, required bool shouldPopPage}) = ErrorHomeState;

  const factory HomeState.offline({required Function() onTryAgain, required bool shouldPopPage}) = OfflineHomeState;
}
