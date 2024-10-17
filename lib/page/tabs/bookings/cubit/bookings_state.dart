import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unithub/data/dto/event/event_dto.dart';

part 'bookings_state.freezed.dart';

@freezed
class BookingsState with _$BookingsState {
  const factory BookingsState.initial() = InitialBookingsState;

  const factory BookingsState.loading() = LoadingBookingsState
  ;
  const factory BookingsState.empty() = EmptyBookingsState;

  const factory BookingsState.userRemoved() = UserRemovedBookingsState;

  const factory BookingsState.bookSuccess() = BookSuccessState;
  
  const factory BookingsState.bookLoading() = BookLoadingState;

  const factory BookingsState.bookError({required Object exception, required StackTrace stackTrace}) = BookErrorState;

  const factory BookingsState.success({required List<EventDto>? events}) = SuccessBookingsState;

  const factory BookingsState.error({required Object exception, required StackTrace stackTrace, required bool shouldPopPage}) = ErrorBookingsState;

  const factory BookingsState.offline({required Function() onTryAgain, required bool shouldPopPage}) = OfflineBookingsState;
}
