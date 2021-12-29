import 'package:flutter/material.dart';

import '../l10n/generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _langCode = Localizations.localeOf(context).languageCode;

    return Scaffold(
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
    );
  }
}
