
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unithub/data/dto/user/user_dto.dart';
import 'package:unithub/data/repository/user/user_repository.dart';
import 'package:unithub/page/tabs/home/cubit/user/user_state.dart';

class UserCubit extends Cubit<UserState> {
  final UserRepository repository;

  UserCubit({required this.repository}) : super(const UserState.initial());

  void getUser() async {
    emit(const UserState.loading());
    try {
      UserDto user = await repository.getUser();
      emit(UserState.success(user: user));
    } catch (e, s) {
      emit(UserState.error(exception: e, stackTrace: s, shouldPopPage: true));
    }
  }

  void setUser(String? name, String? image) async {
    emit(const UserState.loading());
    try {
      await repository.updateUser();
      emit(const UserState.setSuccess());
    } catch (e, s) {
      emit(UserState.error(exception: e, stackTrace: s, shouldPopPage: true));
    }
  }

  void signOut() async {
    emit(const UserState.loadingSignOut());
    try {
      await repository.signOut();
      emit(const UserState.successSignOut());
    } catch (e) {
      emit(const UserState.errorSignOut());
    }
  }

}
