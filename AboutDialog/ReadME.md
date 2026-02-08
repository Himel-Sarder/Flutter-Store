<img width="359" height="737" alt="image" src="https://github.com/user-attachments/assets/86f6386a-43da-4382-b32f-7734d2c66a11" />

## 1. `AboutDialog` (basic widget)

You usually show it using `showDialog()`.

```dart
showDialog(
  context: context,
  builder: (context) {
    return const AboutDialog(
      applicationName: 'My App',
      applicationVersion: '1.0.0',
      applicationIcon: Icon(Icons.flutter_dash),
      applicationLegalese: '© 2026 My Company',
    );
  },
);
```

### What it shows

* App name
* App version
* App icon
* Legal text


## 2. `showAboutDialog()` (recommended & simpler)

Flutter provides a helper function that internally uses `AboutDialog`.

```dart
showAboutDialog(
  context: context,
  applicationName: 'My App',
  applicationVersion: '1.0.0',
  applicationIcon: const Icon(Icons.flutter_dash),
  applicationLegalese: '© 2026 My Company',
  children: const [
    SizedBox(height: 10),
    Text('This app is built using Flutter.'),
  ],
);
```

### Advantage

* Cleaner code
* Supports extra content via `children`


## 3. Opening About Dialog from AppBar menu

```dart
AppBar(
  title: const Text('Home'),
  actions: [
    IconButton(
      icon: const Icon(Icons.info_outline),
      onPressed: () {
        showAboutDialog(
          context: context,
          applicationName: 'My App',
          applicationVersion: '1.0.0',
        );
      },
    ),
  ],
)
```

## 4. Custom About Dialog (advanced)

If you want full control over UI:

```dart
showDialog(
  context: context,
  builder: (context) {
    return AlertDialog(
      title: const Text('About My App'),
      content: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.flutter_dash, size: 50),
          SizedBox(height: 10),
          Text('Version: 1.0.0'),
          Text('Developed by Himel'),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('OK'),
        ),
      ],
    );
  },
);
```

## When to use what

| Use case                | Widget              |
| ----------------------- | ------------------- |
| Standard app info       | `showAboutDialog()` |
| Simple dialog           | `AboutDialog`       |
| Fully customized design | `AlertDialog`       |
