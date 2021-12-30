import 'result_or.dart';
import 'login_failure.dart';
import 'email/email.dart';
import 'password/password.dart';

abstract class LoginRepository {
  Future<ResultOr<LoginFailure>> login({
    required Email email,
    required Password password,
  });
}
