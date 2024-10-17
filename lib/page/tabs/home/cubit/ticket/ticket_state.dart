import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unithub/data/dto/ticket/ticket_dto.dart';

part 'ticket_state.freezed.dart';

@freezed
class TicketState with _$TicketState {
  const factory TicketState.initial() = InitialTicketState;

  const factory TicketState.loading() = LoadingTicketState;

  const factory TicketState.haveTicket() = HaveTicketState;

  const factory TicketState.empty() = EmptyTicketState;

  const factory TicketState.success() = SuccessTicketState;

  const factory TicketState.ticketLoaded({required TicketDto? ticket}) = LoadedTicketState;

  const factory TicketState.deleted() = DeletedTicketState;

  const factory TicketState.error({required Object exception, required StackTrace stackTrace, required bool shouldPopPage}) = ErrorTicketState;

  const factory TicketState.offline({required Function() onTryAgain, required bool shouldPopPage}) = OfflineTicketState;
}
