import 'package:flutter/material.dart';

import 'routing/app_router.dart';

/// The root widget of FieldLog.
///
/// Holds app-wide configuration ONLY: title, theme, and routing. No business
/// logic lives here — that belongs in feature folders under
/// `lib/src/features/<feature>/`.
///
/// Week 2 (E02.1): navigation is handled by go_router — see routing/app_router.dart.
class FieldLogApp extends StatelessWidget {
  const FieldLogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'FieldLog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0F766E), // AEU teal seed
        ),
      ),
      routerConfig: appRouter,
    );
  }
}
