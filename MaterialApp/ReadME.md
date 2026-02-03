## What is MaterialApp

`MaterialApp` is the **root widget** of a Flutter Material Design app.
It controls:

* App theme
* Navigation
* Localization
* App title
* Debug settings

You usually use **one MaterialApp per app**.

---

## MaterialApp – All Common Properties (Explained)

### 1. Basic App Control

| Property                     | Type          | Purpose                |
| ---------------------------- | ------------- | ---------------------- |
| `title`                      | String        | App title (used by OS) |
| `home`                       | Widget        | First screen           |
| `debugShowCheckedModeBanner` | bool          | Hide debug banner      |
| `builder`                    | WidgetBuilder | Wrap all screens       |
| `theme`                      | ThemeData     | Light theme            |
| `darkTheme`                  | ThemeData     | Dark theme             |
| `themeMode`                  | ThemeMode     | System / light / dark  |
| `color`                      | Color         | App primary color      |

---

### 2. Navigation & Routing

| Property             | Type                       |
| -------------------- | -------------------------- |
| `routes`             | Map<String, WidgetBuilder> |
| `initialRoute`       | String                     |
| `onGenerateRoute`    | RouteFactory               |
| `onUnknownRoute`     | RouteFactory               |
| `navigatorKey`       | GlobalKey<NavigatorState>  |
| `navigatorObservers` | List<NavigatorObserver>    |

---

### 3. Localization & Language

| Property                   | Type                        |
| -------------------------- | --------------------------- |
| `locale`                   | Locale                      |
| `supportedLocales`         | List<Locale>                |
| `localizationsDelegates`   | List<LocalizationsDelegate> |
| `localeResolutionCallback` | LocaleCallback              |

---

### 4. Performance & Behavior

| Property         | Type                           |
| ---------------- | ------------------------------ |
| `scrollBehavior` | ScrollBehavior                 |
| `shortcuts`      | Map<ShortcutActivator, Intent> |
| `actions`        | Map<Type, Action<Intent>>      |

---

### 5. Debug & Restoration

| Property                        | Type   |
| ------------------------------- | ------ |
| `debugShowMaterialGrid`         | bool   |
| `showPerformanceOverlay`        | bool   |
| `checkerboardRasterCacheImages` | bool   |
| `checkerboardOffscreenLayers`   | bool   |
| `restorationScopeId`            | String |

## Most Used MaterialApp Setup (Real Projects)

```dart
MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'My App',
  theme: ThemeData(primarySwatch: Colors.blue),
  home: const HomeScreen(),
);
```

---

## Common Mistakes

* Using multiple MaterialApp widgets
* Forgetting `debugShowCheckedModeBanner: false`
* Using `home` and `initialRoute` together incorrectly
* Putting MaterialApp inside another widget

---

## When to Use CupertinoApp Instead

Use `CupertinoApp` if:

* You want pure iOS design
* You are building Apple-only UI
