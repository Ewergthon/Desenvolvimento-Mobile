
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unithub/data/dto/event/event_dto.dart';
import 'package:unithub/data/repository/event/event_repository.dart';
import 'package:unithub/data/repository/ticket/ticket_repository.dart';
import 'package:unithub/page/tabs/home/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final EventRepository repository;
  final TicketRepository ticketRepository;

  HomeCubit({required this.repository, required this.ticketRepository}) : super(const HomeState.initial());

  void getEvents() async {
    emit(const HomeState.loading());
    try {
      List<EventDto> events = await repository.getEvents();
      emit(HomeState.success(events: events));
    } catch (e, s) {
      emit(HomeState.error(exception: e, stackTrace: s, shouldPopPage: false));
    }
  }

  void bookEvent(String eventId) async {
    emit(const HomeState.bookLoading());
    try {
      await repository.bookEvent(eventId);
      emit(const HomeState.bookSuccess());
    } catch (e, s) {
      emit(HomeState.bookError(exception: e, stackTrace: s));
    }
  }

  Future<void> removeUserFromEvent(String eventId) async {
    emit(const HomeState.bookLoading());
    try {
      await repository.removeUserFromEvent(eventId);
      emit(const HomeState.userRemoved());
    } catch (e, s) {
      emit(HomeState.bookError(exception: e, stackTrace: s));
    }
  }

}
