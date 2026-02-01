import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'screens/bg.dart';

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

/// ---------------- SPLASH SCREEN ----------------
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
      body: Stack(
        children: [
          const BgScreen(), // background image
          // optional dark overlay
          Container(color: Colors.black.withOpacity(0.5)),

          // splash animation
          Center(
            child: Lottie.asset(
              widget.animationPath,
              width: 220,
              repeat: false,
              onLoaded: (composition) {
                _goNext(composition.duration);
              },
            ),
          ),
        ],
      ),
    );
  }
}

/// ---------------- HOME PAGE ----------------
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: const Center(
        child: Text('Welcome to Home Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
