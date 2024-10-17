
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unithub/data/repository/event/event_repository.dart';
import 'package:unithub/data/repository/ticket/ticket_repository.dart';
import 'package:unithub/page/tabs/home/cubit/ticket/ticket_state.dart';

class TicketCubit extends Cubit<TicketState> {
  final TicketRepository repository;
  final EventRepository eventRepository;

  TicketCubit({required this.repository, required this.eventRepository}) : super(const TicketState.initial());

  bool isUserAlreadyBooked = true;

  Future<void> getIsUserAlreadyBooked(String eventId) async {
    emit(const TicketState.loading());
    isUserAlreadyBooked = await eventRepository.isUserAlreadyBooked(eventId);
    emit(const TicketState.haveTicket());
  }

  void createTicket(String uid, String eventId, DateTime expireTime) async {
    emit(const TicketState.loading());
    try {
      await repository.createTicket(uid, eventId, expireTime).then((_) async {
        await getIsUserAlreadyBooked(eventId);
      });
      emit(const TicketState.success());
      await getIsUserAlreadyBooked(eventId);
    } catch (e, s) {
      emit(TicketState.error(exception: e, stackTrace: s, shouldPopPage: true));
    }
  }

  void deleteTicket(String uid, String eventId) async {
    emit(const TicketState.loading());
    try {
      await repository.deleteTicket(uid, eventId).then((_) async {
        await getIsUserAlreadyBooked(eventId);
      });
      emit(const TicketState.deleted());
    } catch (e, s) {
      emit(TicketState.error(exception: e, stackTrace: s, shouldPopPage: true));
    }
  }

}
