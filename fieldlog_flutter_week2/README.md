# FieldLog (Flutter) — Week 2 Sample (E02.1)

The capstone app for **Cross-Platform Mobile Application Development**
Master's in IT Engineering · Asia Euro University
Lecturer: **Mr. Sok Pongsametrey** · metreysk@gmail.com · https://pongsametrey.com

## What changed in Week 2

This branch builds on the Week 1 skeleton with three new concepts:

- **`go_router`** for declarative navigation (`Navigator.push` is banned)
- A second route: `/profile/:name` consumed via a path parameter
- **Material 3** theming with `ColorScheme.fromSeed`, light + dark variants
- The first proper use of `StatefulWidget` — limited to controller lifecycle

```
fieldlog_flutter/
├── pubspec.yaml                  # + go_router: ^14.6.2
├── lib/
│   ├── main.dart                 # unchanged: runApp() only
│   └── src/
│       ├── app.dart              # now MaterialApp.router + M3 theme
│       ├── router/
│       │   └── app_router.dart   # NEW: declarative go_router config
│       └── features/
│           ├── onboarding/
│           │   └── presentation/
│           │       └── onboarding_screen.dart   # + TextField + nav
│           └── profile/
│               └── presentation/
│                   └── profile_screen.dart      # NEW: route /profile/:name
└── test/
    └── widget_test.dart          # 3 tests including a navigation test
```

## Quick start

```bash
git clone <repo-url> fieldlog_flutter
cd fieldlog_flutter
flutter create . --project-name fieldlog_flutter --platforms=android
flutter pub get
flutter run
```

## Run the tests

```bash
flutter test
```

All three tests pass: initial render, empty-input guidance, and the full navigation flow to the profile route.

## AI Notes

This Week 2 update was paired with an AI assistant for: scaffolding the `GoRouter` configuration, suggesting the `path: '/profile/:name'` parameter syntax, and double-checking M3 `ColorScheme.fromSeed` usage. What AI got wrong on the first pass: it suggested `GoRouter` with the `routerConfig` *and* an old `routes` builder pattern simultaneously. Verified against the [go_router README](https://pub.dev/packages/go_router) before committing.
