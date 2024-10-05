import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unithub/data/repository/auth/register_repository.dart';
import 'package:unithub/page/auth/register/cubit/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepository repository;

  RegisterCubit({required this.repository}) : super(const RegisterState.initial());

  void register({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(const RegisterState.loading());
    try {
      await repository.register(name, email, password);
      emit(const RegisterState.success());
    } catch (exception, stackTrace) {
      if (exception is FirebaseAuthException) {
        switch (exception.code) {
          case 'email-already-in-use':
            emit(RegisterState.error(exception: 'Este e-mail já está em uso.', stackTrace: stackTrace ,shouldPopPage: false));
            break;
          case 'invalid-email':
            emit(RegisterState.error(exception: 'E-mail inválido.', stackTrace: stackTrace ,shouldPopPage: false));
            break;
          case 'operation-not-allowed':
            emit(RegisterState.error(exception: 'Operação não permitida.', stackTrace: stackTrace ,shouldPopPage: false));
            break;
          case 'weak-password':
            emit(RegisterState.error(exception: 'A senha é muito fraca.', stackTrace: stackTrace ,shouldPopPage: false));
            break;
          default:
            emit(RegisterState.error(exception: 'Erro desconhecido. Tente novamente.', stackTrace: stackTrace ,shouldPopPage: false));
            break;
        }
      } else {
        emit(RegisterState.error(exception: 'Erro ao registrar. Tente novamente.', stackTrace: stackTrace ,shouldPopPage: false));
      }
    }
  }
}