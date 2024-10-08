import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unithub/data/dto/event/event_dto.dart';
import 'package:unithub/data/repository/event/event_repository.dart';
import 'package:unithub/page/create_event/cubit/create_event_state.dart';

class CreateEventCubit extends Cubit<CreateEventState> {
  final EventRepository repository;

  CreateEventCubit({required this.repository}) : super(const CreateEventState.initial());

  void createEvent(EventDto event, File? file) async {
    emit(const CreateEventState.loading());
    try {
      await repository.createEvent(event, file);
      emit(const CreateEventState.success());
    } catch (exception, stackTrace) {
      emit(CreateEventState.error(exception: exception.toString(), stackTrace: stackTrace, shouldPopPage: false));
    }
  }

}
