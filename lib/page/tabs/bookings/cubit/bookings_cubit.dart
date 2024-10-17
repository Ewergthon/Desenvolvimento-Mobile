
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unithub/data/dto/event/event_dto.dart';
import 'package:unithub/data/repository/event/event_repository.dart';
import 'package:unithub/data/repository/ticket/ticket_repository.dart';
import 'package:unithub/page/tabs/bookings/cubit/bookings_state.dart';

class BookingsCubit extends Cubit<BookingsState> {
  final EventRepository repository;
  final TicketRepository ticketRepository;

  BookingsCubit({required this.repository, required this.ticketRepository}) : super(const BookingsState.initial());

  void getUserBookedEvents() async {
    emit(const BookingsState.loading());
    try {
      List<EventDto> bookedEvents = await repository.getUserBookedEvents();
      emit(BookingsState.success(events: bookedEvents));
    } catch (e, s) {
      emit(BookingsState.error(exception: e, stackTrace: s, shouldPopPage: false));
    }
  }
  
  void removeUserFromEvent(String eventId) async {
    emit(const BookingsState.bookLoading());
    try {
      await repository.removeUserFromEvent(eventId);
      emit(const BookingsState.userRemoved());
    } catch (e, s) {
      emit(BookingsState.bookError(exception: e, stackTrace: s));
    }
  }

}
