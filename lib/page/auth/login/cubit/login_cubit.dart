import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:unithub/data/repository/auth/login_repository.dart';
import 'package:unithub/page/auth/login/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository repository;

  LoginCubit({required this.repository}) : super(const LoginState.initial());

  void login({required String email, required String password}) async {
    try {
      emit(const LoginState.loading());
      await repository.login(email: email, password: password);
      emit(const LoginState.success());
    } on FirebaseAuthException catch (exception, stackTrace) {
      String errorMessage = _mapFirebaseAuthException(exception);
      emit(LoginState.error(exception: errorMessage, stackTrace: stackTrace, shouldPopPage: false));
    } catch (exception, stackTrace) {
      emit(LoginState.error(exception: exception.toString(), stackTrace: stackTrace, shouldPopPage: false));
    }
  }

  String _mapFirebaseAuthException(FirebaseAuthException exception) {
    switch (exception.code) {
      case 'user-not-found':
        return 'Usuário não encontrado. Verifique o e-mail e tente novamente.';
      case 'wrong-password':
        return 'Senha incorreta. Verifique a senha e tente novamente.';
      case 'invalid-email':
        return 'O e-mail informado é inválido.';
      case 'user-disabled':
        return 'Esta conta foi desativada.';
      case 'too-many-requests':
        return 'Muitas tentativas de login. Tente novamente mais tarde.';
      case 'network-request-failed':
        return 'Falha de conexão. Verifique sua internet e tente novamente.';
      default:
        return 'E-mail e/ou senha incorreto.';
    }
  }
}
