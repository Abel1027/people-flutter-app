import 'result_or.dart';
import 'register_failure.dart';
import 'login_failure.dart';
import 'email/email.dart';
import 'password/password.dart';

abstract class LoginRepository {
  Future<ResultOr<RegisterFailure>> login({
    required Email email,
    required Password password,
  });
}
