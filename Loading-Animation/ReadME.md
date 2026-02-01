<img width="356" height="732" alt="image" src="https://github.com/user-attachments/assets/d4cd57c5-d029-4063-828a-2624bf891873" />


## Download From Here : https://iconscout.com/lottie-animations
# STEP 1: Dependency add করো

### `pubspec.yaml`

```yaml
dependencies:
  flutter:
    sdk: flutter
  lottie: ^3.1.0

flutter:
  assets:
    - assets/animation/loading.json
```

তারপর:

```bash
flutter pub get
```

---

# STEP 2: `main.dart` (REUSABLE TEMPLATE)
শুধু **animation path** আর **HomePage** change করলেই হবে

```dart
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

/// ---------------- APP ROOT ----------------
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData.dark(),
      home: const AppSplashScreen(
        animationPath: 'assets/animation/loading.json',
        nextPage: HomePage(),
      ),
    );
  }
}

/// ---------------- SPLASH TEMPLATE ----------------
/// Reusable splash screen for ANY app
class AppSplashScreen extends StatefulWidget {
  final String animationPath;
  final Widget nextPage;

  const AppSplashScreen({
    super.key,
    required this.animationPath,
    required this.nextPage,
  });

  @override
  State<AppSplashScreen> createState() => _AppSplashScreenState();
}

class _AppSplashScreenState extends State<AppSplashScreen> {
  bool _navigated = false;

  void _goNext(Duration duration) {
    if (_navigated) return;
    _navigated = true;

    Future.delayed(duration, () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => widget.nextPage),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          widget.animationPath,
          width: 220,
          repeat: false,
          onLoaded: (composition) {
            _goNext(composition.duration);
          },
        ),
      ),
    );
  }
}

/// ---------------- HOME PAGE (EXAMPLE) ----------------
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
```

---

# STEP 3: Folder structure (standard)

```
lib/
 ├─ main.dart
assets/
 └─ animation/
     └─ loading.json
```

# HOW TO REUSE IN ANY APP

Just change:

```dart
home: const AppSplashScreen(
  animationPath: 'assets/animation/your_animation.json',
  nextPage: YourHomePage(),
),
```

That’s it.

যখন দরকার হবে, এই template-এর উপরেই add করা যাবে।

এইটা **professional reusable splash architecture**—
তুমি চাইলে আমি এটাকে আলাদা `splash_screen.dart` file-এও সাজিয়ে দিতে পারি।
