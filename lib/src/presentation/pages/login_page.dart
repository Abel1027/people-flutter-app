import 'package:flutter/material.dart';

import '../l10n/generated/l10n.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).login),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(S.of(context).email),
          TextFormField(
            initialValue: null,
            onChanged: (value) {},
            autovalidateMode: null,
            validator: null,
          ),
          const SizedBox(height: 32),
          Text(S.of(context).password),
          TextFormField(
            initialValue: null,
            onChanged: (value) {},
            autovalidateMode: null,
            validator: null,
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {},
            child: Text(S.of(context).loginRegister),
          ),
        ],
      ),
    );
  }
}
