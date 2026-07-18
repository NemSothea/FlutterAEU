import 'package:flutter/material.dart';

/// Week 2 (E02.1): the screen onboarding routes to once a user finishes it.
///
/// A [StatelessWidget] placeholder — the real log list arrives in a later
/// week. For now it only proves navigation works end to end.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('FieldLog')),
      body: Center(
        child: Text(
          'You\'re in! Your log will live here.',
          style: theme.textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
