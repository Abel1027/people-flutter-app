abstract class LoginFailure {
  const LoginFailure();
  factory LoginFailure.unknownError() = LoginFailureUnknownError;
  factory LoginFailure.emailAlreadyInUse() = LoginFailureEmailAlreadyInUse;
  factory LoginFailure.invalidEmail() = LoginFailureInvalidEmail;
  factory LoginFailure.operationNotAllowed() = LoginFailureOperationNotAllowed;
  factory LoginFailure.weakPassword() = LoginFailureWeakPassword;

  void when({
    required void Function(LoginFailureUnknownError) unknownError,
    required void Function(LoginFailureEmailAlreadyInUse) emailAlreadyInUse,
    required void Function(LoginFailureInvalidEmail) invalidEmail,
    required void Function(LoginFailureOperationNotAllowed) operationNotAllowed,
    required void Function(LoginFailureWeakPassword) weakPassword,
  }) {
    if (this is LoginFailureUnknownError) {
      unknownError.call(this as LoginFailureUnknownError);
    }

    if (this is LoginFailureEmailAlreadyInUse) {
      emailAlreadyInUse.call(this as LoginFailureEmailAlreadyInUse);
    }

    if (this is LoginFailureInvalidEmail) {
      invalidEmail.call(this as LoginFailureInvalidEmail);
    }

    if (this is LoginFailureOperationNotAllowed) {
      operationNotAllowed.call(this as LoginFailureOperationNotAllowed);
    }

    if (this is LoginFailureWeakPassword) {
      weakPassword.call(this as LoginFailureWeakPassword);
    }

    unknownError.call(this as LoginFailureUnknownError);
  }

  R map<R>({
    required R Function(LoginFailureUnknownError) unknownError,
    required R Function(LoginFailureEmailAlreadyInUse) emailAlreadyInUse,
    required R Function(LoginFailureInvalidEmail) invalidEmail,
    required R Function(LoginFailureOperationNotAllowed) operationNotAllowed,
    required R Function(LoginFailureWeakPassword) weakPassword,
  }) {
    if (this is LoginFailureUnknownError) {
      return unknownError.call(this as LoginFailureUnknownError);
    }

    if (this is LoginFailureEmailAlreadyInUse) {
      return emailAlreadyInUse.call(this as LoginFailureEmailAlreadyInUse);
    }

    if (this is LoginFailureInvalidEmail) {
      return invalidEmail.call(this as LoginFailureInvalidEmail);
    }

    if (this is LoginFailureOperationNotAllowed) {
      return operationNotAllowed.call(this as LoginFailureOperationNotAllowed);
    }

    if (this is LoginFailureWeakPassword) {
      return weakPassword.call(this as LoginFailureWeakPassword);
    }

    return unknownError.call(this as LoginFailureUnknownError);
  }

  void maybeWhen({
    void Function(LoginFailureUnknownError)? unknownError,
    void Function(LoginFailureEmailAlreadyInUse)? emailAlreadyInUse,
    void Function(LoginFailureInvalidEmail)? invalidEmail,
    void Function(LoginFailureOperationNotAllowed)? operationNotAllowed,
    void Function(LoginFailureWeakPassword)? weakPassword,
    required void Function() orElse,
  }) {
    if (this is LoginFailureUnknownError && unknownError != null) {
      unknownError.call(this as LoginFailureUnknownError);
    }

    if (this is LoginFailureEmailAlreadyInUse && emailAlreadyInUse != null) {
      emailAlreadyInUse.call(this as LoginFailureEmailAlreadyInUse);
    }

    if (this is LoginFailureInvalidEmail && invalidEmail != null) {
      invalidEmail.call(this as LoginFailureInvalidEmail);
    }

    if (this is LoginFailureOperationNotAllowed &&
        operationNotAllowed != null) {
      operationNotAllowed.call(this as LoginFailureOperationNotAllowed);
    }

    if (this is LoginFailureWeakPassword && weakPassword != null) {
      weakPassword.call(this as LoginFailureWeakPassword);
    }

    orElse.call();
  }

  R maybeMap<R>({
    R Function(LoginFailureUnknownError)? unknownError,
    R Function(LoginFailureEmailAlreadyInUse)? emailAlreadyInUse,
    R Function(LoginFailureInvalidEmail)? invalidEmail,
    R Function(LoginFailureOperationNotAllowed)? operationNotAllowed,
    R Function(LoginFailureWeakPassword)? weakPassword,
    required R Function() orElse,
  }) {
    if (this is LoginFailureUnknownError && unknownError != null) {
      return unknownError.call(this as LoginFailureUnknownError);
    }

    if (this is LoginFailureEmailAlreadyInUse && emailAlreadyInUse != null) {
      return emailAlreadyInUse.call(this as LoginFailureEmailAlreadyInUse);
    }

    if (this is LoginFailureInvalidEmail && invalidEmail != null) {
      return invalidEmail.call(this as LoginFailureInvalidEmail);
    }

    if (this is LoginFailureOperationNotAllowed &&
        operationNotAllowed != null) {
      return operationNotAllowed.call(this as LoginFailureOperationNotAllowed);
    }

    if (this is LoginFailureWeakPassword && weakPassword != null) {
      return weakPassword.call(this as LoginFailureWeakPassword);
    }

    return orElse.call();
  }

  factory LoginFailure.fromString(String value) {
    if (value == 'unknownError') {
      return LoginFailure.unknownError();
    }

    if (value == 'emailAlreadyInUse') {
      return LoginFailure.emailAlreadyInUse();
    }

    if (value == 'invalidEmail') {
      return LoginFailure.invalidEmail();
    }

    if (value == 'operationNotAllowed') {
      return LoginFailure.operationNotAllowed();
    }

    if (value == 'weakPassword') {
      return LoginFailure.weakPassword();
    }

    return LoginFailure.unknownError();
  }

  @override
  String toString() {
    if (this is LoginFailureUnknownError) {
      return 'unknownError';
    }

    if (this is LoginFailureEmailAlreadyInUse) {
      return 'emailAlreadyInUse';
    }

    if (this is LoginFailureInvalidEmail) {
      return 'invalidEmail';
    }

    if (this is LoginFailureOperationNotAllowed) {
      return 'operationNotAllowed';
    }

    if (this is LoginFailureWeakPassword) {
      return 'weakPassword';
    }

    return 'unknownError';
  }
}

class LoginFailureUnknownError extends LoginFailure {}

class LoginFailureEmailAlreadyInUse extends LoginFailure {}

class LoginFailureInvalidEmail extends LoginFailure {}

class LoginFailureOperationNotAllowed extends LoginFailure {}

class LoginFailureWeakPassword extends LoginFailure {}
