## 1. Root Folder (Project Main Directory)

When you create a Flutter project, you’ll see something like this:

```
my_flutter_app/
│
├── android/
├── ios/
├── lib/
├── test/
├── web/
├── windows/
├── linux/
├── macos/
│
├── pubspec.yaml
├── pubspec.lock
├── README.md
└── analysis_options.yaml
```

---

## 2. `lib/` (MOST IMPORTANT)

This is where **90% of your work happens**.

```
lib/
│
├── main.dart
├── screens/
│   ├── home_screen.dart
│   └── splash_screen.dart
│
├── widgets/
│   └── custom_button.dart
│
├── models/
│   └── user_model.dart
│
├── services/
│   └── api_service.dart
│
└── utils/
    └── constants.dart
```

### Key Files

* `main.dart` → App entry point
* `screens/` → Full pages (UI screens)
* `widgets/` → Reusable UI components
* `models/` → Data models
* `services/` → API, database, logic
* `utils/` → Helpers, constants, styles

---

## 3. `android/`

* Native Android code (Java/Kotlin)
* Touch **only if**:

  * You need permissions
  * App icon
  * App name
  * Firebase setup

---

## 4. `ios/`

* Native iOS (Swift / Objective-C)
* Used for:

  * App icons
  * Permissions
  * iOS-specific configs

---

## 5. `web/`

* Used when building Flutter **Web apps**
* Contains:

  * `index.html`
  * Web icons & manifest

---

## 6. Desktop Platforms

```
windows/
linux/
macos/
```

Used for **desktop app builds**.
Ignore unless you target desktop.

---

## 7. `test/`

* Unit & widget testing
* Example file:

  ```
  test/widget_test.dart
  ```

---

## 8. `pubspec.yaml` (VERY IMPORTANT)

This file controls **dependencies, assets, fonts**.

Example:

```yaml
dependencies:
  flutter:
    sdk: flutter
  lottie: ^3.1.0

assets:
  - assets/images/
  - assets/animations/
```

If something doesn’t load → **check this file first**.

---

## 9. `pubspec.lock`

* Auto-generated
* Locks dependency versions
* Don’t edit manually

---

## 10. `analysis_options.yaml`

* Lint rules (code quality)
* Safe to ignore as beginner

---

## 11. Recommended Folder Structure (Professional)

```
lib/
│
├── core/
│   ├── theme.dart
│   └── routes.dart
│
├── features/
│   ├── auth/
│   │   ├── login_screen.dart
│   │   ├── register_screen.dart
│   │   └── auth_service.dart
│   │
│   └── home/
│       └── home_screen.dart
│
└── main.dart
```

This structure scales well for **large apps**.

---

## 12. Files You’ll Edit MOST OFTEN

| File            | Purpose           |
| --------------- | ----------------- |
| `lib/main.dart` | App start         |
| `lib/screens/*` | UI pages          |
| `pubspec.yaml`  | Packages & assets |
| `lib/widgets/*` | Reusable UI       |

Just tell me what you want next.
