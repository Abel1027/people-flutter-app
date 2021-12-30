import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/login_repository.dart';
import '../../domain/email/email.dart';
import '../../domain/login_failure.dart';
import '../../domain/password/password.dart';
import '../../domain/result_or.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepository) : super(LoginState.initial());

  final LoginRepository _loginRepository;

  void onEmailChanged(String email) {
    final newState = state.copyWith(
      email: Email(email),
    );

    emit(newState);
  }

  void onPasswordChanged(String password) {
    final newState = state.copyWith(
      password: Password(password),
    );

    emit(newState);
  }

  Future<void> login() async {
    if (!state.loginOrFailure.isNone) {
      return;
    }

    final loadingState = state.copyWith(
      loginOrFailure: ResultOr.loading(),
    );

    emit(loadingState);

    final loginOrFailureResponse = await _loginRepository.login(
      email: state.email,
      password: state.password,
    );

    final newState = state.copyWith(
      loginOrFailure: loginOrFailureResponse,
    );

    emit(newState);

    final cleanState = state.copyWith(
      loginOrFailure: ResultOr.none(),
    );

    emit(cleanState);
  }
}
