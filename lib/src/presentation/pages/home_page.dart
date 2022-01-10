import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_cubit.dart';
import '../l10n/generated/l10n.dart';
import '../custom_router.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _langCode = Localizations.localeOf(context).languageCode;

    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.user == null) {
          CustomRouter.of(context).replace(
            const LoginPage(),
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).hello),
          actions: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(_langCode.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
