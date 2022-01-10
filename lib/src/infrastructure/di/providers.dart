import 'package:get_it/get_it.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/login_repository.dart';
import '../../domain/auth_repository.dart';
import '../../application/login/login_cubit.dart';
import '../../application/auth/auth_cubit.dart';
import '../../domain/logout_repository.dart';
import '../login_repository_impl.dart';
import '../auth_repository_impl.dart';
import '../logout_repository_impl.dart';

final getIt = GetIt.instance;

void getItSetup() {
  // 3RD PARTY LIBRARIES
  getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);

  // REPOSITORIES
  getIt.registerSingleton<LoginRepository>(
    LoginRepositoryImpl(getIt<FirebaseAuth>()),
  );
  getIt.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(getIt<FirebaseAuth>()),
  );
  getIt.registerSingleton<LogoutRepository>(
    LogoutRepositoryImpl(getIt<FirebaseAuth>()),
  );

  // CUBITS
  getIt.registerFactory<LoginCubit>(() => LoginCubit(
        getIt<LoginRepository>(),
      ));
  getIt.registerSingleton<AuthCubit>(AuthCubit(
    getIt<AuthRepository>(),
  ));
}
