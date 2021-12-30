abstract class LoginFailure {
  const LoginFailure();
  factory LoginFailure.unknownError() = LoginFailureUnknownError;

  void when({
    required void Function(LoginFailureUnknownError) unknownError,
  }) {
    if (this is LoginFailureUnknownError) {
      unknownError.call(this as LoginFailureUnknownError);
    }

    unknownError.call(this as LoginFailureUnknownError);
  }

  R map<R>({
    required R Function(LoginFailureUnknownError) unknownError,
  }) {
    if (this is LoginFailureUnknownError) {
      return unknownError.call(this as LoginFailureUnknownError);
    }

    return unknownError.call(this as LoginFailureUnknownError);
  }

  void maybeWhen({
    void Function(LoginFailureUnknownError)? unknownError,
    required void Function() orElse,
  }) {
    if (this is LoginFailureUnknownError && unknownError != null) {
      unknownError.call(this as LoginFailureUnknownError);
    }

    orElse.call();
  }

  R maybeMap<R>({
    R Function(LoginFailureUnknownError)? unknownError,
    required R Function() orElse,
  }) {
    if (this is LoginFailureUnknownError && unknownError != null) {
      return unknownError.call(this as LoginFailureUnknownError);
    }

    return orElse.call();
  }

  factory LoginFailure.fromString(String value) {
    if (value == 'unknownError') {
      return LoginFailure.unknownError();
    }

    return LoginFailure.unknownError();
  }

  @override
  String toString() {
    if (this is LoginFailureUnknownError) {
      return 'unknownError';
    }

    return 'unknownError';
  }
}

class LoginFailureUnknownError extends LoginFailure {}
