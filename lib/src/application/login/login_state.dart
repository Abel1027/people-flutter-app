part of 'login_cubit.dart';

class LoginState {
  LoginState({
    required this.email,
    required this.password,
    required this.loginOrFailure,
    required this.showError,
  });

  factory LoginState.initial() => LoginState(
        email: Email(''),
        password: Password(''),
        loginOrFailure: ResultOr.none(),
        showError: false,
      );

  bool get isValid => email.isValid() && password.isValid();

  final Email email;
  final Password password;
  final ResultOr<LoginFailure> loginOrFailure;
  final bool showError;

  LoginState copyWith({
    Email? email,
    Password? password,
    ResultOr<LoginFailure>? loginOrFailure,
    bool? showError,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      loginOrFailure: loginOrFailure ?? this.loginOrFailure,
      showError: showError ?? this.showError,
    );
  }

  @override
  String toString() {
    return 'LoginState(email: $email, password: $password, loginOrFailure: $loginOrFailure, showError: $showError)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginState &&
        other.email == email &&
        other.password == password &&
        other.loginOrFailure == loginOrFailure &&
        other.showError == showError;
  }

  @override
  int get hashCode {
    return email.hashCode ^
        password.hashCode ^
        loginOrFailure.hashCode ^
        showError.hashCode;
  }
}
