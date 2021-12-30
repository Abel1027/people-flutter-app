import 'package:get_it/get_it.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/login_repository.dart';
import '../../application/login/login_cubit.dart';
import '../login_repository_impl.dart';

final getIt = GetIt.instance;

void getItSetup() {
  // 3RD PARTY LIBRARIES
  getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);

  // REPOSITORIES
  getIt.registerSingleton<LoginRepository>(
    LoginRepositoryImpl(getIt<FirebaseAuth>()),
  );

  // CUBITS
  getIt.registerFactory<LoginCubit>(() => LoginCubit(
        getIt<LoginRepository>(),
      ));
}
