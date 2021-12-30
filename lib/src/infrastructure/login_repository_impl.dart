import 'package:firebase_auth/firebase_auth.dart';

import '../domain/login_repository.dart';
import '../domain/result_or.dart';
import '../domain/login_failure.dart';
import '../domain/email/email.dart';
import '../domain/password/password.dart';

class LoginRepositoryImpl extends LoginRepository {
  LoginRepositoryImpl(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  @override
  Future<ResultOr<LoginFailure>> login({
    required Email email,
    required Password password,
  }) async {
    try {
      _firebaseAuth.createUserWithEmailAndPassword(
        email: email.getOrCrash(),
        password: password.getOrCrash(),
      );

      return ResultOr.success();
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          return ResultOr.failure(LoginFailure.unknownError());
        case 'invalid-email':
          return ResultOr.failure(LoginFailure.unknownError());
        case 'operation-not-allowed':
          return ResultOr.failure(LoginFailure.unknownError());
        case 'weak-password':
          return ResultOr.failure(LoginFailure.unknownError());
        default:
          return ResultOr.failure(LoginFailure.unknownError());
      }
    } catch (_, __) {
      return ResultOr.failure(LoginFailure.unknownError());
    }
  }
}
